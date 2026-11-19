package org.bouncycastle.crypto.params;

import defpackage.d20;
import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.io.Streams;

/* JADX INFO: loaded from: classes5.dex */
public final class X25519PublicKeyParameters extends AsymmetricKeyParameter {
    public static final int KEY_SIZE = 32;
    private final byte[] data;

    public X25519PublicKeyParameters(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[32];
        this.data = bArr;
        if (32 == Streams.readFully(inputStream, bArr)) {
            return;
        }
        d20.g("EOF encountered in middle of X25519 public key");
        throw null;
    }

    private static byte[] validate(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        md.n("'buf' must have length 32");
        return null;
    }

    public void encode(byte[] bArr, int i2) {
        System.arraycopy(this.data, 0, bArr, i2, 32);
    }

    public byte[] getEncoded() {
        return Arrays.clone(this.data);
    }

    public X25519PublicKeyParameters(byte[] bArr) {
        this(validate(bArr), 0);
    }

    public X25519PublicKeyParameters(byte[] bArr, int i2) {
        super(false);
        byte[] bArr2 = new byte[32];
        this.data = bArr2;
        System.arraycopy(bArr, i2, bArr2, 0, 32);
    }
}
