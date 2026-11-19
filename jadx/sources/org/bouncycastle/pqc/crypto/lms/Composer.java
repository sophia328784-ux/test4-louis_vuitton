package org.bouncycastle.pqc.crypto.lms;

import defpackage.r81;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.util.Encodable;

/* JADX INFO: loaded from: classes5.dex */
public class Composer {
    private final ByteArrayOutputStream bos = new ByteArrayOutputStream();

    private Composer() {
    }

    public static Composer compose() {
        return new Composer();
    }

    public Composer bool(boolean z) {
        this.bos.write(z ? 1 : 0);
        return this;
    }

    public byte[] build() {
        return this.bos.toByteArray();
    }

    public Composer bytes(Encodable[] encodableArr) {
        try {
            for (Encodable encodable : encodableArr) {
                this.bos.write(encodable.getEncoded());
            }
            return this;
        } catch (Exception e2) {
            r81.g(e2.getMessage(), e2);
            return null;
        }
    }

    public Composer pad(int i2, int i3) {
        while (i3 >= 0) {
            try {
                this.bos.write(i2);
                i3--;
            } catch (Exception e2) {
                r81.g(e2.getMessage(), e2);
                return null;
            }
        }
        return this;
    }

    public Composer padUntil(int i2, int i3) {
        while (this.bos.size() < i3) {
            this.bos.write(i2);
        }
        return this;
    }

    public Composer u16str(int i2) {
        int i3 = i2 & 65535;
        this.bos.write((byte) (i3 >>> 8));
        this.bos.write((byte) i3);
        return this;
    }

    public Composer u32str(int i2) {
        this.bos.write((byte) (i2 >>> 24));
        this.bos.write((byte) (i2 >>> 16));
        this.bos.write((byte) (i2 >>> 8));
        this.bos.write((byte) i2);
        return this;
    }

    public Composer u64str(long j2) {
        u32str((int) (j2 >>> 32));
        u32str((int) j2);
        return this;
    }

    public Composer bytes(byte[] bArr) {
        try {
            this.bos.write(bArr);
            return this;
        } catch (Exception e2) {
            r81.g(e2.getMessage(), e2);
            return null;
        }
    }

    public Composer bytes(byte[] bArr, int i2, int i3) {
        try {
            this.bos.write(bArr, i2, i3);
            return this;
        } catch (Exception e2) {
            r81.g(e2.getMessage(), e2);
            return null;
        }
    }

    public Composer bytes(Encodable encodable) {
        try {
            this.bos.write(encodable.getEncoded());
            return this;
        } catch (Exception e2) {
            r81.g(e2.getMessage(), e2);
            return null;
        }
    }

    public Composer bytes(byte[][] bArr) {
        try {
            for (byte[] bArr2 : bArr) {
                this.bos.write(bArr2);
            }
            return this;
        } catch (Exception e2) {
            r81.g(e2.getMessage(), e2);
            return null;
        }
    }

    public Composer bytes(byte[][] bArr, int i2, int i3) {
        while (i2 != i3) {
            try {
                this.bos.write(bArr[i2]);
                i2++;
            } catch (Exception e2) {
                r81.g(e2.getMessage(), e2);
                return null;
            }
        }
        return this;
    }
}
