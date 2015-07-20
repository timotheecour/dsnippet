void fun0()
{
}

alias Fun = void function(); //same with delegate()

void fun4()
{
    Fun[TypeInfo] funs;
    funs[typeid(int)] = &fun0; //same with s/&fun0/(){}/
}
