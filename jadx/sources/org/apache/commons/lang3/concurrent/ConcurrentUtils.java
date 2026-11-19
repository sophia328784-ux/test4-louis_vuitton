package org.apache.commons.lang3.concurrent;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ConcurrentUtils {
    public static void a(Throwable th) {
        boolean z = (th == null || (th instanceof Error) || (th instanceof RuntimeException)) ? false : true;
        Object[] objArr = {th};
        if (z) {
        } else {
            throw new IllegalArgumentException(Array.getLength(objArr) != 0 ? String.format("Not a checked exception: %s", objArr) : "Not a checked exception: %s");
        }
    }
}
