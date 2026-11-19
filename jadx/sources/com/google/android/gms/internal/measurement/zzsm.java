package com.google.android.gms.internal.measurement;

import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsm extends zzso implements zzsf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileOutputStream f30909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f30910c;

    public zzsm(FileOutputStream fileOutputStream, File file) {
        super(fileOutputStream);
        this.f30909b = fileOutputStream;
        this.f30910c = file;
    }

    @Override // com.google.android.gms.internal.measurement.zzsf
    public final File d0() {
        return this.f30910c;
    }
}
