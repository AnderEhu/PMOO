with listas;
with mayor_que;
with puntos;
with ada.Float_Text_IO; use ada.Float_Text_IO;
package listas_puntosED is new listas(puntos.punto,mayor_que);
