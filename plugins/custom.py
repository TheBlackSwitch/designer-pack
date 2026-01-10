from beet import Context




# Runs during the build
def main(ctx: Context):
    print("Hello world from pre-compile!")

def finalyze(ctx: Context):
    print("Hello world from post-compile!")