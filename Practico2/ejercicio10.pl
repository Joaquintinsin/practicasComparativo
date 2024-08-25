#!/usr/bin/perl

# Modulos/Librerias estandar: funciones para compilacion o ejecucion y warnings
# Las comento para probar el scoping sobre todo
# use strict;
# use warnings;

# Main

# Sistema de tipos:
print 'Sistema de tipos de Perl?', "\n";
my @varArray = [1, 2, 3];
my $outOfBoundVariable = 3;
my $rescueArray = @varArray[$outOfBoundVariable];
print 'Que tiene el arreglo fuera de su rango?', $rescueArray, "\n";
# Sistema de tipos inseguro: pues se permite la ejecucion de una operacion invalida sobre un tipo de datos.

# Variable scoping:
my $x = 1;
sub my_function {
    $y = "Me salgo del modulo!";
    my $x = shift;
    print "Valor y adentro del modulo: $y \n";
    print "Valor x adentro del modulo: $x \n";
}

my_function(5);
$y = "Te pude asignar y leer afuera!";
print "Valor y afuera del modulo: $y \n";
print "Valor x afuera del modulo: $x \n";