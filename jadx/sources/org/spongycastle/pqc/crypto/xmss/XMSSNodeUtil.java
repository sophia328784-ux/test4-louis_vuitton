package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes5.dex */
abstract class XMSSNodeUtil {
    public static XMSSNode a(WOTSPlus wOTSPlus, WOTSPlusPublicKeyParameters wOTSPlusPublicKeyParameters, LTreeAddress lTreeAddress) {
        double d;
        int i2;
        int i3;
        int i4;
        long j2;
        int i5;
        int iCeil = wOTSPlus.f78162a.f78170e;
        byte[][] bArrC = XMSSUtil.c(wOTSPlusPublicKeyParameters.f78171a);
        XMSSNode[] xMSSNodeArr = new XMSSNode[bArrC.length];
        for (int i6 = 0; i6 < bArrC.length; i6++) {
            xMSSNodeArr[i6] = new XMSSNode(0, bArrC[i6]);
        }
        LTreeAddress.Builder builder = new LTreeAddress.Builder();
        builder.f78176b = lTreeAddress.f78172a;
        builder.f78177c = lTreeAddress.f78173b;
        builder.f78156e = lTreeAddress.f78154e;
        builder.f78157f = 0;
        builder.g = lTreeAddress.g;
        builder.d = lTreeAddress.d;
        LTreeAddress lTreeAddress2 = new LTreeAddress(builder);
        while (iCeil > 1) {
            int i7 = 0;
            while (true) {
                d = iCeil / 2;
                int iFloor = (int) Math.floor(d);
                i2 = lTreeAddress2.d;
                i3 = lTreeAddress2.f78155f;
                i4 = lTreeAddress2.f78154e;
                j2 = lTreeAddress2.f78173b;
                i5 = lTreeAddress2.f78172a;
                if (i7 >= iFloor) {
                    break;
                }
                LTreeAddress.Builder builder2 = new LTreeAddress.Builder();
                builder2.f78176b = i5;
                builder2.f78177c = j2;
                builder2.f78156e = i4;
                builder2.f78157f = i3;
                builder2.g = i7;
                builder2.d = i2;
                LTreeAddress lTreeAddress3 = new LTreeAddress(builder2);
                int i8 = i7 * 2;
                xMSSNodeArr[i7] = b(wOTSPlus, xMSSNodeArr[i8], xMSSNodeArr[i8 + 1], lTreeAddress3);
                i7++;
                lTreeAddress2 = lTreeAddress3;
            }
            if (iCeil % 2 == 1) {
                xMSSNodeArr[(int) Math.floor(d)] = xMSSNodeArr[iCeil - 1];
            }
            iCeil = (int) Math.ceil(((double) iCeil) / 2.0d);
            LTreeAddress.Builder builder3 = new LTreeAddress.Builder();
            builder3.f78176b = i5;
            builder3.f78177c = j2;
            builder3.f78156e = i4;
            builder3.f78157f = i3 + 1;
            builder3.g = lTreeAddress2.g;
            builder3.d = i2;
            lTreeAddress2 = new LTreeAddress(builder3);
        }
        return xMSSNodeArr[0];
    }

