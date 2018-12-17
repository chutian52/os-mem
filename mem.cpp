//
// Created by 陈孚千 on 2018/12/10.
//

#include <unistd.h>
#include <iostream>

int main(int argc,char **argv)
{
    long size = sysconf(_SC_PAGE_SIZE) * sysconf(_SC_PHYS_PAGES);
    std::cout << size << std:: endl;
    return 0;
}
