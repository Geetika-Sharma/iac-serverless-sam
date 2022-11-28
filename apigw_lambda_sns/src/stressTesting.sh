# Sequential execution - 1000 requests sequentially
for i in {1..1000}
do
    # Generating random values
    username=`openssl rand -hex 8`
    user=`openssl rand -hex 6`
    domain=`openssl rand -hex 5`
    email="$user@$domain.com"
    contact=`openssl rand -hex 10`


    curl -X POST  https://28uoghni5g.execute-api.eu-west-1.amazonaws.com/Prod/user \
    -H "Content-Type: application/json" \
    -d '{
    "username": "'"$username"'",
    "email": "'"$email"'",
    "contact": "'"$contact"'"
    }' 
# done


# Parallel execution - -P is set to 0, xargs will run as many processes as possible
seq 1 1000 | xargs -n1 -P0 curl -X POST  https://28uoghni5g.execute-api.eu-west-1.amazonaws.com/Prod/user \
    -H "Content-Type: application/json" \
    -d '{
    "username": "Test User",
    "email": "test.user@gmail.com",
    "contact": "1122334455"
    }' 