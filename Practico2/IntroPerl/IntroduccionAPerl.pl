#!/usr/bin/perl

# Con esa primera linea arrancan los archivos Perl porque asi el compilador o interprete sabe donde buscar los archivos de Perl en la compu

# Modulos/Librerias estandar: funciones para compilacion o ejecucion (strict) y warnings
use strict;
use warnings;
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# El main ya comienza de una, no hay que poner nada, asi que de aca para abajo seria el programa main (comentarios empiezan con #)
print "Hello world! \n";
print('Single quote also works, and parentheses are optional \n', "\n");
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Tres tipos de variables principales: scalars, arrays and hashes
# Hay variables especiales que se usan para propositos generales, documentadas en perlvar. Necesitamos conocer $_ por ahora, que es la "variable default"
# $_ es la variable default usada como argumento default de funciones en Perl y setea implicitamente algunos constructores de loops 
# (foreach por ejemplo: lo que antes poniamos como For (T e : lista) en Java, aca la variable e es por default $_

print; # Muestra el contenido de la variable especial $_

# Scalars: un valor concreto: String, Integer, Float
# Con el use strict se tiene que poner my para declarar variables. 
# Se puede no poner, pero van a quedar globales para todo el programa entero, aun estando adentro de una funcion por ejemplo.
# El uso del my hace que sean variables locales.
my $animal = "camel";
my $answer = 42;

print "Double quotes for interpolate variables: $animal\n";
print 'And single quotes does not interpolate: $animal\n', "\n";
print "The square of $answer is ", $answer * $answer, "\n";
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Arrays: lista de valores hetereogeneos, cero-indexados, $#variableArray te trae el indice del ultimo elemento, @variableArray te muestra la cantidad de elementos del arreglo
my @animals = ("camel", "llama", "owl");
my @numbers = (23, 42, 69);
my @mixed = ("camel", 42, 1.23);

print 'Primer animal: ', $animals[0], "\n";
print 'Segundo animal: ', $animals[1], "\n";

print "Ultimo elemento en mixed: $mixed[$#mixed] \n";