    public static XMSSNode b(WOTSPlus wOTSPlus, XMSSNode xMSSNode, XMSSNode xMSSNode2, XMSSAddress xMSSAddress) {
        XMSSAddress hashTreeAddress = xMSSAddress;
        if (xMSSNode == null) {
            r81.d("left == null");
            return null;
        }
        int i2 = xMSSNode.f78196b;
        if (xMSSNode2 == null) {
            r81.d("right == null");
            return null;
        }
        if (i2 != xMSSNode2.f78196b) {
            md.k("height of both nodes must be equal");
            return null;
        }
        byte[] bArr = wOTSPlus.d;
        KeyedHashFunctions keyedHashFunctions = wOTSPlus.f78163b;
        byte[] bArrB = XMSSUtil.b(bArr);
        if (hashTreeAddress instanceof LTreeAddress) {
            LTreeAddress lTreeAddress = (LTreeAddress) hashTreeAddress;
            LTreeAddress.Builder builder = new LTreeAddress.Builder();
            builder.f78176b = lTreeAddress.f78172a;
            builder.f78177c = lTreeAddress.f78173b;
            builder.f78156e = lTreeAddress.f78154e;
            builder.f78157f = lTreeAddress.f78155f;
            builder.g = lTreeAddress.g;
            builder.d = 0;
            hashTreeAddress = new LTreeAddress(builder);
        } else if (hashTreeAddress instanceof HashTreeAddress) {
            HashTreeAddress hashTreeAddress2 = (HashTreeAddress) hashTreeAddress;
            HashTreeAddress.Builder builder2 = new HashTreeAddress.Builder();
            builder2.f78176b = hashTreeAddress2.f78172a;
            builder2.f78177c = hashTreeAddress2.f78173b;
            builder2.f78150e = hashTreeAddress2.f78148e;
            builder2.f78151f = hashTreeAddress2.f78149f;
            builder2.d = 0;
            hashTreeAddress = new HashTreeAddress(builder2);
        }
        byte[] bArrA = keyedHashFunctions.a(bArrB, hashTreeAddress.a());
        if (hashTreeAddress instanceof LTreeAddress) {
            LTreeAddress lTreeAddress2 = (LTreeAddress) hashTreeAddress;
            LTreeAddress.Builder builder3 = new LTreeAddress.Builder();
            builder3.f78176b = lTreeAddress2.f78172a;
            builder3.f78177c = lTreeAddress2.f78173b;
            builder3.f78156e = lTreeAddress2.f78154e;
            builder3.f78157f = lTreeAddress2.f78155f;
            builder3.g = lTreeAddress2.g;
            builder3.d = 1;
            hashTreeAddress = new LTreeAddress(builder3);
        } else if (hashTreeAddress instanceof HashTreeAddress) {
            HashTreeAddress hashTreeAddress3 = (HashTreeAddress) hashTreeAddress;
            HashTreeAddress.Builder builder4 = new HashTreeAddress.Builder();
            builder4.f78176b = hashTreeAddress3.f78172a;
            builder4.f78177c = hashTreeAddress3.f78173b;
            builder4.f78150e = hashTreeAddress3.f78148e;
            builder4.f78151f = hashTreeAddress3.f78149f;
            builder4.d = 1;
            hashTreeAddress = new HashTreeAddress(builder4);
        }
        byte[] bArrA2 = keyedHashFunctions.a(bArrB, hashTreeAddress.a());
        if (hashTreeAddress instanceof LTreeAddress) {
            LTreeAddress lTreeAddress3 = (LTreeAddress) hashTreeAddress;
            LTreeAddress.Builder builder5 = new LTreeAddress.Builder();
            builder5.f78176b = lTreeAddress3.f78172a;
            builder5.f78177c = lTreeAddress3.f78173b;
            builder5.f78156e = lTreeAddress3.f78154e;
            builder5.f78157f = lTreeAddress3.f78155f;
            builder5.g = lTreeAddress3.g;
            builder5.d = 2;
            hashTreeAddress = new LTreeAddress(builder5);
        } else if (hashTreeAddress instanceof HashTreeAddress) {
            HashTreeAddress hashTreeAddress4 = (HashTreeAddress) hashTreeAddress;
            HashTreeAddress.Builder builder6 = new HashTreeAddress.Builder();
            builder6.f78176b = hashTreeAddress4.f78172a;
            builder6.f78177c = hashTreeAddress4.f78173b;
            builder6.f78150e = hashTreeAddress4.f78148e;
            builder6.f78151f = hashTreeAddress4.f78149f;
            builder6.d = 2;
            hashTreeAddress = new HashTreeAddress(builder6);
        }
        byte[] bArrA3 = keyedHashFunctions.a(bArrB, hashTreeAddress.a());
        int i3 = wOTSPlus.f78162a.f78169c;
        int i4 = i3 * 2;
        byte[] bArr2 = new byte[i4];
        for (int i5 = 0; i5 < i3; i5++) {
            bArr2[i5] = (byte) (XMSSUtil.b(xMSSNode.f78197c)[i5] ^ bArrA2[i5]);
        }
        for (int i6 = 0; i6 < i3; i6++) {
            bArr2[i6 + i3] = (byte) (XMSSUtil.b(xMSSNode2.f78197c)[i6] ^ bArrA3[i6]);
        }
        int length = bArrA.length;
        int i7 = keyedHashFunctions.f78153b;
        if (length != i7) {
            md.n("wrong key length");
            return null;
        }
        if (i4 == i7 * 2) {
            return new XMSSNode(i2, keyedHashFunctions.b(1, bArrA, bArr2));
        }
        md.n("wrong in length");
        return null;
    }
}
