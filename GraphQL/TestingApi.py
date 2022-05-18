# Mutation payload

mutation = """
{
    company {
        ceo
    }
}
"""

# function 
def run():
    import requests
    response = requests.post("https://api.spacex.land/graphql/", json={'query': mutation})
    response_body = response.json()
    assert response_body['data']['company']['ceo'] == 'Elon Musk'
    
run()
