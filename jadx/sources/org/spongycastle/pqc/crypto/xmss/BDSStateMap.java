package org.spongycastle.pqc.crypto.xmss;

import java.io.Serializable;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class BDSStateMap implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreeMap f78139b = new TreeMap();

    public BDSStateMap(XMSSMTParameters xMSSMTParameters, long j2, byte[] bArr, byte[] bArr2) {
        int i2;
        int i3;
        long j3;
        for (long j4 = 0; j4 < j2; j4++) {
            XMSSParameters xMSSParameters = xMSSMTParameters.f78178a;
            int i4 = xMSSParameters.f78199b;
            long j5 = j4 >> i4;
            long j6 = (1 << i4) - 1;
            int i5 = (int) (j4 & j6);
            OTSHashAddress.Builder builder = new OTSHashAddress.Builder();
            builder.f78177c = j5;
            builder.f78160e = i5;
            OTSHashAddress oTSHashAddress = new OTSHashAddress(builder);
            int i6 = 1 << i4;
            int i7 = i6 - 1;
            if (i5 < i7) {
                if (((BDS) this.f78139b.get(0)) == null || i5 == 0) {
                    this.f78139b.put(0, new BDS(xMSSParameters, bArr, bArr2, oTSHashAddress));
                }
                TreeMap treeMap = this.f78139b;
                BDS bds = (BDS) treeMap.get(0);
                bds.getClass();
            }
            int i8 = 1;
            while (i8 < xMSSMTParameters.f78180c) {
                int i9 = (int) (j5 & j6);
                long j7 = j5 >> i4;
                OTSHashAddress.Builder builder2 = new OTSHashAddress.Builder();
                builder2.f78176b = i8;
                builder2.f78177c = j7;
                builder2.f78160e = i9;
                OTSHashAddress oTSHashAddress2 = new OTSHashAddress(builder2);
                if (i9 >= i7 || j4 == 0) {
                    i2 = i7;
                    i3 = i4;
                    j3 = j7;
                } else {
                    i2 = i7;
                    i3 = i4;
                    j3 = j7;
                    if ((j4 + 1) % ((long) Math.pow(i6, i8)) == 0) {
                        if (((BDS) this.f78139b.get(Integer.valueOf(i8))) == null) {
                            this.f78139b.put(Integer.valueOf(i8), new BDS(xMSSMTParameters.f78178a, bArr, bArr2, oTSHashAddress2));
                        }
                        TreeMap treeMap2 = this.f78139b;
                        Integer numValueOf = Integer.valueOf(i8);
                        BDS bds2 = (BDS) treeMap2.get(Integer.valueOf(i8));
                        bds2.getClass();
                    }
                }
                i8++;
                i4 = i3;
                i7 = i2;
                j5 = j3;
            }
        }
    }

    public BDSStateMap() {
    }
}
