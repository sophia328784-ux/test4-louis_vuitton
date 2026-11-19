package com.google.common.collect;

/* JADX INFO: loaded from: classes2.dex */
abstract class Hashing {
    public static int a(int i2) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i2) * (-862048943)), 15)) * 461845907);
    }

    public static int b(Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }
}
