package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.b21;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class av extends by {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Iterator f42252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ int f42253c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42252b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f42253c;
        Iterator it = this.f42252b;
        if (!it.hasNext()) {
            b21.x();
            return null;
        }
        Object[] objArr = new Object[i2];
        int i3 = 0;
        while (i3 < i2 && it.hasNext()) {
            objArr[i3] = it.next();
            i3++;
        }
        for (int i4 = i3; i4 < i2; i4++) {
            objArr[i4] = null;
        }
        List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
        return i3 == i2 ? listUnmodifiableList : listUnmodifiableList.subList(0, i3);
    }
}
