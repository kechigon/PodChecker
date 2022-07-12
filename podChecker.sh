#./podChecker.sh mountPath

#マウント先に書き込めるか

chroot $1
if [ $? -ne 0 ]
then
    # Return result that this pot can't chroot
    # In other words, can't get the shell.
fi

# chrootは、root権限でしか実行できない
# すなわち、chrootで奪ったシェルはroot権限で奪われる