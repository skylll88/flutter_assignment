import 'package:assignment2/features/model/option_model.dart';
import 'package:assignment2/features/model/user_model.dart';
import 'package:assignment2/features/widgets/home_appbar.dart';
import 'package:assignment2/features/widgets/users_list_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/pay_option_widget.dart';

		class HomeScreen extends StatefulWidget {
			const HomeScreen({Key? key}) : super(key: key);

			@override
			State<HomeScreen> createState() => _HomeScreenState();
		}

		class _HomeScreenState extends State<HomeScreen> {
			@override
			Widget build(BuildContext context) {
				return Scaffold(
					body: SafeArea(
            child: Padding(
					  padding: const EdgeInsets.symmetric(horizontal: 16.0),
					  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
					  	children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Hi Sandeep',
                      style: TextStyle(color: Colors.grey),
                    ),
                   HomeAppBarDesign(),
                  ],
                ),

					  		Row(
					  		  children: const [
					  		    Text('1,234.00', style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
					  		  ],
					  		),
					  		Row(
					  			children: const [
					  				Image(image:
					  				AssetImage("assets/images/india.jpeg"),
					  					height: 40,
					  					width:  40,
					  				),
					  				Text('IND', style: TextStyle(color: Colors.grey,
					  						fontSize: 30, fontWeight: FontWeight.w500),),
					  				IconButton(onPressed: null, icon: Icon(Icons.keyboard_arrow_down, size: 40,))
					  			],
					  		),
					  		const SizedBox(height: 50,),
					  		Row(
					  		  children: const [
					  		    Text('Here are somethings you can do', style: TextStyle(color: Colors.grey,
					  		    		fontSize: 20, fontWeight: FontWeight.normal),),
					  		  ],
					  		),
								const SizedBox(height: 20,),
						Expanded(
						  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: optionItemData.length,
                itemBuilder: (BuildContext context , int index) {
                final optionItem = optionItemData[index];
                 return PayOptionWidget(optionItem: optionItem);
                }
              ),
            ),
            const Text(
                  'Your Favourite people',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 16,
                ),
            Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey, 
                      ),

                      child: const Icon(
                        Icons.add, 
                        color: Color.fromARGB(136, 203, 191, 191), 
                        size: 40, 
                      ),

                    ),
                    const SizedBox(width: 8,),

                    Expanded(
                      child: SizedBox(
                        height: 92, // set fixed height
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: usersModel.length,
                          itemBuilder: (context, index) {
                            final user = usersModel[index];
                            return UserListWidget(
                                user: user);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
					  	],
					  ),
					),
        ),
					);
			}
		}
