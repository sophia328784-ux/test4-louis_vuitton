package com.perfectcorp.perfectlib.hc.database.ymk;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes3.dex */
final class a implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ String f40276a;

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return file.getName().startsWith(this.f40276a);
    }
}
