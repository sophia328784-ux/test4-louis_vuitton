package com.perfectcorp.thirdparty.com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
final class aj<K, V> extends i<K, V> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f42231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f42232c;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f42231b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f42232c;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.i, java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
