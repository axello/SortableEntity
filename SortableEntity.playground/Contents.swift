//: Playground - noun: a place where people can play
// This is a small implementation of Chris Eidhof's SortDescriptor website 
// on http://chris.eidhof.nl/post/sort-descriptors-in-swift/

import Cocoa

var str = "Hello, playground"

let afd1 = Afdeling(idafd:"1", afdnaam:"Afdeling 1")
let afd2 = Afdeling(idafd:"2", afdnaam:"Afdeling 2")

let pers1 = Persoon(idafd:"8", persnaam:"1e persoon")
let pers2 = Persoon(idafd:"2", persnaam:"2e persoon")
let pers3 = Persoon(idafd:"3", persnaam:"Nulde persoon")

let lijssie = [afd2, afd1]
let perslijssie = [pers2, pers3, pers1]

print(lijssie)
// manually create SortDescriptor
let sdesc : SortDescriptor<Afdeling> = { $0.afdelingNaam < $1.afdelingNaam }
let srt = lijssie.sorted(by: sdesc )
print(srt)


let pdesc : SortDescriptor<Persoon> = { $0.persoonNaam < $1.persoonNaam }
let srt2 = perslijssie.sorted(by: pdesc)
print(srt2)

// get SortDescriptor from instance in the array
let descriptor1 = lijssie[0].sortDescriptor
let srt3 = lijssie.sorted(by: descriptor1 )
print (srt3)

let descriptor2 = perslijssie[0].sortDescriptor
let srt4 = perslijssie.sorted(by: descriptor2 )
print (srt4)

let srt5 = perslijssie.sorted(by: perslijssie[0].idSortDescriptor )
print (srt5)
