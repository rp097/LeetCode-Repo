class Solution(object):
    def majorityElement(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        #Use Boyer Moore Majority Voting algorithm
        #nums = [2,2,1,1,1,2,2]

        candidate = 0
        count = 0
        for n in nums:
            if count==0:
                candidate = n
                count = count+1
            elif candidate == n:
                count = count+1
            elif candidate != n:
                count = count - 1

        return candidate 
        
        
        