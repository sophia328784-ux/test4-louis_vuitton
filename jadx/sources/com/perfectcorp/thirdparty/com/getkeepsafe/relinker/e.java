package com.perfectcorp.thirdparty.com.getkeepsafe.relinker;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes3.dex */
final class e implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ String f42068a;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str.startsWith(this.f42068a);
    }
}
