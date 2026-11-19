package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class zzaeh extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30416b;

    public zzaeh(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public zzaeh(String str) {
        super(str);
    }

    public zzaeh(String str, IOException iOException) {
        super("Unable to parse map entry.", iOException);
    }
}
