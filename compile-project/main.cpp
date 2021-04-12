#include <string>
using namespace std;

int main([[maybe_unused]] int argc, char **argv) {
    string firstCommand;
    string secondCommand;
    string thirdCommand;

    firstCommand.append("nasm -f macho64 ").append(argv[1]).append(".asm");
    secondCommand.append("ld -macosx_version_min 11.2 -lSystem -L$(xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -no_pie -o ").append(argv[1]).append(" ").append(argv[1]).append(".o");
    thirdCommand.append("rm ").append(argv[1]).append(".o");

    system(firstCommand.c_str());
    system(secondCommand.c_str());
    system(thirdCommand.c_str());

    return 0;
}
