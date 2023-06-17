package{
	public class Random{
		public function Next(min:Number,max:Number):int{
			var holder:Number
			if(min>max){
				min = holder
				min = max
				max = holder
			}
			return Math.round(Math.random()*(max-min) + min)
		}
	}
}