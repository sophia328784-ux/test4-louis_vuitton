package com.google.android.gms.internal.measurement;

import java.io.Closeable;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmu implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Inflater f30747b = new Inflater(true);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f30747b.end();
    }
}
