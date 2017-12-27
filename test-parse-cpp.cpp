int findMinFree1(vector<int> nums) {
    int i, n = nums.size();
    for (i = 0; i < n; ++i)
        while (nums[i] <= n && nums[i] != i + 1)
            swap(nums[i], nums[nums[i] - 1]);
    for (i = 0; i < n; ++i)
        if (i + 1 != nums[i])
            return i + 1;
    return n + 1;
}
