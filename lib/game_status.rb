# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  for combo in WIN_COMBINATIONS
    windex_1=combo[0]
    windex_2=combo[1]
    windex_3=combo[2]
    if(board[windex_1]==board[windex_2] and board[windex_2]==board[windex_3])
      return combo
    else
      false
    end
  end
end
