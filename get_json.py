# for getting response of json body from postman on server side
# request body in json format: {"phone": phone, "country_code": country_code, "address": address}
@app.route("/add_one", methods=["POST"])
def add_one():
    if request.method == "POST":
       content = request.json        
       phone =  content["phone"]        
       country_code =  content["country_code"]
       address =  content["address"]
       data = ({"phone": phone, "country_code": country_code, "address": address})
    return data 
 
