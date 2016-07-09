What's ?
===============
chef で使用する デバイスマウント の cookbook です。

Usage
-----
cookbook なので berkshelf で取ってきて使いましょう。

* Berksfile
```ruby
source "https://supermarket.chef.io"

cookbook "mount", git: "https://github.com/bageljp/cookbook-mount.git"
```

```
berks vendor
```

#### Role and Environment attributes

* sample_role.rb
```ruby
override_attributes(
  "mount" => {
    "lists" => [{
      "point" => "/data",
      "fs" => "ext4",
      "dev" => "/dev/xvdb"
    }]
  }
)
```

Recipes
----------

#### mount::default
指定したデバイスを指定したマウントポイントにマウントする。

Attributes
----------

多分 Usage のサンプルの記載見ればわかると思います。

TODO
----------
デバイス名指定ではなく、e2label と ラベル名 でのマウントが出来るようにしたい。
