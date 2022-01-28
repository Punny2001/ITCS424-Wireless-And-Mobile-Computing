import 'dart:math';


void main() {
   FinddB(1/1000, [0.1, 1,10,100, 500, 1000, 10000, 100000]);
}
void FinddB(double p_ref, var p1) {
    var dB = [];
    double log10(num x) => log(x) / ln10;
   for(var i=0; i<p1.length; i++){
        dB.add(10*log10( p1[i]/p_ref));
   }
   print(dB);
}