# para obtener multiples valores del arreglo
print "Primer y segundo animal: @animals[0,1] \n";            # trae el elemento 0 y 1
print 'Del 0 al 2 de animals: ', @animals[0..2], "\n";           # trae desde el elemento 0 hasta el 2
print 'Todos los numeros del arreglo menos el primero: ', @numbers[1..$#numbers], "\n";   # trae todos los elementos del arreglo menos el primero que seria el @numbers[0]

# funciones de sorting y reverse ya dadas por el lenguaje
my @sorted = sort @animals;
my @backwards = reverse @sorted;
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Hashes: conjunto de pares keys/values

my %fruit_color = ("apple", "red", "banana", "yellow");
# equivalentemente
my %fruit_color_nicely = (
    apple => "red",
    banana => "yellow",
);

my $boolTrue = $fruit_color{"apple"} eq "red";  # eq de Strings

# funciones para hashes: keys(hash) y values(hash) que devulenven una lista de keys o values
my @fruits = keys %fruit_color;
my @colors = values %fruit_color;

# hashes no tienen orden en particular, pero si tienen las keys y los values, asi que podrias hacer sort en esas dos cosas claro..
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Una referencia es un valor escalar que puede referir a otro tipo abstracto de Perl. Asi, usando un escalar puedo almacenar una referencia a un hash anonimo:
my $variables = {
    scalar => {
        description => "single item",
        sigil => '$',
    },
    array => {
        description => "ordered list of items",
        sigil => '@',
    },
    hash => {
        description => "key/value pairs",
        sigil => '%',
    },
};

print "Scalars begin with a $variables->{'scalar'}->{'sigil'} \n";
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Varible scoping
my $x = "foo";
my $some_condition = 1;
if ( $some_condition ) {
    my $y = "bar";
    print 'Valor de x adentro del if: ', $x, "\n";  # prints "foo"
    print 'Valor de y adentro del if: ', $y, "\n";  # prints "bar"
}
print 'Valor de x afuera del if: ', $x, "\n";   # prints "foo"
    #DESCOMENTAR print $y;   # prints nothing; $y has fallen out of scope. Genera error en tiempo de compilacion (usando el strict del principio)
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Estructura if
# Por mas que el if tenga 1 sola accion, se tiene que poner entre llaves
if ( $some_condition ) {
    print "Then \n";
} elsif ( $some_condition == 3 ) {
    print "Else if \n";
} else {
    print "Else \n";
}

unless ( $some_condition ) {
    print 'Unless: More readable version of if ( !*condition* )';
}

# Perlish post-condition if way:
print "Hace tal cosa si es que (condicion) \n" if $some_condition;
print "Hace tal cosa a menos que (condicion) \n" unless $some_condition;
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Estructura while
# Mientras pase esto, hacer body
while ( $some_condition ) {
    print "Uno", "\n";
    $some_condition--;
}
# Hasta que no se cumpla esto, hacer body
until ( $some_condition ) {
    print "Dos", "\n";
    $some_condition++;
}
# Usar while como post-condicion
    #DESCOMENTAR print "Un clavito pablito" while 1; # Loops forever
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Esctructura for
my $max = 5;
for (my $i = 0; $i <= $max; $i++) {
    print "Valor i = ", $i, "\n";
}
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Foreach
foreach ( @sorted ) {
    print "This element is $_\n";
}
# como post-condicion
print "Backwards: ", $backwards[$_], "\n" foreach 0..$#backwards;

foreach my $k (keys %fruit_color) {
    print "The value of $k is $fruit_color{$k}\n";
}

foreach my $v (@colors) {
    print "Recorriendo array colors: $v", "\n";
}
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Operaciones y funciones
# Comentario multilinea en Perl: empieza con =begin <etiqueta/label> ...comentario... =end <etiqueta/label> ..Linea de abajo.. =cut
=begin comment

Arithmetic
    +   addition
    -   subtraction
    *   multiplication
    /   division

Numeric comparison
    ==  equality
    !=  inequality
    <   less than
    >   greater than
    <=  less than or equal
    >=  greater than or equal

String comparison
    eq  equality
    ne  inequality
    lt  less than
    gt  greater than
    le  less than or equal
    ge  greater than or equal

    (Why do we have separate numeric and string comparisons? Because we don't have special variable types, and Perl needs to know whether to
    sort numerically (where 99 is less than 100) or alphabetically (where 100 comes before 99).

Boolean logic
    &&  and
    ||  or
    !   not

    ("and", "or" and "not" aren't just in the above table as descriptions of the operators. They're also supported as operators
    in their own right. They're more readable than the C-style operators, but have different precedence to "&&" and friends.
    Check perlop for more detail.)

Miscellaneous
    =   assignment
    .   string concatenation
    x   string multiplication (repeats strings)
    ..  range operator (creates a list of numbers or strings)

Many operators can be combined with a "=" as follows:
    $a += 1;        # same as $a = $a + 1
    $a -= 1;        # same as $a = $a - 1
    $a .= "\n";     # same as $a = $a . "\n";

=end comment
=cut
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Archivos
# Abrir un archivo mediante funcion open(). Perlfunc y Perlopentut tienen documentacion de esto
open(my $in, "<", "input.txt") or die "Cant open input.txt: $!";
open(my $out, ">", "output.txt") or die "Cant open output.txt: $!";
open(my $log, ">>", "my.log") or die "Cant open my.log: $!";

# Leer de un archivo abierto usando operador <>.
# En un escalar pondria una sola linea del archivo.
my $line = <$in>;
# En un arreglo leeria todo el texto completo, asignando cada linea a un elemento del arreglo.
my @lines = <$in>;

# Leer todo el archivo de una se llama slurping. Podria ser util pero podria generar memory hog (desperdicio de memoria/uso excesivo).
# El operador <> es mas usado en los while:
while ( <$in> ) {
    print "Just read in this line: $_";
}

print STDERR "Print puede tomar otro argumento, siempre y cuando el primero sea un archivo (algo asi) \n";
    # print $out $record;
    # print $log $logmessage;

# Al terminar de usar el archivo, cerrarlo:
close $in or die "Error al cerrar el archivo $in: $!";
close $out or die "Error al cerrar el archivo $out: $!";
close $log or die "Error al cerrar el archivo $log: $!";
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Expresiones regulares simples
# Documentacion en perlrequick, perlretut, perlop, perlre
$_ = 'visfoobar';
if ( /foo/ ) { 
    print 'Resulta que la variable $_ contiene "foo"', "\n";
}
my $a = 'Uno Foo Dos';
if ( $a =~ /foo/ ) {
    print 'La variable $a contiene "foo"', "\n";
}

# Substituciones simples
s/foo/bar/;         # Reemplaza foo con bar en $_
$a =~ s/foo/bar/;   # Reemplaza foo con bar en $a
$a =~ s/foo/bar/g;  # Reemplaza TODAS LAS INSTANCIAS de foo con bar en $a
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Expresiones regulares complejas
=begin comment

No hace falta matchear en strings fijas. De hecho, podrias matchear en todas las que quieras usando regulares expresiones complejas.
Estan largamente documentadas en perlre, pero este es el cheatsheet.

    .                   a single character
    \s                  a whitespace character (space, tab, newline, ...)
    \S                  non-whitespace character
    \d                  a digit (0-9)
    \D                  a non-digit
    \w                  a word character (a-z, A-Z, 0-9, _)
    \W                  a non-word character
    [aeiou]             matches a single character in the given set
    [^aeiou]            matches a single character outside the given set
    (foo|bar|baz)       matches any of the alternatives specified

    ^                   start of string
    $                   end of string

Los cuantificadores pueden usarse para especificar cuantas veces de la cosa anterior a ellos queres que matchee. Donde cosa quiere decir un caracter literal, uno de los
metacaracteres listados arriba o un grupo de caracteres o metacaracteres en parentesis

    *                   zero or more of the previous thing
    +                   one or more of the previous thing
    ?                   zero or one of the previous thing
    {3}                 matches exactly 3 of the previous thing
    {3,6}               matches between 3 and 6 of the previous thing
    {3,}                matches 3 or more of the previous thing

Algunos breves ejemplos:

    /^\d+/              string starts with one or more digits
    /^$/                nothing in the string (start and end are adjacent)
    /(\d\s){3}/         three digits, each followed by a whitespace character (eg "3 4 5 ")
    /(a.)+/             matches a string in which every odd-numbered letter is a (eg "abacadaf")

Este While lee desde el STDIN e imprime las lineas no-vacias:
    while (<>) {
        next if /^$/;
        print;
    }

=end comment
=cut
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Parentesis para captura
# Asi como agrupadores, un segundo proposito de los parentesis es para que las regex matcheen para un uso particular. Cada matcheo se guarda en $1, $2, y asi:
# Una forma barata e inteligente de desmenuzar una direccion de email en partes:
my $email = 'example_email@yahoo.com.ar';
if ($email =~ /([^@]+)@(.+)/) {
    print "Username is $1\n";
    print "Hostname is $2\n";
}
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------#
# Subrutinas
# Documentacion en perlsub

sub logger {
    my $logmessage = shift;
    my $logfile;
    open $logfile, ">>", "my.log" or die "Could not open $logfile: $!\n";
    print $logfile $logmessage;
}

# Ahora se puede llamar a la subrutina como las demas funciones dadas por el lenguaje
logger("Habemus logger subrutina! \n");

# La asignacion de shift al logmessage lo que hace es que toma el primer argumento pasado a logger.
# Es decir, las subrutinas van a tomar los argumentos que sean, y adentro de la subrutina se van a usar como si fuese un arreglo que se guarda en @_
# Entonces, por ejemplo si queremos el argumento 0 tenemos ese comando especial shift, o sino equivalentemente @_[0], el argumento 1: @_[1], etc.

# Podemos manipular @_ de otras formas tambien:
my ($logmessage, $priority) = @_;   # Comun
    #DESCOMENTAR my $logmessage = $_[0];             # Menos comun y mas feo

# Subrutinas que devuelven valores:
sub square {
    my $num = shift;
    my $result = $num * $num;
    return $result;
}

# Y luego usarla tal que:
my $sq = square(8);
