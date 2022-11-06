let arr:[Int]=[2,1,3]
var arr1:Array<Int>=[1,2,3]
typealias dii=Dictionary<Int,[Int]>
typealias int=Int
for i in 0...arr.count-1 {
    arr1[i]=arr[i]*2
}
arr1.append(8)
arr1.remove(at:3)
for i in 0...arr1.count-1 {
    print("\(i) has \(arr1[i])")
}

var dict:dii=[:]
var mat:[[Int]]=Array(repeating:[],count:6)
for i in 0...mat.count-1 {
    for j in 0...3 {
        mat[i].append(Int.random(in: 0...10))
    }
}
for i in 0...5 {
    dict[i]=mat[i]
}

for (i,j) in dict {
    print("\(i)-\(j)")
}

var tot:Int=0

for i in mat {
    tot+=i.count
}

var st:Set<Int>=[0]

for i in mat {
    for j in i {
        st.insert(j)
    }
}

print(tot,st.count)

var st1:Set=[1,2,3,4,5,6,7,8,9,10]

print(st.intersection(st1))


let closure:(Set<Int>,[[Int]])->(Int) = { s1,d1 in 
     var tot:Int=0
     for i in 0...d1.count-1 {
        var st:Set<Int>=[]
        for j in 0...d1[i].count-1 {
            st.insert(d1[i][j])
        }
        tot+=(s1.subtracting(st)).count
     }
     return tot
}

var res:Int=closure(st,mat)
print("Ans is \(res)")

enum status  {
    case login
    case logout
    case loaddb
    case sesstr
    case sesstp
}

var cst=status.loaddb
cst=status.sesstr

switch cst {
    case .login:
    print("logged in")
    case .logout:
    print("logged out")
    case .loaddb:
    print("Loaded db")
    case .sesstr:
    print("Session start")
    fallthrough
    case .sesstp:
    print("Session stop")
    default:
    print("default status")
}

struct money {
    var name:String
    var ids:Set<Int>
    var id:Int
    var cst:status
}

var x:[money]=[money(name:"abc",ids:[1,2,4],id:50,cst:status.login),money(
    name:"bcd",ids:[2,4,6],id:98,cst:status.logout

)]
x[0].name="abc20"
for i in 0...x.count-1 {
    print("\(x[i].name)-\(x[i].ids)-\(x[i].cst)")
}

class person {
    var pname:String
    var bank:money
    var bnname:String
    var randmids:Set<Int>
    init(name p:String,bname b:String) {
        self.pname=p
        self.bnname=b
        randmids=[2,3,4]
        self.bank=money(name:b,ids:self.randmids,id:Int.random(in: 0...99),cst:status.loaddb)

    }
    deinit {
        print("Bye Bye person")
    }
    subscript(index:Int)->Set<Int> {
        get {
            return self.randmids
        }
        set(i) {
            var count=1
            repeat {

            self.randmids.insert(count+1) 
            count+=1 } while(count<=5)
            self.randmids.remove(index)
        }
    }
}

var p:person=person(name:"akshay",bname:"sbi")
print(p[1])
print(p.pname)
print(p.bank.name)
print(p.bank.cst)
var a1:Int=8
print(a1 is Float)
var b1=a1 as? Float
print(b1 is Float)


func sqrt(_ n:int) {
    var l:int = 1
    var r:int = n
    var res:int=1
    while(l<=r) {
        var m=l+(r-l)/2
        var s=m*m
        if(s==n ) {
            res=m
            break
        }
        if(s<n) {
            l=m+1
        }
        if(s>n){
             r=m-1
        }
    }
    print(res)
}

(1...20).forEach(sqrt)


