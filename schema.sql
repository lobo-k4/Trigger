/*tabla users*/
create table users (

CI integer primary key,

nombre varchar(100),

fecha_nacimiento date,

edad int,

email varchar(100),

password varchar(20)

)

/*funcion*/
CREATE FUNCTION trigger_mayus( ) RETURNS TRIGGER AS $$

begin

NEW.password= lower(new.password);

return NEW;

end;

$$ language plpgsql;

/*trigger*/
create trigger triggre_minusculos

before insert or update on users

for each row

execute procedure trigger_mayus()
