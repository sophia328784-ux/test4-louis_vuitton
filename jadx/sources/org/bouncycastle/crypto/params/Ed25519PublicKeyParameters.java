package org.bouncycastle.crypto.params;

import defpackage.d20;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.math.ec.rfc8032.Ed25519;
import org.bouncycastle.util.io.Streams;

/* JADX INFO: loaded from: classes5.dex */
public final class Ed25519PublicKeyParameters extends AsymmetricKeyParameter {
    public static final int KEY_SIZE = 32;
    private final Ed25519.PublicPoint publicPoint;

    public Ed25519PublicKeyParameters(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[32];
        if (32 == Streams.readFully(inputStream, bArr)) {
            this.publicPoint = parse(bArr, 0);
        } else {
            d20.g("EOF encountered in middle of Ed25519 public key");
            throw null;
        }
    }

    private static Ed25519.PublicPoint parse(byte[] bArr, int i2) {
        Ed25519.PublicPoint publicPointValidatePublicKeyPartialExport = Ed25519.validatePublicKeyPartialExport(bArr, i2);
        if (publicPointValidatePublicKeyPartialExport != null) {
            return publicPointValidatePublicKeyPartialExport;
        }
        md.n("invalid public key");
        return null;
    }

    private static byte[] validate(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        md.n("'buf' must have length 32");
        return null;
    }

    public void encode(byte[] bArr, int i2) {
        Ed25519.encodePublicPoint(this.publicPoint, bArr, i2);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[32];
        encode(bArr, 0);
        return bArr;
    }

    public boolean verify(int i2, byte[] bArr, byte[] bArr2, int i3, int i4, byte[] bArr3, int i5) {
        String str;
        if (i2 == 0) {
            if (bArr == null) {
                return Ed25519.verify(bArr3, i5, this.publicPoint, bArr2, i3, i4);
            }
            md.n("ctx");
            return false;
        }
        if (i2 == 1) {
            if (bArr == null) {
                r81.d("'ctx' cannot be null");
                return false;
            }
            if (bArr.length <= 255) {
                return Ed25519.verify(bArr3, i5, this.publicPoint, bArr, bArr2, i3, i4);
            }
            md.n("ctx");
            return false;
        }
        if (i2 != 2) {
            str = "algorithm";
        } else {
            if (bArr == null) {
                r81.d("'ctx' cannot be null");
                return false;
            }
            if (bArr.length > 255) {
                md.n("ctx");
                return false;
            }
            if (64 == i4) {
                return Ed25519.verifyPrehash(bArr3, i5, this.publicPoint, bArr, bArr2, i3);
            }
            str = "msgLen";
        }
        md.n(str);
        return false;
    }

    public Ed25519PublicKeyParameters(Ed25519.PublicPoint publicPoint) {
        super(false);
        if (publicPoint != null) {
            this.publicPoint = publicPoint;
        } else {
            r81.d("'publicPoint' cannot be null");
            throw null;
        }
    }

    public Ed25519PublicKeyParameters(byte[] bArr) {
        this(validate(bArr), 0);
    }

    public Ed25519PublicKeyParameters(byte[] bArr, int i2) {
        super(false);
        this.publicPoint = parse(bArr, i2);
    }
}
