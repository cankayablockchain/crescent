part of 'assistant_page.dart';

class AssistantLayout extends StatelessWidget {
  const AssistantLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<AssistantBloc, AssistantState>(
            builder: (context, state) {
              return ListView.builder(
                itemCount: state.chatlog.length,
                itemBuilder: (context, index) {
                  return AssistantChatMessage(
                    message: state.chatlog[index].messages,
                    isMe: state.chatlog[index].isMe,
                  );
                },
              );
            },
          ),
        ),
        const AssistantQuestionInput(),
      ],
    );
  }
}
