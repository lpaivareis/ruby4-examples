# Exemplos das novas funcionalidades do Ruby 4

## Ruby Box

### App Payment example

- Exec

```bash
RUBY_BOX=1 ruby ./app_payment.rb  
```

-Output
```bash




Version 1:
------------------------------------------------------
{value: 1000.0, amount: 950.0, fee: 50.0}
------------------------------------------------------







Version 2:
------------------------------------------------------
{value: 1000.0, amount: 850.0, fee: 50.0, tax: 100.0}
------------------------------------------------------







```

### Greetings example

- Exec

```bash
RUBY_BOX=1 ruby ./app.rb  
```
- Output
  
```bash


================Version 1==================
Hello Lucas! HOW ARE YOU?
==================end======================

================Version 2==================
Hello Lucas! I DON'T WANT TO TALK TO YOU!
==================end======================

================Version 3==================
HELLO LUCAS, GOOD NIGHT!
==================end======================

================Version 1==================
Hello Lucas! HOW ARE YOU?
==================end======================



```

## Ractors

- Exec
```bash
ruby ractor_example.rb 
```

-Output
```bash
#<Ractor::Port:0x00007c858c3e6460>: Olá Mundo em 2026-01-15 02:33:10 -0300
#<Ractor::Port:0x00007c858c3e5da8>: Olá Mundo em 2026-01-15 02:33:10 -0300
#<Ractor::Port:0x00007c858c3e5948>: Olá Mundo em 2026-01-15 02:33:10 -0300
#<Ractor::Port:0x00007c858c3e5b50>: Olá Mundo em 2026-01-15 02:33:10 -0300
#<Ractor::Port:0x00007c858c3e5740>: Olá Mundo em 2026-01-15 02:33:10 -0300
```
