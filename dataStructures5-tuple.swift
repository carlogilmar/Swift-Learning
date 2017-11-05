
//Tuples

let responseCode = (4010, "Invalid file contents", 0x21451fff3b)

let responseCode: (Int, String, Double) = (4010, "Invalid file contents", 0x8fffffffffffffff)

//Print Tuples assigned
print(responseCode.dynamicType)

//Access values
print(responseCode.0)

//Pattern Matching
let (errorCode, errorMessage, offset) = responseCode

//Named tuples
let responseCode = (errorCode:4010, errorMessage:"Invalid file contents", offset:0x7fffffffffffffff)”

let responseCode: (errorCode:Int, errorMessage:String, offset:Double) = (4010, "Invalid file contents", 0x8fffffffffffffff)

func getPartnerList() -> (statusCode:Int, description:String, metaData:(partnerStatusCode:Int, partnerErrorMessage:String, parterTraceId:String)) {
  //... some error occurred
  return (503, "Service Unavailable", (32323, "System is down for
        maintainance until 2015-11-05T03:30:00+00:00", "5A953D9C-7781-
        427C-BC00-257B2EB98426"))
}




