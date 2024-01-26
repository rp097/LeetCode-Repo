class Solution {
    public int findNumbers(int[] nums) {
        int count=0;
		
		for(int i=0;i<nums.length;i++)
		{
			int j=0;
			while(nums[i]!=0)
			{
				nums[i]=nums[i]/10;
				j++;
			}
			if(j%2==0)
				count++;
		}
		//System.out.println("Number of values with even digits:"+count);
        return count;    
    }
}