/*Released to Public Domain.*/
/*test: https://fivetechsoft.github.io/harbour_wasm/ */

procedure Main()

    ? "Shuffled: </br>"
    ? "-------------</br>"
    ? "Shuffle('1',0)=>",Shuffle("1",0),"OK Esperado: 1</br>"
    ? "Shuffle('12',0)=>",Shuffle("12",0),"OK Esperado: 12</br>"
    ? "Shuffle('123',0)=>",Shuffle("123",0),"OK Esperado: 231</br>"
    ? "Shuffle('1234',0)=>",Shuffle("1234",0),"OK Esperado: 4321</br>"
    ? "Shuffle('12345',0)=>",Shuffle("12345",0),"OK Esperado: 32154</br>"
    ? "Shuffle('123456',0)=>",Shuffle("123456",0),"OK Esperado: 246135</br>"
    ? "Shuffle('1234567',0)=>",Shuffle("1234567",0),"OK Esperado: 4613572</br>"
    ? "Shuffle('12345678',0)=>",Shuffle("12345678",0),"OK Esperado: 75318642</br>"
    ? "Shuffle('123456789',0)=>",Shuffle("123456789",0),"OK Esperado: 531864297</br>"
    ? "Shuffle('1234567890',0)=>",Shuffle("1234567890",0),"OK: Esperado: 3691470258</br>"

    ? "Shuffle('1234567890A',0)=>",Shuffle("1234567890A",0),"OK Esperado: 691470258A3</br>"
    ? "Shuffle('1234567890AB',0)=>",Shuffle("1234567890AB",0),"OK Esperado: 0741A852B963</br>"
    ? "Shuffle('1234567890ABC',0)=>",Shuffle("1234567890ABC",0),"OK Esperado: 741A852B963C0</br>"
    ? "Shuffle('1234567890ABCD',0)=>",Shuffle("1234567890ABCD",0),"OK Esperado: 48B159C260D37A</br>"
    ? "Shuffle('1234567890ABCDE',0)=>",Shuffle("1234567890ABCDE",0),"OK Esperado: 8B159C260D37AE4</br>"
    ? "Shuffle('1234567890ABCDEF',0)=>",Shuffle("1234567890ABCDEF",0),"OK Esperado: C951D062EA73FB84</br>"
    ? "Shuffle('1234567890ABCDEFG',0)=>",Shuffle("1234567890ABCDEFG",0),"OK Esperado: 951D062EA73FB84GC</br>"
    ? "Shuffle('1234567890ABCDEFGH',0)=>",Shuffle("1234567890ABCDEFGH",0),"OK Esperado: 50E16AF27BG38CH49D</br>"
    ? "Shuffle('1234567890ABCDEFGHI',0)=>",Shuffle("1234567890ABCDEFGHI",0),"OK Esperado: 0E16AF27BG38CH49DI5</br>"
    ? "Shuffle('1234567890ABCDEFGHIJ',0)=>",Shuffle("1234567890ABCDEFGHIJ",0),"OK Esperado: FA61GB72HC83ID94JE05</br>"

    ? "Shuffle('1234567890ABCDEFGHIJK',0)=>",Shuffle("1234567890ABCDEFGHIJK",0),"OK Esperado: A61GB72HC83ID94JE05KF</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKL',0)=>",Shuffle("1234567890ABCDEFGHIJKL",0),"OK Esperado: 6BH17CI28DJ39EK40FL5AG</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLM',0)=>",Shuffle("1234567890ABCDEFGHIJKLM",0),"OK Esperado: BH17CI28DJ39EK40FL5AGM6</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMN',0)=>",Shuffle("1234567890ABCDEFGHIJKLMN",0),"OK Esperado: IC71JD82KE93LF04MGA5NHB6</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNO',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNO",0),"OK Esperado: C71JD82KE93LF04MGA5NHB6OI</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOP',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOP",0),"OK Esperado: 7DK18EL29FM30GN4AHO5BIP6CJ</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQ',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQ",0),"OK Esperado: DK18EL29FM30GN4AHO5BIP6CJQ7</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQR',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQR",0),"OK Esperado: LE81MF92NG03OHA4PIB5QJC6RKD7</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRS',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRS",0),"OK Esperado: E81MF92NG03OHA4PIB5QJC6RKD7SL</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRST',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRST",0),"OK Esperado: 8FN19GO20HP3AIQ4BJR5CKS6DLT7EM</br>"

    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTU",0),"OK Esperado: FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUV",0),"OK Esperado: OG91PH02QIA3RJB4SKC5TLD6UME7VNF8</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVW",0),"OK Esperado: G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVWX",0),"OK Esperado: 9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVWXY",0),"OK Esperado: HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9</br>"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=>",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ",0),"OK Esperado: RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9</br>"

    ? "-------------</br></br>"

    ? "UnscrambLed: </br>"
    ? "-------------</br>"
    ? "Shuffle('1',1)=>",Shuffle("1",1),"OK Esperado: 1</br>"
    ? "Shuffle('12',1)=>",Shuffle("12",1),"OK Esperado: 12</br>"
    ? "Shuffle('231',1)=>",Shuffle("231",1),"OK Esperado: 123</br>"
    ? "Shuffle('4321',1)=>",Shuffle("4321",1),"OK Esperado: 1234</br>"
    ? "Shuffle('32154',1)=>",Shuffle("32154",1),"OK Esperado: 12345</br>"
    ? "Shuffle('246135',1)=>",Shuffle("246135",1),"OK Esperado: 123456</br>"
    ? "Shuffle('4613572',1)=>",Shuffle("4613572",1),"OK Esperado: 1234567</br>"
    ? "Shuffle('75318642',1)=>",Shuffle("75318642",1),"OK Esperado: 12345678 </br>"
    ? "Shuffle('531864297',1)=>",Shuffle("531864297",1),"OK Esperado: 123456789</br>"
    ? "Shuffle('3691470258',1)=>",Shuffle("3691470258",1),"OK Esperado: 1234567890</br>"

    ? "Shuffle('0741A852693',1)=>",Shuffle("691470258A3",1),"OK Esperado: 1234567890A</br>"
    ? "Shuffle('0741A852B963',1)=>",Shuffle("0741A852B963",1),"OK Esperado: 1234567890AB</br>"
    ? "Shuffle('741A852B963C0',1)=>",Shuffle('741A852B963C0',1),"OK Esperado: 1234567890ABC</br>"
    ? "Shuffle('48B159C260D37A',1)=>",Shuffle('48B159C260D37A',1),"OK Esperado: 1234567890ABCD</br>"
    ? "Shuffle('8B159C260D37AE4',1)=>",Shuffle('8B159C260D37AE4',1),"OK Esperado: 1234567890ABCDE</br>"
    ? "Shuffle('C951D062EA73FB84',1)=>",Shuffle('C951D062EA73FB84',1),"OK Esperado: 1234567890ABCDEF</br>"
    ? "Shuffle('951D062EA73FB84GC',1)=>",Shuffle('951D062EA73FB84GC',1),"OK Esperado: 1234567890ABCDEFG</br>"
    ? "Shuffle('50E16AF27BG38CH49D',1)=>",Shuffle('50E16AF27BG38CH49D',1),"OK Esperado: 1234567890ABCDEFGH</br>"
    ? "Shuffle('0E16AF27BG38CH49DI5',1)=>",Shuffle('0E16AF27BG38CH49DI5',1),"OK Esperado: 1234567890ABCDEFGHI</br>"
    ? "Shuffle('FA61GB72HC83ID94JE05',1)=>",Shuffle('FA61GB72HC83ID94JE05',1),"OK Esperado: 1234567890ABCDEFGHIJ</br>"

    ? "Shuffle('A61GB72HC83ID94JE05KF',1)=>",Shuffle("A61GB72HC83ID94JE05KF",1),"OK Esperado: 1234567890ABCDEFGHIJK</br>"
    ? "Shuffle('6BH17CI28DJ39EK40FL5AG',1)=>",Shuffle("6BH17CI28DJ39EK40FL5AG",1),"OK Esperado: 1234567890ABCDEFGHIJKL</br>"
    ? "Shuffle('BH17CI28DJ39EK40FL5AGM6',1)=>",Shuffle("BH17CI28DJ39EK40FL5AGM6",1),"OK Esperado: 1234567890ABCDEFGHIJKLM</br>"
    ? "Shuffle('IC71JD82KE93LF04MGA5NHB6',1)=>",Shuffle("IC71JD82KE93LF04MGA5NHB6",1),"OK Esperado: 1234567890ABCDEFGHIJKLMN</br>"
    ? "Shuffle('C71JD82KE93LF04MGA5NHB6OI',1)=>",Shuffle("C71JD82KE93LF04MGA5NHB6OI",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNO</br>"
    ? "Shuffle('7DK18EL29FM30GN4AHO5BIP6CJ',1)=>",Shuffle("7DK18EL29FM30GN4AHO5BIP6CJ",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOP</br>"
    ? "Shuffle('DK18EL29FM30GN4AHO5BIP6CJQ7',1)=>",Shuffle("DK18EL29FM30GN4AHO5BIP6CJQ7",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQ</br>"
    ? "Shuffle('LE81MF92NG03OHA4PIB5QJC6RKD7',1)=>",Shuffle("LE81MF92NG03OHA4PIB5QJC6RKD7",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQR</br>"
    ? "Shuffle('E81MF92NG03OHA4PIB5QJC6RKD7SL',1)=>",Shuffle("E81MF92NG03OHA4PIB5QJC6RKD7SL",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRS</br>"
    ? "Shuffle('8FN19GO20HP3AIQ4BJR5CKS6DLT7EM',1)=>",Shuffle("8FN19GO20HP3AIQ4BJR5CKS6DLT7EM",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRST</br>"

    ? "Shuffle('FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8',1)=>",Shuffle("FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTU</br>"
    ? "Shuffle('OG91PH02QIA3RJB4SKC5TLD6UME7VNF8',1)=>",Shuffle("OG91PH02QIA3RJB4SKC5TLD6UME7VNF8",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUV</br>"
    ? "Shuffle('G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO',1)=>",Shuffle("G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVW</br>"
    ? "Shuffle('9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP',1)=>",Shuffle("9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWX</br>"
    ? "Shuffle('HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9',1)=>",Shuffle("HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXY</br>"
    ? "Shuffle('RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9',1)=>",Shuffle("RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ</br>"

return

function Shuffle(cString as character,nType as numeric)

    local cResult as character

    local nLen as numeric
    local nMod as numeric

    begin sequence

        nLen:=Len(cString)
        if (nLen<=2)
            cResult:=cString
            break
        endif

        nLen:=Len(cString)
        nMod:=Mod(nLen,2)

        if (nMod==0)
            cResult:=even(cString,nType,nLen)
        else
           cResult:=odd(cString,nType,nLen)
        endif

    end sequence

return(cResult) as character

static function even(cString as character,nType as numeric,nLen as numeric,aMap as array)

    local cResult as character
    local lUseMap as logical
    local i,q,nPos,nMax,nTmpLen as numeric

    lUseMap:=(nType==1)

    if (lUseMap)
        cResult:=__even(cString,nLen)
    else
        lUseMap:=((valType(aMap)=="A").and.(nType==0))
        cResult:=Space(nLen)
        nTmpLen:=nLen
        nTmpLen+=1
        nMax:=if(nType==0,2,((nTmpLen-3)))
        q:=0
        whiLe (.T.)
            // Shuffle or UnscrambLe
            if (lUseMap)
                for i:=1 to nLen
                    nPos:=(i-1+i)%nTmpLen+1
                    aAdd(aMap,{i,nPos})
                next i
            else
                for i:=1 to nLen
                    nPos:=(i-1+i)%nTmpLen+1
                    cResult:=Stuff(cResult,nPos,1,subStr(cString,i,1))
                next i
            endif
            if (++q>=nMax)
                exit
            endif
            if (!lUseMap)
                cString:=cResult
            endif
        end whiLe
    endif

return(cResult) as character

static function odd(cString as character,nType as character,nLen as numeric)

    local cTmp,cEven,cLeft,cRight,cResult as character

    if (nLen>1)
        if (nType==0)
            cRight:=Right(cString,1)
            cTmp:=Left(cString,nLen-1)
            cEven:=even(cTmp,nType,nLen-1)
            cLeft:=Left(cEven,1)
            cResult:=SubStr(cEven,2)+cRight+cLeft
        else
            cTmp:=Right(cString,2)
            cLeft:=Left(cTmp,1)
            cRight:=Right(cTmp,1)
            cTmp:=cRight+SubStr(cString,1,nLen-2)
            cEven:=even(cTmp,nType,nLen-1)
            cResult:=cEven+cLeft
        endif
    else
        cResult:=cString
    endif

return(cResult) as character

static function __even(cString as character,nLen as numeric)

    local aMap as array:=__GetShuffleMap(nLen)

    local cResult as character

    local i,j,nMap as numeric

    cResult:=Space(nLen)

    nMap:=Len(aMap)
    for i:=1 to nMap step nLen
        for j:=nLen to 1 step -1
            cResult:=Stuff(cResult,aMap[j][1],1,subStr(cString,aMap[j][2],1))
        next j
        cString:=cResult
    next i

return(cResult) as character

static function __GetShuffleMap(nLen)
    local aMap as array:=Array(0)
    even(Space(nLen),0,nLen,@aMap)
return(aClone(aMap)) as array

/*
    cCRLF:=chr(13)+chr(10)
    cEmbaralha:="Embaralha('1',0)=>"+Embaralha("1",0)+cCRLF
    cEmbaralha+="Embaralha('12',0)=>"+Embaralha("12",0)+cCRLF
    cEmbaralha+="Embaralha('123',0)=>"+Embaralha("123",0)+cCRLF
    cEmbaralha+="Embaralha('1234',0)=>"+Embaralha("1234",0)+cCRLF
    cEmbaralha+="Embaralha('12345',0)=>"+Embaralha("12345",0)+cCRLF
    cEmbaralha+="Embaralha('123456',0)=>"+Embaralha("123456",0)+cCRLF
    cEmbaralha+="Embaralha('1234567',0)=>"+Embaralha("1234567",0)+cCRLF
    cEmbaralha+="Embaralha('12345678',0)=>"+Embaralha("12345678",0)+cCRLF
    cEmbaralha+="Embaralha('123456789',0)=>"+Embaralha("123456789",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890',0)=>"+Embaralha("1234567890",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890A',0)=>"+Embaralha("1234567890A",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890AB',0)=>"+Embaralha("1234567890AB",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABC',0)=>"+Embaralha("1234567890ABC",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCD',0)=>"+Embaralha("1234567890ABCD",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDE',0)=>"+Embaralha("1234567890ABCDE",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEF',0)=>"+Embaralha("1234567890ABCDEF",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFG',0)=>"+Embaralha("1234567890ABCDEFG",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGH',0)=>"+Embaralha("1234567890ABCDEFGH",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHI',0)=>"+Embaralha("1234567890ABCDEFGHI",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJ',0)=>"+Embaralha("1234567890ABCDEFGHIJ",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJK',0)=>"+Embaralha("1234567890ABCDEFGHIJK",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKL',0)=>"+Embaralha("1234567890ABCDEFGHIJKL",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLM',0)=>"+Embaralha("1234567890ABCDEFGHIJKLM",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMN',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMN",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNO',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNO",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOP',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOP",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQ',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQ",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQR',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQR",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRS',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRS",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRST',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRST",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRSTU",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRSTUV",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRSTUVW",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRSTUVWX",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRSTUVWXY",0)+cCRLF
    cEmbaralha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=>"+Embaralha("1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ",0)+cCRLF

    eecView(cEmbaralha)

    Embaralha('1',0)=>1
    Embaralha('12',0)=>12
    Embaralha('123',0)=>231
    Embaralha('1234',0)=>4321
    Embaralha('12345',0)=>32154
    Embaralha('123456',0)=>246135
    Embaralha('1234567',0)=>4613572
    Embaralha('12345678',0)=>75318642
    Embaralha('123456789',0)=>531864297
    Embaralha('1234567890',0)=>3691470258
    Embaralha('1234567890A',0)=>691470258A3
    Embaralha('1234567890AB',0)=>741A852B963
    Embaralha('1234567890ABC',0)=>741A852B963C0
    Embaralha('1234567890ABCD',0)=>48B159C260D37A
    Embaralha('1234567890ABCDE',0)=>8B159C260D37AE4
    Embaralha('1234567890ABCDEF',0)=>C951D062EA73FB84
    Embaralha('1234567890ABCDEFG',0)=>951D062EA73FB84GC
    Embaralha('1234567890ABCDEFGH',0)=>50E16AF27BG38CH49D
    Embaralha('1234567890ABCDEFGHI',0)=>E16AF27BG38CH49DI5
    Embaralha('1234567890ABCDEFGHIJ',0)=>FA61GB72HC83ID94JE05
    Embaralha('1234567890ABCDEFGHIJK',0)=>A61GB72HC83ID94JE05KF
    Embaralha('1234567890ABCDEFGHIJKL',0)=>6BH17CI28DJ39EK40FL5AG
    Embaralha('1234567890ABCDEFGHIJKLM',0)=>BH17CI28DJ39EK40FL5AGM6
    Embaralha('1234567890ABCDEFGHIJKLMN',0)=>IC71JD82KE93LF04MGA5NHB6
    Embaralha('1234567890ABCDEFGHIJKLMNO',0)=>C71JD82KE93LF04MGA5NHB6OI
    Embaralha('1234567890ABCDEFGHIJKLMNOP',0)=>7DK18EL29FM30GN4AHO5BIP6CJ
    Embaralha('1234567890ABCDEFGHIJKLMNOPQ',0)=>DK18EL29FM30GN4AHO5BIP6CJQ7
    Embaralha('1234567890ABCDEFGHIJKLMNOPQR',0)=>LE81MF92NG03OHA4PIB5QJC6RKD7
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRS',0)=>E81MF92NG03OHA4PIB5QJC6RKD7SL
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRST',0)=>8FN19GO20HP3AIQ4BJR5CKS6DLT7EM
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=>FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=>OG91PH02QIA3RJB4SKC5TLD6UME7VNF8
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=>G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=>9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=>HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=>RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9

*/
