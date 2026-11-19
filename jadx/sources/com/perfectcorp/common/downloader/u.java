package com.perfectcorp.common.downloader;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
final class u implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ZipInputStream f39258b;

    public u(ZipInputStream zipInputStream) {
        this.f39258b = zipInputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f39258b.closeEntry();
    }
}
