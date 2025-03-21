/*Released to Public Domain.*/

class Embaralha {
  private static positionMap: Map<number, number[][]> = new Map();

  static shuffle(cString: string, nType: number): string {
    const nLen = cString.length;
    if (nLen <= 2) return cString;

    const nMod = nLen % 2;

    // Gera mapas para comprimentos pares até nLen
    if (nMod === 0){
      for (let i = 1; i <= nLen; i++) {
        if (i % 2 === 0 && !this.positionMap.has(i)) {
          this.getShuffleMap(i);
        }
      }
    }

    // Segue a mesma lógica do Harbour: chama even ou odd com base em nMod
    return nMod === 0 ? this.even(cString, nType, nLen) : this.odd(cString, nType, nLen);
  }

  private static even(cString: string, nType: number, nLen: number, aMap: number[][] = []): string {
    const lUseMap = nType === 1;
    if (lUseMap) {
      return this.__even(cString, nLen);
    }

    let cResult = " ".repeat(nLen);
    const nTmpLen = nLen + 1;
    const nMax = nType === 0 ? 2 : nTmpLen - 3;
    let cTemp = cString;
    let map: number[][] = [];

    for (let q = 0; q < nMax; q++) {
      const tempMap: number[][] = [];
      for (let i = 1; i <= nLen; i++) {
        const nPos = ((i - 1 + i) % nTmpLen) + 1;
        tempMap.push([i, nPos]);
        cResult = this.replaceAt(cResult, nPos - 1, cTemp.charAt(i - 1));
      }
      cTemp = cResult;

      if (q === 0) {
        map = tempMap;
      } else {
        const newMap: number[][] = [];
        for (let i = 1; i <= nLen; i++) {
          const oldPos = map.find(pos => pos[0] === i)?.[1];
          if (oldPos === undefined) continue;
          const newPos = tempMap.find(pos => pos[0] === oldPos)?.[1];
          if (newPos === undefined) continue;
          newMap.push([i, newPos]);
        }
        map = newMap;
      }
    }

    if (nType === 0 && aMap.length === 0) {
      this.positionMap.set(nLen, map);
    } else if (aMap.length > 0) {
      map.forEach(pos => aMap.push(pos));
    }

    return cResult.replace(/\s/g, '');
  }

  private static odd(cString: string, nType: number, nLen: number): string {
    if (nLen <= 1) return cString;

    if (nType === 0) {
      const cRight = cString.slice(-1);
      const cTmp = cString.slice(0, -1);
      const cEven = this.even(cTmp, nType, nLen - 1);
      const cLeft = cEven.charAt(0);
      const cResult = cEven.slice(1) + cRight + cLeft;
      return cResult;
    } else {
      const cTmp = cString.slice(-2);
      const cLeft = cTmp.charAt(0);
      const cRight = cTmp.charAt(1);
      const cNewTmp = cRight + cString.slice(0, nLen - 2);
      const cEven = this.even(cNewTmp, nType, nLen - 1);
      return cEven + cLeft;
    }
  }

  private static __even(cString: string, nLen: number): string {
    const aMap = this.positionMap.get(nLen) || [];
    let cResult = " ".repeat(nLen);

    for (let i = 0; i < aMap.length; i += nLen) {
      for (let j = nLen - 1; j >= 0; j--) {
        if (aMap[j]) {
          const originalPos = aMap[j][0];
          const shuffledPos = aMap[j][1];
          cResult = this.replaceAt(cResult, originalPos - 1, cString.charAt(shuffledPos - 1));
        }
      }
      cString = cResult;
    }

    return cResult.replace(/\s/g, '');
  }

  private static getShuffleMap(nLen: number): void {
    const map: number[][] = [];
    this.even(" ".repeat(nLen), 0, nLen, map);
    this.positionMap.set(nLen, map);
  }

  private static replaceAt(str: string, index: number, replacement: string): string {
    return str.substring(0, index) + replacement + str.substring(index + 1);
  }
}

// Função de teste
function u_TstEmbaralha() {
  const testStrings = [
    "1",
    "12",
    "123",
    "1234",
    "12345",
    "123456",
    "1234567",
    "12345678",
    "123456789",
    "1234567890",
    "ABCDEF",
  ];

  console.log("Shuffled:");
  console.log("-------------");
  testStrings.forEach(str => {
    const result = Embaralha.shuffle(str, 0);
    console.log(`Shuffle('${str}', 0) => '${result}'`);
  });

  console.log("\nUnscrambled:");
  console.log("-------------");
  const deshuffleTests = [
    "1",
    "12",
    "231",
    "4321",
    "32154",
    "246135",
    "4613572",
    "75318642",
    "531864297",
    "3691470258",
    "BDFACE",
  ];
  deshuffleTests.forEach(str => {
    const result = Embaralha.shuffle(str, 1);
    console.log(`Shuffle('${str}', 1) => '${result}'`);
  });
}

u_TstEmbaralha();
