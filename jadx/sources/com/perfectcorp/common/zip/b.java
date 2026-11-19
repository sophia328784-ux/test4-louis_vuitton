package com.perfectcorp.common.zip;

import com.perfectcorp.thirdparty.com.google.common.hash.Hashing;
import com.perfectcorp.thirdparty.com.google.common.io.Files;
import java.io.File;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes3.dex */
final class b implements com.perfectcorp.common.io.a.InterfaceC0120a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ long f39458a;

    @Override // com.perfectcorp.common.io.a.InterfaceC0120a
    public final void a(File file) throws ZipException {
        if (Files.c(file, Hashing.a()).c() != ((int) this.f39458a)) {
            throw new ZipException("CRC mismatch. The disk is bad.");
        }
    }
}
