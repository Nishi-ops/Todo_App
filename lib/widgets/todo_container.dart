import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';


class TodoContainer extends StatelessWidget {
  final int id;
  final String title;
  final String desc;
  final bool Isdone;
  final Function onpress;

  const TodoContainer({super.key,
    required this.id,
    required this.title,
    required this.desc,
    required this.Isdone,
    required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Update your Todo",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: title,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: desc,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',

                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed:null,
                        child: Text("Add"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          width: double.infinity,
          height: 120,
          decoration:  BoxDecoration(
            color: Isdone == true ? green : red,
            borderRadius: BorderRadius.all(Radius.circular(17))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),

                    IconButton(
                        onPressed: () => onpress(),
                        icon: Icon(
                          Icons.delete_rounded,
                          color: Colors.white,
                          size: 30,))
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(desc,style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
