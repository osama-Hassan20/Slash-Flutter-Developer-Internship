
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_flutter_internship/core/constant/color.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/cubit.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/state.dart';
class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProductCubit>(context);
    return BlocBuilder<ProductCubit , ProductState>(
      builder: (context, state){
        return Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap:(){
                  cubit.itemCount==1?null:
                  cubit.countDown();

                },
                child: Container(
                  decoration: BoxDecoration(
                      color: cubit.itemCount!=1 ?defaultColor:defaultColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(3)
                  ),
                  height: 26,
                  width:26,
                  child:const Icon(Icons.remove,),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text('${cubit.itemCount}',style:const TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap:(){
                  cubit.countUp();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color:defaultColor,
                      borderRadius: BorderRadius.circular(3)
                  ),
                  height: 26,
                  width:26,
                  child:const Icon(Icons.add,),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}