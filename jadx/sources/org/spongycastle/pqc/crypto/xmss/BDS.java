package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public final class BDS implements Serializable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient WOTSPlus f78131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78132c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f78134f;
    public final TreeMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Stack f78135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TreeMap f78136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f78137j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f78138k;

    public BDS(WOTSPlus wOTSPlus, int i2, int i3) {
        this.f78131b = wOTSPlus;
        this.f78132c = i2;
        this.f78133e = i3;
        if (i3 <= i2 && i3 >= 2) {
            int i4 = i2 - i3;
            if (i4 % 2 == 0) {
                this.f78134f = new ArrayList();
                this.g = new TreeMap();
                this.f78135h = new Stack();
                this.d = new ArrayList();
                for (int i5 = 0; i5 < i4; i5++) {
                    this.d.add(new BDSTreeHash(i5));
                }
                this.f78136i = new TreeMap();
                this.f78137j = 0;
                this.f78138k = false;
                return;
            }
        }
        md.n("illegal value for BDS parameter k");
        throw null;
    }

    public final void a(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        OTSHashAddress oTSHashAddress2;
        int i2;
        int i3;
        OTSHashAddress oTSHashAddress3 = oTSHashAddress;
        long j2 = oTSHashAddress3.f78173b;
        int i4 = oTSHashAddress3.f78172a;
        LTreeAddress.Builder builder = new LTreeAddress.Builder();
        builder.f78176b = i4;
        builder.f78177c = j2;
        LTreeAddress lTreeAddress = new LTreeAddress(builder);
        HashTreeAddress.Builder builder2 = new HashTreeAddress.Builder();
        builder2.f78176b = i4;
        builder2.f78177c = j2;
        HashTreeAddress hashTreeAddress = new HashTreeAddress(builder2);
        int i5 = 0;
        while (true) {
            int i6 = 1;
            int i7 = this.f78132c;
            int i8 = 1 << i7;
            Stack stack = this.f78135h;
            if (i5 >= i8) {
                return;
            }
            OTSHashAddress.Builder builder3 = new OTSHashAddress.Builder();
            builder3.f78176b = oTSHashAddress3.f78172a;
            builder3.f78177c = oTSHashAddress3.f78173b;
            builder3.f78160e = i5;
            builder3.f78161f = oTSHashAddress3.f78159f;
            builder3.g = oTSHashAddress3.g;
            builder3.d = oTSHashAddress3.d;
            OTSHashAddress oTSHashAddress4 = new OTSHashAddress(builder3);
            WOTSPlus wOTSPlus = this.f78131b;
            wOTSPlus.d(wOTSPlus.c(bArr2, oTSHashAddress4), bArr);
            WOTSPlusPublicKeyParameters wOTSPlusPublicKeyParametersB = wOTSPlus.b(oTSHashAddress4);
            LTreeAddress.Builder builder4 = new LTreeAddress.Builder();
            builder4.f78176b = lTreeAddress.f78172a;
            builder4.f78177c = lTreeAddress.f78173b;
            builder4.f78156e = i5;
            builder4.f78157f = lTreeAddress.f78155f;
            builder4.g = lTreeAddress.g;
            builder4.d = lTreeAddress.d;
            lTreeAddress = new LTreeAddress(builder4);
            XMSSNode xMSSNodeA = XMSSNodeUtil.a(wOTSPlus, wOTSPlusPublicKeyParametersB, lTreeAddress);
            HashTreeAddress.Builder builder5 = new HashTreeAddress.Builder();
            builder5.f78176b = hashTreeAddress.f78172a;
            builder5.f78177c = hashTreeAddress.f78173b;
            builder5.f78151f = i5;
            builder5.d = hashTreeAddress.d;
            hashTreeAddress = new HashTreeAddress(builder5);
            while (!stack.isEmpty()) {
                int i9 = ((XMSSNode) stack.peek()).f78196b;
                int i10 = xMSSNodeA.f78196b;
                if (i9 != i10) {
                    break;
                }
                int iFloor = (int) Math.floor(i5 / (i6 << i10));
                if (iFloor == i6) {
                    this.f78134f.add(xMSSNodeA.clone());
                }
                int i11 = this.f78133e;
                if (iFloor == 3) {
                    if (i10 < i7 - i11) {
                        BDSTreeHash bDSTreeHash = (BDSTreeHash) this.d.get(i10);
                        XMSSNode xMSSNodeClone = xMSSNodeA.clone();
                        bDSTreeHash.f78140b = xMSSNodeClone;
                        int i12 = xMSSNodeClone.f78196b;
                        bDSTreeHash.d = i12;
                        oTSHashAddress2 = oTSHashAddress4;
                        if (i12 == bDSTreeHash.f78141c) {
                            i2 = 1;
                            bDSTreeHash.g = true;
                        } else {
                            i2 = 1;
                        }
                    } else {
                        oTSHashAddress2 = oTSHashAddress4;
                        i2 = i6;
                    }
                    i3 = 3;
                } else {
                    oTSHashAddress2 = oTSHashAddress4;
                    i2 = i6;
                    i3 = 3;
                }
                if (iFloor >= i3 && (iFloor & 1) == i2 && i10 >= i7 - i11 && i10 <= i7 - 2) {
                    Integer numValueOf = Integer.valueOf(i10);
                    TreeMap treeMap = this.g;
                    if (treeMap.get(numValueOf) == null) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(xMSSNodeA.clone());
                        treeMap.put(Integer.valueOf(i10), linkedList);
                    } else {
                        ((LinkedList) treeMap.get(Integer.valueOf(i10))).add(xMSSNodeA.clone());
                    }
                }
                HashTreeAddress.Builder builder6 = new HashTreeAddress.Builder();
                builder6.f78176b = hashTreeAddress.f78172a;
                builder6.f78177c = hashTreeAddress.f78173b;
                builder6.f78150e = hashTreeAddress.f78148e;
                builder6.f78151f = (hashTreeAddress.f78149f - 1) / 2;
                builder6.d = hashTreeAddress.d;
                HashTreeAddress hashTreeAddress2 = new HashTreeAddress(builder6);
                XMSSNode xMSSNodeB = XMSSNodeUtil.b(wOTSPlus, (XMSSNode) stack.pop(), xMSSNodeA, hashTreeAddress2);
                xMSSNodeA = new XMSSNode(xMSSNodeB.f78196b + 1, XMSSUtil.b(xMSSNodeB.f78197c));
                HashTreeAddress.Builder builder7 = new HashTreeAddress.Builder();
                builder7.f78176b = hashTreeAddress2.f78172a;
                builder7.f78177c = hashTreeAddress2.f78173b;
                builder7.f78150e = hashTreeAddress2.f78148e + 1;
                builder7.f78151f = hashTreeAddress2.f78149f;
                builder7.d = hashTreeAddress2.d;
                hashTreeAddress = new HashTreeAddress(builder7);
                i6 = 1;
                oTSHashAddress4 = oTSHashAddress2;
            }
            stack.push(xMSSNodeA);
            i5++;
            oTSHashAddress3 = oTSHashAddress4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v20, types: [int] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [int] */
    public final void b(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        int i2;
        boolean z;
        OTSHashAddress oTSHashAddress2;
        int i3;
        ArrayList arrayList;
        int i4;
        Stack stack;
        int i5;
        int i6;
        int i7;
        long j2;
        int i8;
        byte[] bArr3 = bArr;
        byte[] bArr4 = bArr2;
        OTSHashAddress oTSHashAddress3 = oTSHashAddress;
        long j3 = oTSHashAddress3.f78173b;
        int i9 = oTSHashAddress3.f78172a;
        if (this.f78138k) {
            md.k("index already used");
            return;
        }
        int i10 = this.f78137j;
        int i11 = this.f78132c;
        int i12 = 1 << i11;
        if (i10 > i12 - 2) {
            md.k("index out of bounds");
            return;
        }
        LTreeAddress.Builder builder = new LTreeAddress.Builder();
        builder.f78176b = i9;
        builder.f78177c = j3;
        LTreeAddress lTreeAddress = new LTreeAddress(builder);
        HashTreeAddress.Builder builder2 = new HashTreeAddress.Builder();
        builder2.f78176b = i9;
        builder2.f78177c = j3;
        HashTreeAddress hashTreeAddress = new HashTreeAddress(builder2);
        int i13 = 0;
        while (true) {
            if (i13 >= i11) {
                i13 = 0;
                break;
            } else if (((i10 >> i13) & 1) == 0) {
                break;
            } else {
                i13++;
            }
        }
        int i14 = (this.f78137j >> (i13 + 1)) & 1;
        TreeMap treeMap = this.f78136i;
        boolean z2 = true;
        ArrayList arrayList2 = this.f78134f;
        if (i14 == 0 && i13 < i11 - 1) {
            treeMap.put(Integer.valueOf(i13), ((XMSSNode) arrayList2.get(i13)).clone());
        }
        WOTSPlus wOTSPlus = this.f78131b;
        ArrayList<BDSTreeHash> arrayList3 = this.d;
        int i15 = this.f78133e;
        if (i13 == 0) {
            OTSHashAddress.Builder builder3 = new OTSHashAddress.Builder();
            builder3.f78176b = i9;
            builder3.f78177c = j3;
            builder3.f78160e = this.f78137j;
            builder3.f78161f = oTSHashAddress3.f78159f;
            builder3.g = oTSHashAddress3.g;
            builder3.d = oTSHashAddress3.d;
            oTSHashAddress3 = new OTSHashAddress(builder3);
            wOTSPlus.d(wOTSPlus.c(bArr4, oTSHashAddress3), bArr3);
            WOTSPlusPublicKeyParameters wOTSPlusPublicKeyParametersB = wOTSPlus.b(oTSHashAddress3);
            LTreeAddress.Builder builder4 = new LTreeAddress.Builder();
            builder4.f78176b = lTreeAddress.f78172a;
            builder4.f78177c = lTreeAddress.f78173b;
            builder4.f78156e = this.f78137j;
            builder4.f78157f = lTreeAddress.f78155f;
            builder4.g = lTreeAddress.g;
            builder4.d = lTreeAddress.d;
            arrayList2.set(0, XMSSNodeUtil.a(wOTSPlus, wOTSPlusPublicKeyParametersB, new LTreeAddress(builder4)));
            i2 = 0;
        } else {
            HashTreeAddress.Builder builder5 = new HashTreeAddress.Builder();
            builder5.f78176b = hashTreeAddress.f78172a;
            builder5.f78177c = hashTreeAddress.f78173b;
            int i16 = i13 - 1;
            builder5.f78150e = i16;
            builder5.f78151f = this.f78137j >> i13;
            builder5.d = hashTreeAddress.d;
            XMSSNode xMSSNodeB = XMSSNodeUtil.b(wOTSPlus, (XMSSNode) arrayList2.get(i16), (XMSSNode) treeMap.get(Integer.valueOf(i16)), new HashTreeAddress(builder5));
            arrayList2.set(i13, new XMSSNode(xMSSNodeB.f78196b + 1, XMSSUtil.b(xMSSNodeB.f78197c)));
            treeMap.remove(Integer.valueOf(i16));
            for (int i17 = 0; i17 < i13; i17++) {
                if (i17 < i11 - i15) {
                    arrayList2.set(i17, ((BDSTreeHash) arrayList3.get(i17)).f78140b.clone());
                } else {
                    arrayList2.set(i17, ((LinkedList) this.g.get(Integer.valueOf(i17))).removeFirst());
                }
            }
            int iMin = Math.min(i13, i11 - i15);
            int i18 = 0;
            while (i18 < iMin) {
                int i19 = (((z2 ? 1 : 0) << i18) * 3) + this.f78137j + 1;
                if (i19 < i12) {
                    BDSTreeHash bDSTreeHash = (BDSTreeHash) arrayList3.get(i18);
                    bDSTreeHash.f78140b = null;
                    bDSTreeHash.d = bDSTreeHash.f78141c;
                    bDSTreeHash.f78142e = i19;
                    z = z2 ? 1 : 0;
                    bDSTreeHash.f78143f = z;
                    bDSTreeHash.g = false;
                } else {
                    z = z2 ? 1 : 0;
                }
                i18++;
                z2 = z;
            }
            i2 = 0;
        }
        for (?? r8 = z2; i2 < ((i11 - i15) >> r8); r8 = 1) {
            BDSTreeHash bDSTreeHash2 = null;
            for (BDSTreeHash bDSTreeHash3 : arrayList3) {
                if (!bDSTreeHash3.g && bDSTreeHash3.f78143f && (bDSTreeHash2 == null || bDSTreeHash3.a() < bDSTreeHash2.a() || (bDSTreeHash3.a() == bDSTreeHash2.a() && bDSTreeHash3.f78142e < bDSTreeHash2.f78142e))) {
                    bDSTreeHash2 = bDSTreeHash3;
                }
            }
            if (bDSTreeHash2 != null) {
                int i20 = bDSTreeHash2.f78141c;
                if (bDSTreeHash2.g || !bDSTreeHash2.f78143f) {
                    md.k("finished or not initialized");
                    return;
                }
                OTSHashAddress.Builder builder6 = new OTSHashAddress.Builder();
                builder6.f78176b = oTSHashAddress3.f78172a;
                builder6.f78177c = oTSHashAddress3.f78173b;
                int i21 = bDSTreeHash2.f78142e;
                builder6.f78160e = i21;
                builder6.f78161f = oTSHashAddress3.f78159f;
                builder6.g = oTSHashAddress3.g;
                builder6.d = oTSHashAddress3.d;
                OTSHashAddress oTSHashAddress4 = new OTSHashAddress(builder6);
                LTreeAddress.Builder builder7 = new LTreeAddress.Builder();
                int i22 = oTSHashAddress4.f78172a;
                builder7.f78176b = i22;
                i4 = i2;
                long j4 = oTSHashAddress4.f78173b;
                builder7.f78177c = j4;
                builder7.f78156e = i21;
                oTSHashAddress2 = oTSHashAddress3;
                LTreeAddress lTreeAddress2 = new LTreeAddress(builder7);
                HashTreeAddress.Builder builder8 = new HashTreeAddress.Builder();
                builder8.f78176b = i22;
                builder8.f78177c = j4;
                builder8.f78151f = i21;
                HashTreeAddress hashTreeAddress2 = new HashTreeAddress(builder8);
                wOTSPlus.d(wOTSPlus.c(bArr4, oTSHashAddress4), bArr3);
                XMSSNode xMSSNodeA = XMSSNodeUtil.a(wOTSPlus, wOTSPlus.b(oTSHashAddress4), lTreeAddress2);
                while (true) {
                    stack = this.f78135h;
                    boolean zIsEmpty = stack.isEmpty();
                    i5 = hashTreeAddress2.d;
                    i6 = hashTreeAddress2.f78149f;
                    i7 = hashTreeAddress2.f78148e;
                    j2 = hashTreeAddress2.f78173b;
                    i8 = hashTreeAddress2.f78172a;
                    if (zIsEmpty) {
                        i3 = i15;
                        break;
                    }
                    i3 = i15;
                    if (((XMSSNode) stack.peek()).f78196b != xMSSNodeA.f78196b || ((XMSSNode) stack.peek()).f78196b == i20) {
                        break;
                    }
                    HashTreeAddress.Builder builder9 = new HashTreeAddress.Builder();
                    builder9.f78176b = i8;
                    builder9.f78177c = j2;
                    builder9.f78150e = i7;
                    builder9.f78151f = (i6 - 1) / 2;
                    builder9.d = i5;
                    HashTreeAddress hashTreeAddress3 = new HashTreeAddress(builder9);
                    XMSSNode xMSSNodeB2 = XMSSNodeUtil.b(wOTSPlus, (XMSSNode) stack.pop(), xMSSNodeA, hashTreeAddress3);
                    xMSSNodeA = new XMSSNode(xMSSNodeB2.f78196b + 1, XMSSUtil.b(xMSSNodeB2.f78197c));
                    HashTreeAddress.Builder builder10 = new HashTreeAddress.Builder();
                    builder10.f78176b = hashTreeAddress3.f78172a;
                    builder10.f78177c = hashTreeAddress3.f78173b;
                    builder10.f78150e = hashTreeAddress3.f78148e + 1;
                    builder10.f78151f = hashTreeAddress3.f78149f;
                    builder10.d = hashTreeAddress3.d;
                    hashTreeAddress2 = new HashTreeAddress(builder10);
                    i15 = i3;
                }
                XMSSNode xMSSNode = bDSTreeHash2.f78140b;
                if (xMSSNode == null) {
                    bDSTreeHash2.f78140b = xMSSNodeA;
                    arrayList = arrayList3;
                } else {
                    arrayList = arrayList3;
                    if (xMSSNode.f78196b == xMSSNodeA.f78196b) {
                        HashTreeAddress.Builder builder11 = new HashTreeAddress.Builder();
                        builder11.f78176b = i8;
                        builder11.f78177c = j2;
                        builder11.f78150e = i7;
                        builder11.f78151f = (i6 - 1) / 2;
                        builder11.d = i5;
                        xMSSNodeA = new XMSSNode(bDSTreeHash2.f78140b.f78196b + 1, XMSSUtil.b(XMSSNodeUtil.b(wOTSPlus, xMSSNode, xMSSNodeA, new HashTreeAddress(builder11)).f78197c));
                        bDSTreeHash2.f78140b = xMSSNodeA;
                    } else {
                        stack.push(xMSSNodeA);
                    }
                }
                if (bDSTreeHash2.f78140b.f78196b == i20) {
                    bDSTreeHash2.g = true;
                } else {
                    bDSTreeHash2.d = xMSSNodeA.f78196b;
                    bDSTreeHash2.f78142e++;
                }
            } else {
                oTSHashAddress2 = oTSHashAddress3;
                i3 = i15;
                arrayList = arrayList3;
                i4 = i2;
            }
            i2 = i4 + 1;
            bArr3 = bArr;
            bArr4 = bArr2;
            oTSHashAddress3 = oTSHashAddress2;
            i15 = i3;
            arrayList3 = arrayList;
        }
        this.f78137j++;
    }

    public BDS(XMSSParameters xMSSParameters, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        this(xMSSParameters.f78198a, xMSSParameters.f78199b, xMSSParameters.f78200c);
        a(bArr, bArr2, oTSHashAddress);
    }

    public BDS(BDS bds, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        this.f78131b = bds.f78131b;
        this.f78132c = bds.f78132c;
        this.f78133e = bds.f78133e;
        this.f78134f = new ArrayList(bds.f78134f);
        this.g = bds.g;
        this.f78135h = (Stack) bds.f78135h.clone();
        this.d = bds.d;
        this.f78136i = new TreeMap((Map) bds.f78136i);
        this.f78137j = bds.f78137j;
        b(bArr, bArr2, oTSHashAddress);
        bds.f78138k = true;
    }
}
