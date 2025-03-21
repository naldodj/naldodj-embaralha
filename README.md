<div><br /></div><div class="separator" style="clear: both; text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhFyL8h0FSXOL16GP1m4-A-BEyiLcYgXcRSxxRB6UVCaGYnxLYt-FjjV7rNa9gupae9050CngT9H873oNUZDcO0b3OXbP8wik1PZc06FQxS5b3yeLXY64jRklLD521koxJbrMPIh3B93tXSs3uGB4ZvJX9uvaTO2Q3wLKyREd76kfeDir_MJ1a4Gutv-n8/s1024/embaralha_chat_gpt_944f2085-9124-4c3a-8bc9-2c9da6443601.webp" style="margin-left: 1em; margin-right: 1em;"><img border="0" data-original-height="1024" data-original-width="1024" height="320" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhFyL8h0FSXOL16GP1m4-A-BEyiLcYgXcRSxxRB6UVCaGYnxLYt-FjjV7rNa9gupae9050CngT9H873oNUZDcO0b3OXbP8wik1PZc06FQxS5b3yeLXY64jRklLD521koxJbrMPIh3B93tXSs3uGB4ZvJX9uvaTO2Q3wLKyREd76kfeDir_MJ1a4Gutv-n8/s320/embaralha_chat_gpt_944f2085-9124-4c3a-8bc9-2c9da6443601.webp" width="320" /></a></div><br /><div><br /></div>
<pre class="markdown">_Créditos da imagem: Gerada com auxílio do ChatGPT_


---

# **Desembaralhando a função Embaralha**

No universo das customizações para o ERP da TOTVS, frequentemente surge a necessidade de compreender o funcionamento de uma função "proprietária" para poder replicá-la em outros sistemas, como SQL, C#, ou C. Uma das funções mais conhecidas nesse contexto é a Embaralha, que tem despertado o interesse de muitos desenvolvedores que desejam utilizar sua lógica em aplicações fora do ambiente TOTVS.

Neste post, apresentarei o resultado de um algoritmo que simula o processo de "embaralhar e desembaralhar" semelhante ao da função Embaralha (testado com strings de 1 a 36 caracteres).

Vale ressaltar que o algoritmo aqui apresentado tem finalidade exclusivamente didática e não é recomendado para uso no ambiente TOTVS Microsiga Protheus. No Protheus, sempre utilize a função nativa Embaralha. Entretanto, se você deseja implementar a lógica para uso externo ao Protheus, este material pode servir como ponto de partida.

