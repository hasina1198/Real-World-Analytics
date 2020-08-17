/*********************************************
 * OPL 12.8.0.0 Model
 * Author: hshaikh
 * Creation Date: May 2, 2018 at 2:10:51 AM
 *********************************************/
dvar float+ xc1;
dvar float+ xc2;
dvar float+ xc3;
dvar float+ xw1;
dvar float+ xw2;
dvar float+ xw3;
dvar float+ xv1;
dvar float+ xv2;
dvar float+ xv3;
dexpr float sales = 50*(xc1+xw1+xv1) + 55*(xc2+xw2+xv2) + 60*(xc3+xw3+xv3);
dexpr float productionCost  =  4*(xc1+xw1+xv1) + 4*(xc2+xw2+xv2) + 5*(xc3+xw3+xv3);
dexpr float purchaseCost  =  30*(xc1+xc2+xc3) + 45*(xw1+xw2+xw3) + 40*(xv1+xv2+xv3);
dexpr float profit  =  sales-productionCost - purchaseCost;
maximize profit;

subject to{

//maximum demand constraints
xc1+xw1+xv1<=4500;
xc2+xw2+xv2<=4000;
xc3+xw3+xv3<=3000;
//minimum cotton constraints
xc1>=0.6*(xc1+xw1+xv1);
xc2>=0.6*(xc2+xw2+xv2);
xc3>=0.4*(xc3+xw3+xv3);

// minimum wool constraints
xw1>=0.3*(xc1+xw1+xv1);
xw2>=0.3*(xc2+xw2+xv2);
xw3>=0.5*(xc3+xw3+xv3);
}
 

