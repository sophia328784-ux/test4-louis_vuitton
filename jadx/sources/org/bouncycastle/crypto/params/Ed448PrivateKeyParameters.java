package org.bouncycastle.crypto.params;

import defpackage.d20;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.rfc8032.Ed448;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.io.Streams;

/* JADX INFO: loaded from: classes5.dex */
public final class Ed448PrivateKeyParameters extends AsymmetricKeyParameter {
    public static final int KEY_SIZE = 57;
    public static final int SIGNATURE_SIZE = 114;
    private Ed448PublicKeyParameters cachedPublicKey;
    private final byte[] data;

    public Ed448PrivateKeyParameters(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[57];
        this.data = bArr;
        if (57 == Streams.readFully(inputStream, bArr)) {
            return;
        }
        d20.g("EOF encountered in middle of Ed448 private key");
        throw null;
    }

    private static byte[] validate(byte[] bArr) {
        if (bArr.length == 57) {
            return bArr;
        }
        md.n("'buf' must have length 57");
        return null;
    }

    public void encode(byte[] bArr, int i2) {
        System.arraycopy(this.data, 0, bArr, i2, 57);
    }

    public Ed448PublicKeyParameters generatePublicKey() {
        Ed448PublicKeyParameters ed448PublicKeyParameters;
        synchronized (this.data) {
            try {
                if (this.cachedPublicKey == null) {
                    this.cachedPublicKey = new Ed448PublicKeyParameters(Ed448.generatePublicKey(this.data, 0));
                }
                ed448PublicKeyParameters = this.cachedPublicKey;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ed448PublicKeyParameters;
    }

    public byte[] getEncoded() {
        return Arrays.clone(this.data);
    }

    public void sign(int i2, byte[] bArr, byte[] bArr2, int i3, int i4, byte[] bArr3, int i5) {
        byte[] bArr4 = new byte[57];
        generatePublicKey().encode(bArr4, 0);
        if (i2 == 0) {
            if (bArr == null) {
                r81.d("'ctx' cannot be null");
                return;
            } else if (bArr.length <= 255) {
                Ed448.sign(this.data, 0, bArr4, 0, bArr, bArr2, i3, i4, bArr3, i5);
                return;
            } else {
                md.n("ctx");
                return;
            }
        }
        if (i2 != 1) {
            md.n("algorithm");
            return;
        }
        if (bArr == null) {
            r81.d("'ctx' cannot be null");
            return;
        }
        if (bArr.length > 255) {
            md.n("ctx");
        } else if (64 == i4) {
            Ed448.signPrehash(this.data, 0, bArr4, 0, bArr, bArr2, i3, bArr3, i5);
        } else {
            md.n("msgLen");
        }
    }

    public Ed448PrivateKeyParameters(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[57];
        this.data = bArr;
        Ed448.generatePrivateKey(secureRandom, bArr);
    }

    public Ed448PrivateKeyParameters(byte[] bArr) {
        this(validate(bArr), 0);
    }

    public Ed448PrivateKeyParameters(byte[] bArr, int i2) {
        super(true);
        byte[] bArr2 = new byte[57];
        this.data = bArr2;
        System.arraycopy(bArr, i2, bArr2, 0, 57);
    }

    public void sign(int i2, Ed448PublicKeyParameters ed448PublicKeyParameters, byte[] bArr, byte[] bArr2, int i3, int i4, byte[] bArr3, int i5) {
        sign(i2, bArr, bArr2, i3, i4, bArr3, i5);
    }
}
