class Solution(object):
    def findMedianSortedArrays(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: float
        """
        nums3 = nums1 + nums2
        nums3.sort()
        n = len(nums3)
        
        if n%2 == 0:
            mid = n//2
            return ((nums3[mid-1]+float(nums3[mid]))/2)

        else:
            mid = n//2 
            return nums3[mid]