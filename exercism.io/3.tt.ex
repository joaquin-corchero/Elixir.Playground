def rec_print(alist) do
	[head|tail] = alist
	IO.puts(head)
	rec_print2(tail)
	
	def rec_print2(ass) do
		rec_print(ass)
	end
	
	def rec_print2(:nil)do
	end
end