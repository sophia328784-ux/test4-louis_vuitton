package com.perfectcorp.thirdparty.io.reactivex.internal.util;

import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f43147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f43148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43149c;

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.util.a$a, reason: collision with other inner class name */
    public interface InterfaceC0228a<T> extends Predicate<T> {
    }

    public a(int i2) {
        Object[] objArr = new Object[5];
        this.f43147a = objArr;
        this.f43148b = objArr;
    }

    public final void a(Object obj) {
        int i2 = this.f43149c;
        if (i2 == 4) {
            Object[] objArr = new Object[5];
            this.f43148b[4] = objArr;
            this.f43148b = objArr;
            i2 = 0;
        }
        this.f43148b[i2] = obj;
        this.f43149c = i2 + 1;
    }
}
