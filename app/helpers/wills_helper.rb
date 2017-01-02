module WillsHelper
	def funeral_preference_text(funeral)
		case funeral.preference 
		when "yes"
		"本人乃虔誠的#{funeral.religion}教徒，因此希望所有的儀式均跟從本人的宗教習俗進行。" 
		when "no"
		 '本人不希望進行任何形式的葬禮／追思會.'
		when "family"
		 '本人希望葬禮／追思會的安排全由家人決定.'
		end
	end

	def body_arrangement_preference(funeral)
		case funeral.body_arrangement
  		when "fire"
	  		'本人期待遺囑執行人可以安排把我的遺體火化。'
  		when "burial" 
	  		'本人期待遺囑執行人可以安排把我的遺體土葬。'
  		when "donation"
	  		'本人期待遺囑執行人可以安排把我的遺體捐贈用於科學研究。'
  		when "family" 
			'本人希望由家人安排我的遺體。'
		end
	end

	def burial_site(funeral)
		case funeral.burial_arrangement
		when "tree"
			'本人期望把我的遺體進行樹葬。'
		when "sea"
			'本人希望進行海葬，讓我的遺體可以在大海長眠。'
		when "cemetery"
			'本人希望長眠於合適的靈骨塔／墓園地。'
		when "family"
			'本人希望我的長眠地由家人決定。'
		end
	end
end
