package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.functions.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public class AppendOnlyLinkedArrayList<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f71114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f71115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f71116c;
    public int d;

    public interface NonThrowingPredicate<T> extends Predicate<T> {
    }

    public AppendOnlyLinkedArrayList(int i2) {
        this.f71114a = i2;
        Object[] objArr = new Object[i2 + 1];
        this.f71115b = objArr;
        this.f71116c = objArr;
    }

    public final void a(Object obj) {
        int i2 = this.d;
        int i3 = this.f71114a;
        if (i2 == i3) {
            Object[] objArr = new Object[i3 + 1];
            this.f71116c[i3] = objArr;
            this.f71116c = objArr;
            i2 = 0;
        }
        this.f71116c[i2] = obj;
        this.d = i2 + 1;
    }
}
