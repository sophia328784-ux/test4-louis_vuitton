package org.spongycastle.asn1;

import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
abstract class LimitedInputStream extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputStream f77773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77774c;

    public LimitedInputStream(InputStream inputStream, int i2) {
        this.f77773b = inputStream;
        this.f77774c = i2;
    }

    public int h() {
        return this.f77774c;
    }

    public final void j() {
        InputStream inputStream = this.f77773b;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            IndefiniteLengthInputStream indefiniteLengthInputStream = (IndefiniteLengthInputStream) inputStream;
            indefiniteLengthInputStream.g = true;
            indefiniteLengthInputStream.k();
        }
    }
}
