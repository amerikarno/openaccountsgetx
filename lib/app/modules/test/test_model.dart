class TestModel {
  String id;
  String suiteTestResult;
  bool isFatca;
  String? fatcaInfo;
  bool isKnowledgeDone;
  String? knowledgeTestResult;

  TestModel({
    required this.id,
    required this.suiteTestResult,
    required this.isFatca,
    this.fatcaInfo,
    required this.isKnowledgeDone,
    this.knowledgeTestResult,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['suiteTestResult'] = suiteTestResult;
    data['isFatca'] = isFatca;
    data['fatcaInfo'] = fatcaInfo;
    data['isKnowledgeDone'] = isKnowledgeDone;
    data['knowledgeTestResult'] = knowledgeTestResult;
    return data;
  }
}
