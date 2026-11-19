package com.batch.android.e;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class m<T> extends ArrayList<T> {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23113b;

    public m(int i2) {
        this.f23113b = i2;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t) {
        if (size() >= this.f23113b) {
            remove(0);
        }
        return super.add(t);
    }
}
