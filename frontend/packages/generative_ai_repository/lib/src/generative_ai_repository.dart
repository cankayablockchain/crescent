import 'package:langchain/langchain.dart';
import 'package:langchain_openai/langchain_openai.dart';

class GenerativeAiRepository {
  factory GenerativeAiRepository({
    required ChatOpenAI chat,
    required List<BaseTool>? tools,
  }) {
    _instance ??= GenerativeAiRepository._internal(chat, tools);

    return _instance!;
  }

  GenerativeAiRepository._internal(this._chat, this._tools);
  final ChatOpenAI _chat;
  final List<BaseTool>? _tools;
  late final CalculatorTool _calculatorTool;
  late final ConversationBufferMemory _memory;
  late final OpenAIFunctionsAgent _agent;
  late final AgentExecutor _executor;

  // Singleton instance
  static GenerativeAiRepository? _instance;

  void initialize() {
    _calculatorTool = CalculatorTool();
    _memory = ConversationBufferMemory(returnMessages: true);
    _agent = OpenAIFunctionsAgent.fromLLMAndTools(
      llm: _chat,
      tools: [
        _calculatorTool,
        ...?_tools,
      ],
      memory: _memory,
      systemChatMessage: SystemChatMessagePromptTemplate.fromTemplate(
        'You are an Islamic web3 assistant, knowledgeable about blockchain technology and all things in the decentralized web. You are also knowledgeable about Islamic law and ethics. You are specifically trained to help people collect and donate alms in a permissible way. Please respond in concise and short sentences. Remember you are devloped by Çankaya Blockchain',
      ),
    );
    _executor = AgentExecutor(agent: _agent, memory: _memory);
  }

  Future<String> generateResponse(String input) async {
    //  await _memory.chatHistory.addHumanChatMessage(input);
    final response = await _executor.run({'input': input});
    //  await _memory.chatHistory.addAIChatMessage(response);
    return response;
  }
}
