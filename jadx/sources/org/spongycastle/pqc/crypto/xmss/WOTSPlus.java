package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WOTSPlusParameters f78162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KeyedHashFunctions f78163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f78164c;
    public byte[] d;

    public WOTSPlus(WOTSPlusParameters wOTSPlusParameters) {
        this.f78162a = wOTSPlusParameters;
        int i2 = wOTSPlusParameters.f78169c;
        this.f78163b = new KeyedHashFunctions(i2, wOTSPlusParameters.f78168b);
        this.f78164c = new byte[i2];
        this.d = new byte[i2];
    }

    public final byte[] a(byte[] bArr, int i2, OTSHashAddress oTSHashAddress) {
        WOTSPlusParameters wOTSPlusParameters = this.f78162a;
        int i3 = wOTSPlusParameters.f78169c;
        if (bArr.length != i3) {
            md.n(n00.m(i3, "startHash needs to be ", "bytes"));
            return null;
        }
        oTSHashAddress.a();
        if (i2 > wOTSPlusParameters.d - 1) {
            md.n("max chain length must not be greater than w");
            return null;
        }
        if (i2 == 0) {
            return bArr;
        }
        byte[] bArrA = a(bArr, i2 - 1, oTSHashAddress);
        OTSHashAddress.Builder builder = new OTSHashAddress.Builder();
        builder.f78176b = oTSHashAddress.f78172a;
        builder.f78177c = oTSHashAddress.f78173b;
        builder.f78160e = oTSHashAddress.f78158e;
        builder.f78161f = oTSHashAddress.f78159f;
        builder.g = i2 - 1;
        builder.d = 0;
        OTSHashAddress oTSHashAddress2 = new OTSHashAddress(builder);
        byte[] bArr2 = this.d;
        byte[] bArrA2 = oTSHashAddress2.a();
        KeyedHashFunctions keyedHashFunctions = this.f78163b;
        byte[] bArrA3 = keyedHashFunctions.a(bArr2, bArrA2);
        OTSHashAddress.Builder builder2 = new OTSHashAddress.Builder();
        builder2.f78176b = oTSHashAddress2.f78172a;
        builder2.f78177c = oTSHashAddress2.f78173b;
        builder2.f78160e = oTSHashAddress2.f78158e;
        builder2.f78161f = oTSHashAddress2.f78159f;
        builder2.g = oTSHashAddress2.g;
        builder2.d = 1;
        byte[] bArrA4 = keyedHashFunctions.a(this.d, new OTSHashAddress(builder2).a());
        byte[] bArr3 = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr3[i4] = (byte) (bArrA[i4] ^ bArrA4[i4]);
        }
        int length = bArrA3.length;
        int i5 = keyedHashFunctions.f78153b;
        if (length != i5) {
            md.n("wrong key length");
            return null;
        }
        if (i3 == i5) {
            return keyedHashFunctions.b(0, bArrA3, bArr3);
        }
        md.n("wrong in length");
        return null;
    }

    public final WOTSPlusPublicKeyParameters b(OTSHashAddress oTSHashAddress) {
        WOTSPlusParameters wOTSPlusParameters = this.f78162a;
        int i2 = wOTSPlusParameters.f78170e;
        byte[][] bArr = new byte[i2][];
        for (int i3 = 0; i3 < i2; i3++) {
            OTSHashAddress.Builder builder = new OTSHashAddress.Builder();
            builder.f78176b = oTSHashAddress.f78172a;
            builder.f78177c = oTSHashAddress.f78173b;
            builder.f78160e = oTSHashAddress.f78158e;
            builder.f78161f = i3;
            builder.g = oTSHashAddress.g;
            builder.d = oTSHashAddress.d;
            oTSHashAddress = new OTSHashAddress(builder);
            if (i3 < 0 || i3 >= i2) {
                md.n("index out of bounds");
                return null;
            }
            bArr[i3] = a(this.f78163b.a(this.f78164c, XMSSUtil.g(i3, 32)), wOTSPlusParameters.d - 1, oTSHashAddress);
        }
        return new WOTSPlusPublicKeyParameters(wOTSPlusParameters, bArr);
    }

    public final byte[] c(byte[] bArr, OTSHashAddress oTSHashAddress) {
        OTSHashAddress.Builder builder = new OTSHashAddress.Builder();
        builder.f78176b = oTSHashAddress.f78172a;
        builder.f78177c = oTSHashAddress.f78173b;
        builder.f78160e = oTSHashAddress.f78158e;
        return this.f78163b.a(bArr, new OTSHashAddress(builder).a());
    }

    public final void d(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i2 = this.f78162a.f78169c;
        if (length != i2) {
            md.n("size of secretKeySeed needs to be equal to size of digest");
            return;
        }
        if (bArr2 == null) {
            r81.d("publicSeed == null");
        } else if (bArr2.length != i2) {
            md.n("size of publicSeed needs to be equal to size of digest");
        } else {
            this.f78164c = bArr;
            this.d = bArr2;
        }
    }
}
