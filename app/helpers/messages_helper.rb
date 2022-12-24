module MessagesHelper
  # Needs to match number of sentences
  def random_number
    rand(10)
  end

  # 10 sentences total as of right now...
  def sentence_storage
    sentences = [
      {
        id: 1,
        sentence: "1 + 1",
        answer: "2"
      },
      {
        id: 2,
        sentence: "3 + 7",
        answer: "10"
      },
      {
        id: 3,
        sentence: "2 + 2",
        answer: "4"
      },
      {
        id: 4,
        sentence: "5 + 3",
        answer: "8"
      },
      {
        id: 5,
        sentence: "1 + 3",
        answer: "4"
      },
      {
        id: 6,
        sentence: "4 + 2",
        answer: "6"
      },
      {
        id: 7,
        sentence: "8 + 1",
        answer: "9"
      },
      {
        id: 8,
        sentence: "1 + 5",
        answer: "6"
      },
      {
        id: 9,
        sentence: "2 + 5",
        answer: "7"
      },
      {
        id: 10,
        sentence: "7 + 2",
        answer: "9"
      }
    ]
    sentences
  end

  def sentence_generator(input)
    array_key = sentence_storage[input]
    array_key[:sentence]
  end

  def answer_check(input)
    answer_key = sentence_storage[input]
    answer_key[:answer]
  end
end
