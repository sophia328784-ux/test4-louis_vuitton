package com.google.android.gms.internal.measurement;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsj implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Closeable f30906b;

    public zzsj(InputStream inputStream) {
        this.f30906b = inputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Closeable closeable = this.f30906b;
        if (closeable != null) {
            closeable.close();
        }
    }
}
