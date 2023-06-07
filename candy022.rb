# 編號：CANDY-022
# 程式語言：Ruby
# 題目：實作 Queue 資料結構

class Queue
  def initialize
    @list = []
  end
  
  def enqueue(item = nil)
    if not item.nil?
      @list << item
    end
  end

  def dequeue
    @list.shift
  end

  def length
    @list.length
  end
end

queue = Queue.new
queue.enqueue(123)
queue.enqueue(456)
queue.enqueue
p queue.length # 印出 2

item = queue.dequeue # 取出元素
p item # 印出 123

queue.dequeue # 繼續取出元素
p queue.length # 印出 0