

int main()
{
    std::vector<int> vec{1, 2, 3, 4, 5};

    std::span<int> sp(vec);

    for (auto val : sp)
    {
        std::cout << std::format("val = {}\n", val);
    }


}