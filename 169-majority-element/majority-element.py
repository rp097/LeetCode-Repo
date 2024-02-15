class Solution(object):
    def majorityElement(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        #Method 1 - Use Boyer Moore Majority Voting algorithm
        #nums = [2,2,1,1,1,2,2]

        # candidate = 0
        # count = 0
        # for n in nums:
        #     if count==0:
        #         candidate = n
        #         count = count+1
        #     elif candidate == n:
        #         count = count+1
        #     elif candidate != n:
        #         count = count - 1

        # return candidate 

        #Method 2 - using for loops. One test case fails due to time limit exceeding.
        # c = [0]*len(nums)
        # for i in range(0,len(nums),1):
        #     #nums[i] outer loop
        #     #initialise c[i] to 0
        #     c[i] = 0
        #     for j in range(0,len(nums),1):
        #         #to count number of occurences of nums[i]
        #         if nums[i] == nums[j]:
        #             c[i] = c[i]+1
        
        # for i in range(0,len(nums),1):
        #     if c[i] > len(nums)/2:
        #         return nums[i]      

        #Method 3 - using list methods to reduce time complexity
        d_nums = set(nums) #stores all distinct numbers in d_nums

        for x in d_nums:
            c = nums.count(x)
            if c > len(nums)/2:
                return x
        
        