package com.appsflyer.internal;

import defpackage.d21;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1qSDK {
    final List<AFc1pSDK> d;

    public AFc1qSDK(List<AFc1pSDK> list) {
        list.getClass();
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AFc1qSDK) && Intrinsics.c(this.d, ((AFc1qSDK) obj).d);
    }

    public final int hashCode() {
        return this.d.hashCode();
    }

    public final String toString() {
        return d21.o("StorageConfig(typeEntries=", ")", this.d);
    }
}
