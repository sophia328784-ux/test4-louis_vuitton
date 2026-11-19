package com.google.android.gms.internal.measurement;

import defpackage.pq0;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class zzacy extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    public zzacy(long j2, long j3, int i2, IndexOutOfBoundsException indexOutOfBoundsException) {
        Locale locale = Locale.US;
        StringBuilder sbQ = pq0.q(j2, "Pos: ", ", limit: ");
        sbQ.append(j3);
        sbQ.append(", len: ");
        sbQ.append(i2);
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(sbQ.toString()), indexOutOfBoundsException);
    }

    public zzacy(IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
    }
}
