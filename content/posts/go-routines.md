---
title: "Execução distribuída em Go"
date: 2020-10-19T15:46:02-03:00
description: "Diferentes abordagens para rodar o seu Go code paralelo/distribuído"
tags: [goroutines, go, distribuido, paralelismo]
draft: true
---

Por padrão em Go voce já pode executar o seu codigo distribuidamente, podendo usar todo o poder do processador e seu software performar melhor. Mas, existem diferentes formas de se fazer isso e dependendo do contexto do problema a ser resolvida alguma dessas formas vai ser mais efetiva e mais produtiva para o desenvolvedor.

O intuito do post é mostrar um pouco sobre algumas formas de utilizar as `goroutines` do Go para resolver algumas problemas 

## Um pouco sobre


## Tipos

1. A mais básica e simples que é chamada a função e não ocorre tranferencia de dados com a rotina e não interressa o que ocorre lá. Apenas acontece o disparo

```go
go UpdateStock(p, true)
```
> Exemplo completo em: https://github.com/richardbertozzo/go-playground

2. Wait group

<escrever sobre>

```go
var wg sync.WaitGroup
wg.Add(2)

go func(w *sync.WaitGroup) {
    defer wg.Done()
    cityName := "Florianopolis"
    t := GetTemperature(cityName)
    log.Printf("Temperatura da cidade %s = %f graus celsius", cityName, t)
}(&wg)

go func(w *sync.WaitGroup) {
    defer wg.Done()
    cityName := "Salvador"
    t := GetTemperature(cityName)
    log.Printf("Temperatura da cidade %s = %f graus celsius", cityName, t)
}(&wg)

wg.Wait()
```
> Example completo em: https://github.com/richardbertozzo/go-playground

O exemplo acima implementamos com o grupo de espera, para poder requisitar a temparatura de diversas cidades ao mesmo tempo. Criando um grupo de espera, e adicionamos a quantidade de goroutines que será executado e que na função `wg.Wait()` vai esperar por todas as goroutines acabarem. 

A função que sinaliza que terminou é a `wg.Done()`, que é executado no final da função anônima disparada com goroutine
Algo parecido como o `Promise.all()` do JavaScript.

Esse trecho de código poderia ser transformado em um [worker](https://gobyexample.com/waitgroups).

Pode ser usado o outro pacote: https://pkg.go.dev/golang.org/x/sync/errgroup para ter a possibilidade de propagação de erros e cancelamento de contexto em grupos de goroutinas que estão sendo executadas.

3. Transmissão de dados entre as goroutines

channels

Poderia mudar

## Links Uteis

Video muito bom sobre o mesmo assunto - https://www.youtube.com/watch?v=Yib2s-EE754&ab_channel=alexriosdev
https://goatspeed.substack.com/p/concurrency-channels-and-goroutines

Ver se vale a pena
https://medium.com/@akselarzuman/concurrency-and-parallelism-difference-9a3e394a1e9d
https://medium.com/swlh/go-a-tale-of-concurrency-a-beginners-guide-b8976b26feb
https://dev.to/barakplasma/concurrency-in-go-5da
