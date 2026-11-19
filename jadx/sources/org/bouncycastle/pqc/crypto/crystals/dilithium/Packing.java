package org.bouncycastle.pqc.crypto.crystals.dilithium;

import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class Packing {
    public static byte[] packPublicKey(PolyVecK polyVecK, DilithiumEngine dilithiumEngine) {
        byte[] bArr = new byte[dilithiumEngine.getCryptoPublicKeyBytes() - 32];
        for (int i2 = 0; i2 < dilithiumEngine.getDilithiumK(); i2++) {
            System.arraycopy(polyVecK.getVectorIndex(i2).polyt1Pack(), 0, bArr, i2 * DilithiumEngine.DilithiumPolyT1PackedBytes, DilithiumEngine.DilithiumPolyT1PackedBytes);
        }
        return bArr;
    }

    public static byte[][] packSecretKey(byte[] bArr, byte[] bArr2, byte[] bArr3, PolyVecK polyVecK, PolyVecL polyVecL, PolyVecK polyVecK2, DilithiumEngine dilithiumEngine) {
        byte[][] bArr4 = new byte[6][];
        bArr4[0] = bArr;
        bArr4[1] = bArr3;
        bArr4[2] = bArr2;
        bArr4[3] = new byte[dilithiumEngine.getDilithiumL() * dilithiumEngine.getDilithiumPolyEtaPackedBytes()];
        for (int i2 = 0; i2 < dilithiumEngine.getDilithiumL(); i2++) {
            polyVecL.getVectorIndex(i2).polyEtaPack(bArr4[3], dilithiumEngine.getDilithiumPolyEtaPackedBytes() * i2);
        }
        bArr4[4] = new byte[dilithiumEngine.getDilithiumK() * dilithiumEngine.getDilithiumPolyEtaPackedBytes()];
        for (int i3 = 0; i3 < dilithiumEngine.getDilithiumK(); i3++) {
            polyVecK2.getVectorIndex(i3).polyEtaPack(bArr4[4], dilithiumEngine.getDilithiumPolyEtaPackedBytes() * i3);
        }
        bArr4[5] = new byte[dilithiumEngine.getDilithiumK() * DilithiumEngine.DilithiumPolyT0PackedBytes];
        for (int i4 = 0; i4 < dilithiumEngine.getDilithiumK(); i4++) {
            polyVecK.getVectorIndex(i4).polyt0Pack(bArr4[5], i4 * DilithiumEngine.DilithiumPolyT0PackedBytes);
        }
        return bArr4;
    }

    public static byte[] packSignature(byte[] bArr, PolyVecL polyVecL, PolyVecK polyVecK, DilithiumEngine dilithiumEngine) {
        byte[] bArr2 = new byte[dilithiumEngine.getCryptoBytes()];
        System.arraycopy(bArr, 0, bArr2, 0, dilithiumEngine.getDilithiumCTilde());
        int dilithiumCTilde = dilithiumEngine.getDilithiumCTilde();
        for (int i2 = 0; i2 < dilithiumEngine.getDilithiumL(); i2++) {
            System.arraycopy(polyVecL.getVectorIndex(i2).zPack(), 0, bArr2, (dilithiumEngine.getDilithiumPolyZPackedBytes() * i2) + dilithiumCTilde, dilithiumEngine.getDilithiumPolyZPackedBytes());
        }
        int dilithiumL = (dilithiumEngine.getDilithiumL() * dilithiumEngine.getDilithiumPolyZPackedBytes()) + dilithiumCTilde;
        for (int i3 = 0; i3 < dilithiumEngine.getDilithiumOmega() + dilithiumEngine.getDilithiumK(); i3++) {
            bArr2[dilithiumL + i3] = 0;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < dilithiumEngine.getDilithiumK(); i5++) {
            for (int i6 = 0; i6 < 256; i6++) {
                if (polyVecK.getVectorIndex(i5).getCoeffIndex(i6) != 0) {
                    bArr2[i4 + dilithiumL] = (byte) i6;
                    i4++;
                }
            }
            bArr2[dilithiumEngine.getDilithiumOmega() + dilithiumL + i5] = (byte) i4;
        }
        return bArr2;
    }

    public static PolyVecK unpackPublicKey(PolyVecK polyVecK, byte[] bArr, DilithiumEngine dilithiumEngine) {
        int i2 = 0;
        while (i2 < dilithiumEngine.getDilithiumK()) {
            Poly vectorIndex = polyVecK.getVectorIndex(i2);
            int i3 = i2 * DilithiumEngine.DilithiumPolyT1PackedBytes;
            i2++;
            vectorIndex.polyt1Unpack(Arrays.copyOfRange(bArr, i3, (i2 * DilithiumEngine.DilithiumPolyT1PackedBytes) + 32));
        }
        return polyVecK;
    }

    public static void unpackSecretKey(PolyVecK polyVecK, PolyVecL polyVecL, PolyVecK polyVecK2, byte[] bArr, byte[] bArr2, byte[] bArr3, DilithiumEngine dilithiumEngine) {
        for (int i2 = 0; i2 < dilithiumEngine.getDilithiumL(); i2++) {
            polyVecL.getVectorIndex(i2).polyEtaUnpack(bArr2, dilithiumEngine.getDilithiumPolyEtaPackedBytes() * i2);
        }
        for (int i3 = 0; i3 < dilithiumEngine.getDilithiumK(); i3++) {
            polyVecK2.getVectorIndex(i3).polyEtaUnpack(bArr3, dilithiumEngine.getDilithiumPolyEtaPackedBytes() * i3);
        }
        for (int i4 = 0; i4 < dilithiumEngine.getDilithiumK(); i4++) {
            polyVecK.getVectorIndex(i4).polyt0Unpack(bArr, i4 * DilithiumEngine.DilithiumPolyT0PackedBytes);
        }
    }

    public static boolean unpackSignature(PolyVecL polyVecL, PolyVecK polyVecK, byte[] bArr, DilithiumEngine dilithiumEngine) {
        int dilithiumCTilde = dilithiumEngine.getDilithiumCTilde();
        int i2 = 0;
        while (i2 < dilithiumEngine.getDilithiumL()) {
            Poly vectorIndex = polyVecL.getVectorIndex(i2);
            int dilithiumPolyZPackedBytes = (dilithiumEngine.getDilithiumPolyZPackedBytes() * i2) + dilithiumCTilde;
            i2++;
            vectorIndex.zUnpack(Arrays.copyOfRange(bArr, dilithiumPolyZPackedBytes, (dilithiumEngine.getDilithiumPolyZPackedBytes() * i2) + dilithiumCTilde));
        }
        int dilithiumL = (dilithiumEngine.getDilithiumL() * dilithiumEngine.getDilithiumPolyZPackedBytes()) + dilithiumCTilde;
        int i3 = 0;
        for (int i4 = 0; i4 < dilithiumEngine.getDilithiumK(); i4++) {
            for (int i5 = 0; i5 < 256; i5++) {
                polyVecK.getVectorIndex(i4).setCoeffIndex(i5, 0);
            }
            if ((bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + i4] & 255) < i3 || (bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + i4] & 255) > dilithiumEngine.getDilithiumOmega()) {
                return false;
            }
            for (int i6 = i3; i6 < (bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + i4] & 255); i6++) {
                if (i6 > i3) {
                    int i7 = dilithiumL + i6;
                    if ((bArr[i7] & 255) <= (bArr[i7 - 1] & 255)) {
                        return false;
                    }
                }
                polyVecK.getVectorIndex(i4).setCoeffIndex(bArr[dilithiumL + i6] & 255, 1);
            }
            i3 = bArr[dilithiumEngine.getDilithiumOmega() + dilithiumL + i4];
        }
        while (i3 < dilithiumEngine.getDilithiumOmega()) {
            if ((bArr[dilithiumL + i3] & 255) != 0) {
                return false;
            }
            i3++;
        }
        return true;
    }
}
