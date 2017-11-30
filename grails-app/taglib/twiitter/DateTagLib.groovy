package twiitter

class DateTagLib {
    def dateFromNow = {
        attrs->
            Date date =attrs.date
            int year = date.getYear().toInteger() +1900
            def nicedate = "posted at "+ daycheck(date.getDay()) + ", " + monthcheck(date.getMonth())+" "+date.getDate()+", "+year
            out << nicedate
    }
    def daycheck(int d){
        switch (d){
            case 0:return "Sunday"
            case 1:return "Monday"
            case 2:return "Tuesday"
            case 3:return "Wednesday"
            case 4:return "Thursday"
            case 5:return "Friday"
            case 6:return "Saturday"
        }
    }
    def monthcheck(int m){
        switch (m){
            case 0: return  "January"
            case 1: return "February"
            case 2: return "March"
            case 3: return "April"
            case 4: return "May"
            case 5: return "June"
            case 6: return "July"
            case 7: return "August"
            case 8: return "September"
            case 9: return "October"
            case 10: return "November"
            case 11: return "December"


        }
    }

}
