package com.perfectcorp.common.logger;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes3.dex */
final class i implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ long f39294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ long f39295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ a f39296c;

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        long jLastModified = this.f39294a - file.lastModified();
        return jLastModified > 0 && jLastModified > this.f39295b;
    }
}
