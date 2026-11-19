package com.google.android.gms.common.data;

import com.google.android.gms.common.api.Releasable;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public interface DataBuffer<T> extends Iterable<T>, Releasable, Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    @Override // com.google.android.gms.common.api.Releasable
    default void release() {
        close();
    }
}
