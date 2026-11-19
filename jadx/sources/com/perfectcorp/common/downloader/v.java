package com.perfectcorp.common.downloader;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
final class v implements Function<File, File> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ File f39259b;

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final /* synthetic */ Object apply(Object obj) {
        System.nanoTime();
        File file = this.f39259b;
        UnzipHelper.c((File) obj, file);
        return file;
    }
}
