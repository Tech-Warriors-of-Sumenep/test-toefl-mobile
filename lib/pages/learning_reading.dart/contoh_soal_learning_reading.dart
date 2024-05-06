import 'package:flutter/material.dart';

class ContohSoalLearningReading extends StatelessWidget {
  const ContohSoalLearningReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  'images/pens_remBG.png',
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Main Idea',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildQuestionCard(
                description:
                    'Pablo Picasso was one of the most influential artists of the 20th century. He is best known for co-founding the Cubist movement and for his contributions to Surrealism. Picassos work is characterized by a radical departure from traditional artistic forms, with a focus on geometric shapes and abstract representations.',
                question: 'What is the main idea of the passage?\n'
                    'A. The history of modern art movements.\n'
                    'B. The influence of technology on contemporary art.\n'
                    'C. The life and work of Pablo Picasso.\n'
                    'D. The importance of artistic expression in society',
                answer: 'C. The life and work of Pablo Picasso.',
              ),
              const SizedBox(height: 15),
              const Text(
                'Main Topic',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              _buildQuestionCard(
                description:
                    'Yoga is an ancient practice that originated in India. It encompasses a variety of physical, mental, and spiritual disciplines, with the goal of achieving a state of inner peace and harmony. There are several different forms of yoga, including Hatha, Vinyasa, and Ashtanga, each with its own unique focus and techniques',
                question: 'What is the main idea of the passage?\n'
                    'A. The history of modern art movements.\n'
                    'B. The influence of technology on contemporary art.\n'
                    'C. The life and work of Pablo Picasso.\n'
                    'D. The importance of artistic expression in society',
                answer: 'B. the history of yoga and its different forms',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCard({
    required String description,
    required String question,
    required String answer,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          question,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Answer : $answer',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