Para implementar e testar esse algoritmo, utilizei a linguagem Harbour, compilada para WebAssembly [harbour_wasm](https://fivetechsoft.github.io/harbour_wasm/)
<br /></pre><div class="separator" style="clear: both; text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOPg_bMeU2sqdoYpWAVG7aZ8omMwcarOTNT62tzCr0A1gejE0Qbd61JD5_w4ntKuk3X3Vi-ahrOm46UBCzLLdrNOtleQ3AGvU1B5oyjMhy8FzN85Mrc0GlBt2f_9oe-XZmRDpULg-9M4DTo6Edk46bXZ_Fhsth3u1yvitCCh3t2ynEvJz6cB6kYxaytpA/s1359/embaralha.png" style="margin-left: 1em; margin-right: 1em;"><img border="0" data-original-height="682" data-original-width="1359" height="322" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOPg_bMeU2sqdoYpWAVG7aZ8omMwcarOTNT62tzCr0A1gejE0Qbd61JD5_w4ntKuk3X3Vi-ahrOm46UBCzLLdrNOtleQ3AGvU1B5oyjMhy8FzN85Mrc0GlBt2f_9oe-XZmRDpULg-9M4DTo6Edk46bXZ_Fhsth3u1yvitCCh3t2ynEvJz6cB6kYxaytpA/w640-h322/embaralha.png" width="640" /></a></div><br /><pre class="markdown"><br /></pre><pre class="markdown">_Créditos da imagem: BlackTDN_

## **Retorno da Embaralha no Protheus**


```markdown

cCRLF:=chr(13)+chr(10)
    cEmbaraLha:="Embaralha('1',0)=&gt;"+EmbaraLha("1",0)+cCRLF
    cEmbaraLha+="Embaralha('12',0)=&gt;"+EmbaraLha("12",0)+cCRLF
    cEmbaraLha+="Embaralha('123',0)=&gt;"+EmbaraLha("123",0)+cCRLF
    cEmbaraLha+="Embaralha('1234',0)=&gt;"+EmbaraLha("1234",0)+cCRLF
    cEmbaraLha+="Embaralha('12345',0)=&gt;"+EmbaraLha("12345",0)+cCRLF
    cEmbaraLha+="Embaralha('123456',0)=&gt;"+EmbaraLha("123456",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567',0)=&gt;"+EmbaraLha("1234567",0)+cCRLF
    cEmbaraLha+="Embaralha('12345678',0)=&gt;"+EmbaraLha("12345678",0)+cCRLF
    cEmbaraLha+="Embaralha('123456789',0)=&gt;"+EmbaraLha("123456789",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890',0)=&gt;"+EmbaraLha("1234567890",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890A',0)=&gt;"+EmbaraLha("1234567890A",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890AB',0)=&gt;"+EmbaraLha("1234567890AB",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABC',0)=&gt;"+EmbaraLha("1234567890ABC",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCD',0)=&gt;"+EmbaraLha("1234567890ABCD",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDE',0)=&gt;"+EmbaraLha("1234567890ABCDE",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDEF',0)=&gt;"+EmbaraLha("1234567890ABCDEF",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDEFG',0)=&gt;"+EmbaraLha("1234567890ABCDEFG",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDEFGH',0)=&gt;"+EmbaraLha("1234567890ABCDEFGH",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHI',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHI",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJ',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJ",0)+cCRLF
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJK',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJK",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKL',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKL",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLM',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLM",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMN',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMN",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNO',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNO",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOP',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOP",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQ',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQ",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQR',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQR",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRS',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRS",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRST',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRST",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRSTU",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRSTUV",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRSTUVW",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRSTUVWX",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRSTUVWXY",0)+cCRLF    
    cEmbaraLha+="Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=&gt;"+EmbaraLha("1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ",0)+cCRLF    

    eecView(cEmbaraLha)
    
    Embaralha('1',0)=&gt;1
    Embaralha('12',0)=&gt;12
    Embaralha('123',0)=&gt;231
    Embaralha('1234',0)=&gt;4321
    Embaralha('12345',0)=&gt;32154
    Embaralha('123456',0)=&gt;246135
    Embaralha('1234567',0)=&gt;4613572
    Embaralha('12345678',0)=&gt;75318642
    Embaralha('123456789',0)=&gt;531864297
    Embaralha('1234567890',0)=&gt;3691470258
    Embaralha('1234567890A',0)=&gt;691470258A3
    Embaralha('1234567890AB',0)=&gt;741A852B963
    Embaralha('1234567890ABC',0)=&gt;741A852B963C0
    Embaralha('1234567890ABCD',0)=&gt;48B159C260D37A
    Embaralha('1234567890ABCDE',0)=&gt;8B159C260D37AE4
    Embaralha('1234567890ABCDEF',0)=&gt;C951D062EA73FB84
    Embaralha('1234567890ABCDEFG',0)=&gt;951D062EA73FB84GC
    Embaralha('1234567890ABCDEFGH',0)=&gt;50E16AF27BG38CH49D
    Embaralha('1234567890ABCDEFGHI',0)=&gt;E16AF27BG38CH49DI5
    Embaralha('1234567890ABCDEFGHIJ',0)=&gt;FA61GB72HC83ID94JE05
    Embaralha('1234567890ABCDEFGHIJK',0)=&gt;A61GB72HC83ID94JE05KF
    Embaralha('1234567890ABCDEFGHIJKL',0)=&gt;6BH17CI28DJ39EK40FL5AG
    Embaralha('1234567890ABCDEFGHIJKLM',0)=&gt;BH17CI28DJ39EK40FL5AGM6
    Embaralha('1234567890ABCDEFGHIJKLMN',0)=&gt;IC71JD82KE93LF04MGA5NHB6
    Embaralha('1234567890ABCDEFGHIJKLMNO',0)=&gt;C71JD82KE93LF04MGA5NHB6OI
    Embaralha('1234567890ABCDEFGHIJKLMNOP',0)=&gt;7DK18EL29FM30GN4AHO5BIP6CJ
    Embaralha('1234567890ABCDEFGHIJKLMNOPQ',0)=&gt;DK18EL29FM30GN4AHO5BIP6CJQ7
    Embaralha('1234567890ABCDEFGHIJKLMNOPQR',0)=&gt;LE81MF92NG03OHA4PIB5QJC6RKD7
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRS',0)=&gt;E81MF92NG03OHA4PIB5QJC6RKD7SL
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRST',0)=&gt;8FN19GO20HP3AIQ4BJR5CKS6DLT7EM
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=&gt;FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=&gt;OG91PH02QIA3RJB4SKC5TLD6UME7VNF8
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=&gt;G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=&gt;9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=&gt;HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9
    Embaralha('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=&gt;RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9
```

---
## **Teste do Algoritmo de Embaralhamento usando o Harbour WASM**

```xBase
procedure Main()

    ? "Shuffled: "
    ? "-------------"
    ? "Shuffle('1',0)=&gt;",Shuffle("1",0),"OK Esperado: 1"
    ? "Shuffle('12',0)=&gt;",Shuffle("12",0),"OK Esperado: 12"
    ? "Shuffle('123',0)=&gt;",Shuffle("123",0),"OK Esperado: 231"
    ? "Shuffle('1234',0)=&gt;",Shuffle("1234",0),"OK Esperado: 4321"
    ? "Shuffle('12345',0)=&gt;",Shuffle("12345",0),"OK Esperado: 32154"
    ? "Shuffle('123456',0)=&gt;",Shuffle("123456",0),"OK Esperado: 246135"
    ? "Shuffle('1234567',0)=&gt;",Shuffle("1234567",0),"OK Esperado: 4613572"
    ? "Shuffle('12345678',0)=&gt;",Shuffle("12345678",0),"OK Esperado: 75318642"
    ? "Shuffle('123456789',0)=&gt;",Shuffle("123456789",0),"OK Esperado: 531864297"
    ? "Shuffle('1234567890',0)=&gt;",Shuffle("1234567890",0),"OK: Esperado: 3691470258"
    
    ? "Shuffle('1234567890A',0)=&gt;",Shuffle("1234567890A",0),"OK Esperado: 691470258A3"
    ? "Shuffle('1234567890AB',0)=&gt;",Shuffle("1234567890AB",0),"OK Esperado: 0741A852B963"
    ? "Shuffle('1234567890ABC',0)=&gt;",Shuffle("1234567890ABC",0),"OK Esperado: 741A852B963C0"
    ? "Shuffle('1234567890ABCD',0)=&gt;",Shuffle("1234567890ABCD",0),"OK Esperado: 48B159C260D37A"
    ? "Shuffle('1234567890ABCDE',0)=&gt;",Shuffle("1234567890ABCDE",0),"OK Esperado: 8B159C260D37AE4"
    ? "Shuffle('1234567890ABCDEF',0)=&gt;",Shuffle("1234567890ABCDEF",0),"OK Esperado: C951D062EA73FB84"
    ? "Shuffle('1234567890ABCDEFG',0)=&gt;",Shuffle("1234567890ABCDEFG",0),"OK Esperado: 951D062EA73FB84GC"
    ? "Shuffle('1234567890ABCDEFGH',0)=&gt;",Shuffle("1234567890ABCDEFGH",0),"OK Esperado: 50E16AF27BG38CH49D"
    ? "Shuffle('1234567890ABCDEFGHI',0)=&gt;",Shuffle("1234567890ABCDEFGHI",0),"OK Esperado: 0E16AF27BG38CH49DI5"
    ? "Shuffle('1234567890ABCDEFGHIJ',0)=&gt;",Shuffle("1234567890ABCDEFGHIJ",0),"OK Esperado: FA61GB72HC83ID94JE05"
    
    ? "Shuffle('1234567890ABCDEFGHIJK',0)=&gt;",Shuffle("1234567890ABCDEFGHIJK",0),"OK Esperado: A61GB72HC83ID94JE05KF"
    ? "Shuffle('1234567890ABCDEFGHIJKL',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKL",0),"OK Esperado: 6BH17CI28DJ39EK40FL5AG"
    ? "Shuffle('1234567890ABCDEFGHIJKLM',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLM",0),"OK Esperado: BH17CI28DJ39EK40FL5AGM6"
    ? "Shuffle('1234567890ABCDEFGHIJKLMN',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMN",0),"OK Esperado: IC71JD82KE93LF04MGA5NHB6"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNO',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNO",0),"OK Esperado: C71JD82KE93LF04MGA5NHB6OI"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOP',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOP",0),"OK Esperado: 7DK18EL29FM30GN4AHO5BIP6CJ"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQ',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQ",0),"OK Esperado: DK18EL29FM30GN4AHO5BIP6CJQ7"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQR',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQR",0),"OK Esperado: LE81MF92NG03OHA4PIB5QJC6RKD7"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRS',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRS",0),"OK Esperado: E81MF92NG03OHA4PIB5QJC6RKD7SL"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRST',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRST",0),"OK Esperado: 8FN19GO20HP3AIQ4BJR5CKS6DLT7EM"
    
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTU",0),"OK Esperado: FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUV",0),"OK Esperado: OG91PH02QIA3RJB4SKC5TLD6UME7VNF8"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVW",0),"OK Esperado: G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVWX",0),"OK Esperado: 9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVWXY",0),"OK Esperado: HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9"
    ? "Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=&gt;",Shuffle("1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ",0),"OK Esperado: RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9"

return

```
---
## **Retorno do Teste do Algoritmo de Embaralhamento usando o Harbour WASM**
```markdown
Shuffled:
-------------
Shuffle('1',0)=&gt; 1 OK Esperado: 1
Shuffle('12',0)=&gt; 12 OK Esperado: 12
Shuffle('123',0)=&gt; 231 OK Esperado: 231
Shuffle('1234',0)=&gt; 4321 OK Esperado: 4321
Shuffle('12345',0)=&gt; 32154 OK Esperado: 32154
Shuffle('123456',0)=&gt; 246135 OK Esperado: 246135
Shuffle('1234567',0)=&gt; 4613572 OK Esperado: 4613572
Shuffle('12345678',0)=&gt; 75318642 OK Esperado: 75318642
Shuffle('123456789',0)=&gt; 531864297 OK Esperado: 531864297
Shuffle('1234567890',0)=&gt; 3691470258 OK: Esperado: 3691470258
Shuffle('1234567890A',0)=&gt; 691470258A3 OK Esperado: 691470258A3
Shuffle('1234567890AB',0)=&gt; 0741A852B963 OK Esperado: 0741A852B963
Shuffle('1234567890ABC',0)=&gt; 741A852B963C0 OK Esperado: 741A852B963C0
Shuffle('1234567890ABCD',0)=&gt; 48B159C260D37A OK Esperado: 48B159C260D37A
Shuffle('1234567890ABCDE',0)=&gt; 8B159C260D37AE4 OK Esperado: 8B159C260D37AE4
Shuffle('1234567890ABCDEF',0)=&gt; C951D062EA73FB84 OK Esperado: C951D062EA73FB84
Shuffle('1234567890ABCDEFG',0)=&gt; 951D062EA73FB84GC OK Esperado: 951D062EA73FB84GC
Shuffle('1234567890ABCDEFGH',0)=&gt; 50E16AF27BG38CH49D OK Esperado: 50E16AF27BG38CH49D
Shuffle('1234567890ABCDEFGHI',0)=&gt; 0E16AF27BG38CH49DI5 OK Esperado: 0E16AF27BG38CH49DI5
Shuffle('1234567890ABCDEFGHIJ',0)=&gt; FA61GB72HC83ID94JE05 OK Esperado: FA61GB72HC83ID94JE05
Shuffle('1234567890ABCDEFGHIJK',0)=&gt; A61GB72HC83ID94JE05KF OK Esperado: A61GB72HC83ID94JE05KF
Shuffle('1234567890ABCDEFGHIJKL',0)=&gt; 6BH17CI28DJ39EK40FL5AG OK Esperado: 6BH17CI28DJ39EK40FL5AG
Shuffle('1234567890ABCDEFGHIJKLM',0)=&gt; BH17CI28DJ39EK40FL5AGM6 OK Esperado: BH17CI28DJ39EK40FL5AGM6
Shuffle('1234567890ABCDEFGHIJKLMN',0)=&gt; IC71JD82KE93LF04MGA5NHB6 OK Esperado: IC71JD82KE93LF04MGA5NHB6
Shuffle('1234567890ABCDEFGHIJKLMNO',0)=&gt; C71JD82KE93LF04MGA5NHB6OI OK Esperado: C71JD82KE93LF04MGA5NHB6OI
Shuffle('1234567890ABCDEFGHIJKLMNOP',0)=&gt; 7DK18EL29FM30GN4AHO5BIP6CJ OK Esperado: 7DK18EL29FM30GN4AHO5BIP6CJ
Shuffle('1234567890ABCDEFGHIJKLMNOPQ',0)=&gt; DK18EL29FM30GN4AHO5BIP6CJQ7 OK Esperado: DK18EL29FM30GN4AHO5BIP6CJQ7
Shuffle('1234567890ABCDEFGHIJKLMNOPQR',0)=&gt; LE81MF92NG03OHA4PIB5QJC6RKD7 OK Esperado: LE81MF92NG03OHA4PIB5QJC6RKD7
Shuffle('1234567890ABCDEFGHIJKLMNOPQRS',0)=&gt; E81MF92NG03OHA4PIB5QJC6RKD7SL OK Esperado: E81MF92NG03OHA4PIB5QJC6RKD7SL
Shuffle('1234567890ABCDEFGHIJKLMNOPQRST',0)=&gt; 8FN19GO20HP3AIQ4BJR5CKS6DLT7EM OK Esperado: 8FN19GO20HP3AIQ4BJR5CKS6DLT7EM
Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTU',0)=&gt; FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8 OK Esperado: FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8
Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUV',0)=&gt; OG91PH02QIA3RJB4SKC5TLD6UME7VNF8 OK Esperado: OG91PH02QIA3RJB4SKC5TLD6UME7VNF8
Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVW',0)=&gt; G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO OK Esperado: G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO
Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWX',0)=&gt; 9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP OK Esperado: 9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP
Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWXY',0)=&gt; HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9 OK Esperado: HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9
Shuffle('1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ',0)=&gt; RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9 OK Esperado: RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9
```

---
## **Teste do Algoritmo de Desembaralhamento usando o Harbour WASM**

```xBase
procedure Main()

    ? "UnscrambLed: "
    ? "-------------"
    ? "Shuffle('1',1)=&gt;",Shuffle("1",1),"OK Esperado: 1"
    ? "Shuffle('12',1)=&gt;",Shuffle("12",1),"OK Esperado: 12"
    ? "Shuffle('231',1)=&gt;",Shuffle("231",1),"OK Esperado: 123"
    ? "Shuffle('4321',1)=&gt;",Shuffle("4321",1),"OK Esperado: 1234"
    ? "Shuffle('32154',1)=&gt;",Shuffle("32154",1),"OK Esperado: 12345"
    ? "Shuffle('246135',1)=&gt;",Shuffle("246135",1),"OK Esperado: 123456"
    ? "Shuffle('4613572',1)=&gt;",Shuffle("4613572",1),"OK Esperado: 1234567"
    ? "Shuffle('75318642',1)=&gt;",Shuffle("75318642",1),"OK Esperado: 12345678 "
    ? "Shuffle('531864297',1)=&gt;",Shuffle("531864297",1),"OK Esperado: 123456789"
    ? "Shuffle('3691470258',1)=&gt;",Shuffle("3691470258",1),"OK Esperado: 1234567890"
    
    ? "Shuffle('0741A852693',1)=&gt;",Shuffle("691470258A3",1),"OK Esperado: 1234567890A"
    ? "Shuffle('0741A852B963',1)=&gt;",Shuffle("0741A852B963",1),"OK Esperado: 1234567890AB"
    ? "Shuffle('741A852B963C0',1)=&gt;",Shuffle('741A852B963C0',1),"OK Esperado: 1234567890ABC"
    ? "Shuffle('48B159C260D37A',1)=&gt;",Shuffle('48B159C260D37A',1),"OK Esperado: 1234567890ABCD"
    ? "Shuffle('8B159C260D37AE4',1)=&gt;",Shuffle('8B159C260D37AE4',1),"OK Esperado: 1234567890ABCDE"
    ? "Shuffle('C951D062EA73FB84',1)=&gt;",Shuffle('C951D062EA73FB84',1),"OK Esperado: 1234567890ABCDEF"
    ? "Shuffle('951D062EA73FB84GC',1)=&gt;",Shuffle('951D062EA73FB84GC',1),"OK Esperado: 1234567890ABCDEFG"
    ? "Shuffle('50E16AF27BG38CH49D',1)=&gt;",Shuffle('50E16AF27BG38CH49D',1),"OK Esperado: 1234567890ABCDEFGH"
    ? "Shuffle('0E16AF27BG38CH49DI5',1)=&gt;",Shuffle('0E16AF27BG38CH49DI5',1),"OK Esperado: 1234567890ABCDEFGHI"
    ? "Shuffle('FA61GB72HC83ID94JE05',1)=&gt;",Shuffle('FA61GB72HC83ID94JE05',1),"OK Esperado: 1234567890ABCDEFGHIJ"
    
    ? "Shuffle('A61GB72HC83ID94JE05KF',1)=&gt;",Shuffle("A61GB72HC83ID94JE05KF",1),"OK Esperado: 1234567890ABCDEFGHIJK"
    ? "Shuffle('6BH17CI28DJ39EK40FL5AG',1)=&gt;",Shuffle("6BH17CI28DJ39EK40FL5AG",1),"OK Esperado: 1234567890ABCDEFGHIJKL"
    ? "Shuffle('BH17CI28DJ39EK40FL5AGM6',1)=&gt;",Shuffle("BH17CI28DJ39EK40FL5AGM6",1),"OK Esperado: 1234567890ABCDEFGHIJKLM"
    ? "Shuffle('IC71JD82KE93LF04MGA5NHB6',1)=&gt;",Shuffle("IC71JD82KE93LF04MGA5NHB6",1),"OK Esperado: 1234567890ABCDEFGHIJKLMN"    
    ? "Shuffle('C71JD82KE93LF04MGA5NHB6OI',1)=&gt;",Shuffle("C71JD82KE93LF04MGA5NHB6OI",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNO"
    ? "Shuffle('7DK18EL29FM30GN4AHO5BIP6CJ',1)=&gt;",Shuffle("7DK18EL29FM30GN4AHO5BIP6CJ",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOP"
    ? "Shuffle('DK18EL29FM30GN4AHO5BIP6CJQ7',1)=&gt;",Shuffle("DK18EL29FM30GN4AHO5BIP6CJQ7",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQ"
    ? "Shuffle('LE81MF92NG03OHA4PIB5QJC6RKD7',1)=&gt;",Shuffle("LE81MF92NG03OHA4PIB5QJC6RKD7",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQR"
    ? "Shuffle('E81MF92NG03OHA4PIB5QJC6RKD7SL',1)=&gt;",Shuffle("E81MF92NG03OHA4PIB5QJC6RKD7SL",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRS"
    ? "Shuffle('8FN19GO20HP3AIQ4BJR5CKS6DLT7EM',1)=&gt;",Shuffle("8FN19GO20HP3AIQ4BJR5CKS6DLT7EM",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRST"    

    ? "Shuffle('FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8',1)=&gt;",Shuffle("FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTU"
    ? "Shuffle('OG91PH02QIA3RJB4SKC5TLD6UME7VNF8',1)=&gt;",Shuffle("OG91PH02QIA3RJB4SKC5TLD6UME7VNF8",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUV"
    ? "Shuffle('G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO',1)=&gt;",Shuffle("G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVW"
    ? "Shuffle('9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP',1)=&gt;",Shuffle("9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWX"
    ? "Shuffle('HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9',1)=&gt;",Shuffle("HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXY"
    ? "Shuffle('RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9',1)=&gt;",Shuffle("RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9",1),"OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ"  

return

```
---
## **Retorno do Teste do Algoritmo de Desembaralhamento usando o Harbour WASM**
```markdown
UnscrambLed:
-------------
Shuffle('1',1)=&gt; 1 OK Esperado: 1
Shuffle('12',1)=&gt; 12 OK Esperado: 12
Shuffle('231',1)=&gt; 123 OK Esperado: 123
Shuffle('4321',1)=&gt; 1234 OK Esperado: 1234
Shuffle('32154',1)=&gt; 12345 OK Esperado: 12345
Shuffle('246135',1)=&gt; 123456 OK Esperado: 123456
Shuffle('4613572',1)=&gt; 1234567 OK Esperado: 1234567
Shuffle('75318642',1)=&gt; 12345678 OK Esperado: 12345678
Shuffle('531864297',1)=&gt; 123456789 OK Esperado: 123456789
Shuffle('3691470258',1)=&gt; 1234567890 OK Esperado: 1234567890
Shuffle('0741A852693',1)=&gt; 1234567890A OK Esperado: 1234567890A
Shuffle('0741A852B963',1)=&gt; 1234567890AB OK Esperado: 1234567890AB
Shuffle('741A852B963C0',1)=&gt; 1234567890ABC OK Esperado: 1234567890ABC
Shuffle('48B159C260D37A',1)=&gt; 1234567890ABCD OK Esperado: 1234567890ABCD
Shuffle('8B159C260D37AE4',1)=&gt; 1234567890ABCDE OK Esperado: 1234567890ABCDE
Shuffle('C951D062EA73FB84',1)=&gt; 1234567890ABCDEF OK Esperado: 1234567890ABCDEF
Shuffle('951D062EA73FB84GC',1)=&gt; 1234567890ABCDEFG OK Esperado: 1234567890ABCDEFG
Shuffle('50E16AF27BG38CH49D',1)=&gt; 1234567890ABCDEFGH OK Esperado: 1234567890ABCDEFGH
Shuffle('0E16AF27BG38CH49DI5',1)=&gt; 1234567890ABCDEFGHI OK Esperado: 1234567890ABCDEFGHI
Shuffle('FA61GB72HC83ID94JE05',1)=&gt; 1234567890ABCDEFGHIJ OK Esperado: 1234567890ABCDEFGHIJ
Shuffle('A61GB72HC83ID94JE05KF',1)=&gt; 1234567890ABCDEFGHIJK OK Esperado: 1234567890ABCDEFGHIJK
Shuffle('6BH17CI28DJ39EK40FL5AG',1)=&gt; 1234567890ABCDEFGHIJKL OK Esperado: 1234567890ABCDEFGHIJKL
Shuffle('BH17CI28DJ39EK40FL5AGM6',1)=&gt; 1234567890ABCDEFGHIJKLM OK Esperado: 1234567890ABCDEFGHIJKLM
Shuffle('IC71JD82KE93LF04MGA5NHB6',1)=&gt; 1234567890ABCDEFGHIJKLMN OK Esperado: 1234567890ABCDEFGHIJKLMN
Shuffle('C71JD82KE93LF04MGA5NHB6OI',1)=&gt; 1234567890ABCDEFGHIJKLMNO OK Esperado: 1234567890ABCDEFGHIJKLMNO
Shuffle('7DK18EL29FM30GN4AHO5BIP6CJ',1)=&gt; 1234567890ABCDEFGHIJKLMNOP OK Esperado: 1234567890ABCDEFGHIJKLMNOP
Shuffle('DK18EL29FM30GN4AHO5BIP6CJQ7',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQ OK Esperado: 1234567890ABCDEFGHIJKLMNOPQ
Shuffle('LE81MF92NG03OHA4PIB5QJC6RKD7',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQR OK Esperado: 1234567890ABCDEFGHIJKLMNOPQR
Shuffle('E81MF92NG03OHA4PIB5QJC6RKD7SL',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRS OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRS
Shuffle('8FN19GO20HP3AIQ4BJR5CKS6DLT7EM',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRST OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRST
Shuffle('FN19GO20HP3AIQ4BJR5CKS6DLT7EMU8',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRSTU OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTU
Shuffle('OG91PH02QIA3RJB4SKC5TLD6UME7VNF8',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRSTUV OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUV
Shuffle('G91PH02QIA3RJB4SKC5TLD6UME7VNF8WO',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRSTUVW OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVW
Shuffle('9HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GP',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRSTUVWX OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWX
Shuffle('HQ10IR2AJS3BKT4CLU5DMV6ENW7FOX8GPY9',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRSTUVWXY OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXY
Shuffle('RI01SJA2TKB3ULC4VMD5WNE6XOF7YPG8ZQH9',1)=&gt; 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ OK Esperado: 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ
```

## **O código em Harbour (Portável para outras linguagens)**
[versão completa harbour github](https://github.com/naldodj/naldodj-embaralha/tree/main/src/harbour) :: [versão completa tlpp github](https://github.com/naldodj/naldodj-embaralha/tree/main/src/tlpp)
---
</pre>
