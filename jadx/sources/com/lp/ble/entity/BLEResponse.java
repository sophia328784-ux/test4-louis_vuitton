package com.lp.ble.entity;

/* JADX INFO: loaded from: classes2.dex */
public class BLEResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f36353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f36355c;
    public int d;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f36356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f36357b;

        public Builder(int i2, int i3, int i4) {
            this.f36356a = i3;
            this.f36357b = i4;
        }

        public final BLEResponse a() {
            BLEResponse bLEResponse = new BLEResponse();
            bLEResponse.d = 0;
            bLEResponse.f36353a = this.f36356a;
            int i2 = this.f36357b;
            bLEResponse.f36354b = i2;
            bLEResponse.f36355c = new byte[i2];
            return bLEResponse;
        }
    }

    public final String a() {
        if (this.f36354b == this.d) {
            return new String(this.f36355c);
        }
        return null;
    }

    public final void b(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int length = bArr.length;
        int i2 = this.d;
        int i3 = i2 + length;
        byte[] bArr2 = this.f36355c;
        if (i3 > bArr2.length) {
            return;
        }
        System.arraycopy(bArr, 0, bArr2, i2, length);
        this.d += length;
    }
}
