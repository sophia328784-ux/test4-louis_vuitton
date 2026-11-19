package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.DataFormatException;

/* JADX INFO: loaded from: classes2.dex */
final class zzmr extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzmu f30745b;

    public zzmr(zzmu zzmuVar) {
        this.f30745b = zzmuVar;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        zzmu zzmuVar = this.f30745b;
        try {
            int iInflate = zzmuVar.f30747b.inflate(bArr, i2, i3);
            if (iInflate > 0) {
                return iInflate;
            }
            if (i3 == 0) {
                return 0;
            }
            if (zzmuVar.f30747b.getRemaining() == 0) {
                return -1;
            }
            int remaining = zzmuVar.f30747b.getRemaining();
            StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 70 + String.valueOf(remaining).length());
            sb.append("Read no bytes (requested up to ");
            sb.append(i3);
            sb.append(") but did not reach end of stream, had ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        } catch (DataFormatException e2) {
            throw new IOException(e2);
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0];
    }
}
