# cpf_cnpj

Pair of classes to validate Brazil's CPF and CNPJ

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  cpf_cnpj:
    github: CubosTecnologia/cpf_cnpj-crystal
```

## Usage

```crystal
require "cpf_cnpj"

cpf = CPF.new("182.77702876")
cpf.valid?  # true
cpf.to_s    # "182.777.028-76"

cnpj = CNPJ.new("66.028.218/0001-62")
cnpj.valid?  # true
cnpj.to_s    # "66.028.218/0001-62"
```

## Contributing

1. Fork it ( https://github.com/CubosTecnologia/cpf_cnpj-crystal/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [lbguliherme](https://github.com/lbguliherme)  - creator, maintainer
