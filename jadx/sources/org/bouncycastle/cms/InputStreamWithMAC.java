package org.bouncycastle.cms;

import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class InputStreamWithMAC extends InputStream {
    private final InputStream base;
    private boolean baseFinished = false;
    private int index = 0;
    private byte[] mac;
    private MACProvider macProvider;

    public InputStreamWithMAC(InputStream inputStream, MACProvider mACProvider) {
        this.base = inputStream;
        this.macProvider = mACProvider;
    }

    public byte[] getMAC() {
        if (this.baseFinished) {
            return Arrays.clone(this.mac);
        }
        md.k("input stream not fully processed");
        return null;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (bArr == null) {
            r81.d("input array is null");
            return 0;
        }
        if (i2 < 0 || bArr.length < i2 + i3) {
            az.v(fc.f(i2, i3, "invalid off(", ") and len(", ")"));
            return 0;
        }
        if (this.baseFinished) {
            int i4 = this.index;
            byte[] bArr2 = this.mac;
            if (i4 >= bArr2.length) {
                return -1;
            }
            if (i3 >= bArr2.length - i4) {
                System.arraycopy(bArr2, i4, bArr, i2, bArr2.length - i4);
                byte[] bArr3 = this.mac;
                int length = bArr3.length - this.index;
                this.index = bArr3.length;
                return length;
            }
            System.arraycopy(bArr2, i4, bArr, i2, i3);
        } else {
            int i5 = this.base.read(bArr, i2, i3);
            if (i5 >= 0) {
                return i5;
            }
            this.baseFinished = true;
            MACProvider mACProvider = this.macProvider;
            if (mACProvider != null) {
                mACProvider.init();
                this.mac = this.macProvider.getMAC();
            }
            byte[] bArr4 = this.mac;
            if (i3 >= bArr4.length) {
                System.arraycopy(bArr4, 0, bArr, i2, bArr4.length);
                byte[] bArr5 = this.mac;
                this.index = bArr5.length;
                return bArr5.length;
            }
            System.arraycopy(bArr4, 0, bArr, i2, i3);
        }
        this.index += i3;
        return i3;
    }

    public InputStreamWithMAC(InputStream inputStream, byte[] bArr) {
        this.base = inputStream;
        this.mac = bArr;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte b2;
        if (this.baseFinished) {
            int i2 = this.index;
            byte[] bArr = this.mac;
            if (i2 >= bArr.length) {
                return -1;
            }
            this.index = i2 + 1;
            b2 = bArr[i2];
        } else {
            int i3 = this.base.read();
            if (i3 >= 0) {
                return i3;
            }
            this.baseFinished = true;
            MACProvider mACProvider = this.macProvider;
            if (mACProvider != null) {
                mACProvider.init();
                this.mac = this.macProvider.getMAC();
            }
            byte[] bArr2 = this.mac;
            int i4 = this.index;
            this.index = i4 + 1;
            b2 = bArr2[i4];
        }
        return b2 & 255;
    }
}
