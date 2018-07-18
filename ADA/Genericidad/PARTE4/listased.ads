with listas;
with mayor_que;
with ada.Float_Text_IO; use ada.Float_Text_IO;
package listased is new Listas(Elemento =>integer,antes_que => mayor_que);
