package com.google.android.gms.internal.measurement;

import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsl extends zzsn implements zzsf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileInputStream f30907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f30908c;

    public zzsl(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.f30907b = fileInputStream;
        this.f30908c = file;
    }

    @Override // com.google.android.gms.internal.measurement.zzsf
    public final File d0() {
        return this.f30908c;
    }
}
