package org.bouncycastle.pqc.asn1;

import defpackage.n00;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSLeaf;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSParameters;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSRootCalc;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSRootSig;
import org.bouncycastle.pqc.legacy.crypto.gmss.Treehash;

/* JADX INFO: loaded from: classes5.dex */
public class GMSSPrivateKey extends ASN1Object {
    private ASN1Primitive primitive;

    private GMSSPrivateKey(ASN1Sequence aSN1Sequence) {
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(0);
        int[] iArr = new int[aSN1Sequence2.size()];
        for (int i2 = 0; i2 < aSN1Sequence2.size(); i2++) {
            iArr[i2] = checkBigIntegerInIntRange(aSN1Sequence2.getObjectAt(i2));
        }
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        int size = aSN1Sequence3.size();
        byte[][] bArr = new byte[size][];
        for (int i3 = 0; i3 < size; i3++) {
            bArr[i3] = ((DEROctetString) aSN1Sequence3.getObjectAt(i3)).getOctets();
        }
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(2);
        int size2 = aSN1Sequence4.size();
        byte[][] bArr2 = new byte[size2][];
        for (int i4 = 0; i4 < size2; i4++) {
            bArr2[i4] = ((DEROctetString) aSN1Sequence4.getObjectAt(i4)).getOctets();
        }
        ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        int size3 = aSN1Sequence5.size();
        byte[][][] bArr3 = new byte[size3][][];
        for (int i5 = 0; i5 < size3; i5++) {
            ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(i5);
            bArr3[i5] = new byte[aSN1Sequence6.size()][];
            int i6 = 0;
            while (true) {
                byte[][] bArr4 = bArr3[i5];
                if (i6 < bArr4.length) {
                    bArr4[i6] = ((DEROctetString) aSN1Sequence6.getObjectAt(i6)).getOctets();
                    i6++;
                }
            }
        }
        ASN1Sequence aSN1Sequence7 = (ASN1Sequence) aSN1Sequence.getObjectAt(4);
        int size4 = aSN1Sequence7.size();
        byte[][][] bArr5 = new byte[size4][][];
        for (int i7 = 0; i7 < size4; i7++) {
            ASN1Sequence aSN1Sequence8 = (ASN1Sequence) aSN1Sequence7.getObjectAt(i7);
            bArr5[i7] = new byte[aSN1Sequence8.size()][];
            int i8 = 0;
            while (true) {
                byte[][] bArr6 = bArr5[i7];
                if (i8 < bArr6.length) {
                    bArr6[i8] = ((DEROctetString) aSN1Sequence8.getObjectAt(i8)).getOctets();
                    i8++;
                }
            }
        }
        Treehash[][] treehashArr = new Treehash[((ASN1Sequence) aSN1Sequence.getObjectAt(5)).size()][];
    }

    private static int checkBigIntegerInIntRange(ASN1Encodable aSN1Encodable) {
        return ((ASN1Integer) aSN1Encodable).intValueExact();
    }

    private ASN1Primitive encode(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, AlgorithmIdentifier[] algorithmIdentifierArr) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (int i2 : iArr) {
            aSN1EncodableVector2.add(new ASN1Integer(i2));
        }
        ASN1EncodableVector aSN1EncodableVectorX = n00.x(aSN1EncodableVector2, aSN1EncodableVector);
        for (byte[] bArr8 : bArr) {
            aSN1EncodableVectorX.add(new DEROctetString(bArr8));
        }
        ASN1EncodableVector aSN1EncodableVectorX2 = n00.x(aSN1EncodableVectorX, aSN1EncodableVector);
        for (byte[] bArr9 : bArr2) {
            aSN1EncodableVectorX2.add(new DEROctetString(bArr9));
        }
        ASN1EncodableVector aSN1EncodableVectorX3 = n00.x(aSN1EncodableVectorX2, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        for (int i3 = 0; i3 < bArr3.length; i3++) {
            for (int i4 = 0; i4 < bArr3[i3].length; i4++) {
                aSN1EncodableVectorX3.add(new DEROctetString(bArr3[i3][i4]));
            }
            aSN1EncodableVectorX3 = n00.x(aSN1EncodableVectorX3, aSN1EncodableVector3);
        }
        ASN1EncodableVector aSN1EncodableVectorX4 = n00.x(aSN1EncodableVector3, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        for (int i5 = 0; i5 < bArr4.length; i5++) {
            for (int i6 = 0; i6 < bArr4[i5].length; i6++) {
                aSN1EncodableVectorX4.add(new DEROctetString(bArr4[i5][i6]));
            }
            aSN1EncodableVectorX4 = n00.x(aSN1EncodableVectorX4, aSN1EncodableVector4);
        }
        ASN1EncodableVector aSN1EncodableVectorX5 = n00.x(aSN1EncodableVector4, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
        int i7 = 0;
        while (i7 < treehashArr.length) {
            int i8 = 0;
            while (i8 < treehashArr[i7].length) {
                aSN1EncodableVector6.add(new DERSequence(algorithmIdentifierArr[0]));
                int i9 = treehashArr[i7][i8].getStatInt()[1];
                aSN1EncodableVector7.add(new DEROctetString(treehashArr[i7][i8].getStatByte()[0]));
                aSN1EncodableVector7.add(new DEROctetString(treehashArr[i7][i8].getStatByte()[1]));
                aSN1EncodableVector7.add(new DEROctetString(treehashArr[i7][i8].getStatByte()[2]));
                int i10 = 0;
                while (i10 < i9) {
                    aSN1EncodableVector7.add(new DEROctetString(treehashArr[i7][i8].getStatByte()[i10 + 3]));
                    i10++;
                    treehashArr = treehashArr;
                }
                aSN1EncodableVector7 = n00.x(aSN1EncodableVector7, aSN1EncodableVector6);
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr[i7][i8].getStatInt()[0]));
                aSN1EncodableVector8.add(new ASN1Integer(i9));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr[i7][i8].getStatInt()[2]));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr[i7][i8].getStatInt()[3]));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr[i7][i8].getStatInt()[4]));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr[i7][i8].getStatInt()[5]));
                int i11 = 0;
                while (i11 < i9) {
                    aSN1EncodableVector8.add(new ASN1Integer(treehashArr[i7][i8].getStatInt()[i11 + 6]));
                    i11++;
                    i7 = i7;
                    i8 = i8;
                }
                aSN1EncodableVector8 = n00.x(aSN1EncodableVector8, aSN1EncodableVector6);
                aSN1EncodableVector6 = n00.x(aSN1EncodableVector6, aSN1EncodableVector5);
                i8++;
                treehashArr = treehashArr;
            }
            aSN1EncodableVector5 = n00.x(aSN1EncodableVector5, aSN1EncodableVectorX5);
            i7++;
        }
        ASN1EncodableVector aSN1EncodableVectorX6 = n00.x(aSN1EncodableVectorX5, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
        int i12 = 0;
        while (i12 < treehashArr2.length) {
            int i13 = 0;
            while (i13 < treehashArr2[i12].length) {
                aSN1EncodableVector10.add(new DERSequence(algorithmIdentifierArr[0]));
                int i14 = treehashArr2[i12][i13].getStatInt()[1];
                aSN1EncodableVector11.add(new DEROctetString(treehashArr2[i12][i13].getStatByte()[0]));
                aSN1EncodableVector11.add(new DEROctetString(treehashArr2[i12][i13].getStatByte()[1]));
                aSN1EncodableVector11.add(new DEROctetString(treehashArr2[i12][i13].getStatByte()[2]));
                for (int i15 = 0; i15 < i14; i15++) {
                    aSN1EncodableVector11.add(new DEROctetString(treehashArr2[i12][i13].getStatByte()[i15 + 3]));
                }
                aSN1EncodableVector11 = n00.x(aSN1EncodableVector11, aSN1EncodableVector10);
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[i12][i13].getStatInt()[0]));
                aSN1EncodableVector12.add(new ASN1Integer(i14));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[i12][i13].getStatInt()[2]));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[i12][i13].getStatInt()[3]));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[i12][i13].getStatInt()[4]));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[i12][i13].getStatInt()[5]));
                int i16 = 0;
                while (i16 < i14) {
                    aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[i12][i13].getStatInt()[i16 + 6]));
                    i16++;
                    treehashArr2 = treehashArr2;
                    i12 = i12;
                }
                aSN1EncodableVector12 = n00.x(aSN1EncodableVector12, aSN1EncodableVector10);
                aSN1EncodableVector10 = n00.x(aSN1EncodableVector10, aSN1EncodableVector9);
                i13++;
                treehashArr2 = treehashArr2;
            }
            aSN1EncodableVectorX6.add(new DERSequence(new DERSequence(aSN1EncodableVector9)));
            aSN1EncodableVector9 = new ASN1EncodableVector();
            i12++;
        }
        ASN1EncodableVector aSN1EncodableVectorX7 = n00.x(aSN1EncodableVectorX6, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
        for (int i17 = 0; i17 < bArr5.length; i17++) {
            for (int i18 = 0; i18 < bArr5[i17].length; i18++) {
                aSN1EncodableVectorX7.add(new DEROctetString(bArr5[i17][i18]));
            }
            aSN1EncodableVectorX7 = n00.x(aSN1EncodableVectorX7, aSN1EncodableVector13);
        }
        ASN1EncodableVector aSN1EncodableVectorX8 = n00.x(aSN1EncodableVector13, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector14 = new ASN1EncodableVector();
        for (int i19 = 0; i19 < vectorArr.length; i19++) {
            for (int i20 = 0; i20 < vectorArr[i19].size(); i20++) {
                aSN1EncodableVectorX8.add(new DEROctetString((byte[]) vectorArr[i19].elementAt(i20)));
            }
            aSN1EncodableVectorX8 = n00.x(aSN1EncodableVectorX8, aSN1EncodableVector14);
        }
        ASN1EncodableVector aSN1EncodableVectorX9 = n00.x(aSN1EncodableVector14, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector15 = new ASN1EncodableVector();
        for (int i21 = 0; i21 < vectorArr2.length; i21++) {
            for (int i22 = 0; i22 < vectorArr2[i21].size(); i22++) {
                aSN1EncodableVectorX9.add(new DEROctetString((byte[]) vectorArr2[i21].elementAt(i22)));
            }
            aSN1EncodableVectorX9 = n00.x(aSN1EncodableVectorX9, aSN1EncodableVector15);
        }
        ASN1EncodableVector aSN1EncodableVectorX10 = n00.x(aSN1EncodableVector15, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector16 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector17 = new ASN1EncodableVector();
        for (int i23 = 0; i23 < vectorArr3.length; i23++) {
            for (int i24 = 0; i24 < vectorArr3[i23].length; i24++) {
                for (int i25 = 0; i25 < vectorArr3[i23][i24].size(); i25++) {
                    aSN1EncodableVectorX10.add(new DEROctetString((byte[]) vectorArr3[i23][i24].elementAt(i25)));
                }
                aSN1EncodableVectorX10 = n00.x(aSN1EncodableVectorX10, aSN1EncodableVector16);
            }
            aSN1EncodableVector16 = n00.x(aSN1EncodableVector16, aSN1EncodableVector17);
        }
        ASN1EncodableVector aSN1EncodableVectorX11 = n00.x(aSN1EncodableVector17, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector18 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector19 = new ASN1EncodableVector();
        for (int i26 = 0; i26 < vectorArr4.length; i26++) {
            for (int i27 = 0; i27 < vectorArr4[i26].length; i27++) {
                for (int i28 = 0; i28 < vectorArr4[i26][i27].size(); i28++) {
                    aSN1EncodableVectorX11.add(new DEROctetString((byte[]) vectorArr4[i26][i27].elementAt(i28)));
                }
                aSN1EncodableVectorX11 = n00.x(aSN1EncodableVectorX11, aSN1EncodableVector18);
            }
            aSN1EncodableVector18 = n00.x(aSN1EncodableVector18, aSN1EncodableVector19);
        }
        ASN1EncodableVector aSN1EncodableVectorX12 = n00.x(aSN1EncodableVector19, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector20 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector21 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector22 = new ASN1EncodableVector();
        for (int i29 = 0; i29 < gMSSLeafArr.length; i29++) {
            aSN1EncodableVector20.add(new DERSequence(algorithmIdentifierArr[0]));
            byte[][] statByte = gMSSLeafArr[i29].getStatByte();
            aSN1EncodableVector21.add(new DEROctetString(statByte[0]));
            aSN1EncodableVector21.add(new DEROctetString(statByte[1]));
            aSN1EncodableVector21.add(new DEROctetString(statByte[2]));
            aSN1EncodableVector21.add(new DEROctetString(statByte[3]));
            aSN1EncodableVector20.add(new DERSequence(aSN1EncodableVector21));
            aSN1EncodableVector21 = new ASN1EncodableVector();
            int[] statInt = gMSSLeafArr[i29].getStatInt();
            aSN1EncodableVector22.add(new ASN1Integer(statInt[0]));
            aSN1EncodableVector22.add(new ASN1Integer(statInt[1]));
            aSN1EncodableVector22.add(new ASN1Integer(statInt[2]));
            aSN1EncodableVector22.add(new ASN1Integer(statInt[3]));
            aSN1EncodableVector20.add(new DERSequence(aSN1EncodableVector22));
            aSN1EncodableVector22 = new ASN1EncodableVector();
            aSN1EncodableVector20 = n00.x(aSN1EncodableVector20, aSN1EncodableVectorX12);
        }
        ASN1EncodableVector aSN1EncodableVectorX13 = n00.x(aSN1EncodableVectorX12, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector23 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector24 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector25 = new ASN1EncodableVector();
        for (int i30 = 0; i30 < gMSSLeafArr2.length; i30++) {
            aSN1EncodableVector23.add(new DERSequence(algorithmIdentifierArr[0]));
            byte[][] statByte2 = gMSSLeafArr2[i30].getStatByte();
            aSN1EncodableVector24.add(new DEROctetString(statByte2[0]));
            aSN1EncodableVector24.add(new DEROctetString(statByte2[1]));
            aSN1EncodableVector24.add(new DEROctetString(statByte2[2]));
            aSN1EncodableVector24.add(new DEROctetString(statByte2[3]));
            aSN1EncodableVector23.add(new DERSequence(aSN1EncodableVector24));
            aSN1EncodableVector24 = new ASN1EncodableVector();
            int[] statInt2 = gMSSLeafArr2[i30].getStatInt();
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[0]));
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[1]));
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[2]));
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[3]));
            aSN1EncodableVector23.add(new DERSequence(aSN1EncodableVector25));
            aSN1EncodableVector25 = new ASN1EncodableVector();
            aSN1EncodableVector23 = n00.x(aSN1EncodableVector23, aSN1EncodableVectorX13);
        }
        ASN1EncodableVector aSN1EncodableVectorX14 = n00.x(aSN1EncodableVectorX13, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector26 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector27 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector28 = new ASN1EncodableVector();
        for (int i31 = 0; i31 < gMSSLeafArr3.length; i31++) {
            aSN1EncodableVector26.add(new DERSequence(algorithmIdentifierArr[0]));
            byte[][] statByte3 = gMSSLeafArr3[i31].getStatByte();
            aSN1EncodableVector27.add(new DEROctetString(statByte3[0]));
            aSN1EncodableVector27.add(new DEROctetString(statByte3[1]));
            aSN1EncodableVector27.add(new DEROctetString(statByte3[2]));
            aSN1EncodableVector27.add(new DEROctetString(statByte3[3]));
            aSN1EncodableVector26.add(new DERSequence(aSN1EncodableVector27));
            aSN1EncodableVector27 = new ASN1EncodableVector();
            int[] statInt3 = gMSSLeafArr3[i31].getStatInt();
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[0]));
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[1]));
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[2]));
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[3]));
            aSN1EncodableVector26.add(new DERSequence(aSN1EncodableVector28));
            aSN1EncodableVector28 = new ASN1EncodableVector();
            aSN1EncodableVector26 = n00.x(aSN1EncodableVector26, aSN1EncodableVectorX14);
        }
        ASN1EncodableVector aSN1EncodableVectorX15 = n00.x(aSN1EncodableVectorX14, aSN1EncodableVector);
        for (int i32 : iArr2) {
            aSN1EncodableVectorX15.add(new ASN1Integer(i32));
        }
        ASN1EncodableVector aSN1EncodableVectorX16 = n00.x(aSN1EncodableVectorX15, aSN1EncodableVector);
        for (byte[] bArr10 : bArr6) {
            aSN1EncodableVectorX16.add(new DEROctetString(bArr10));
        }
        ASN1EncodableVector aSN1EncodableVectorX17 = n00.x(aSN1EncodableVectorX16, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector29 = new ASN1EncodableVector();
        new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector30 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector31 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector32 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector33 = new ASN1EncodableVector();
        int i33 = 0;
        while (i33 < gMSSRootCalcArr.length) {
            aSN1EncodableVector29.add(new DERSequence(algorithmIdentifierArr[0]));
            new ASN1EncodableVector();
            int i34 = gMSSRootCalcArr[i33].getStatInt()[0];
            int i35 = gMSSRootCalcArr[i33].getStatInt()[7];
            aSN1EncodableVector30.add(new DEROctetString(gMSSRootCalcArr[i33].getStatByte()[0]));
            int i36 = 0;
            while (i36 < i34) {
                i36++;
                aSN1EncodableVector30.add(new DEROctetString(gMSSRootCalcArr[i33].getStatByte()[i36]));
            }
            for (int i37 = 0; i37 < i35; i37++) {
                aSN1EncodableVector30.add(new DEROctetString(gMSSRootCalcArr[i33].getStatByte()[i34 + 1 + i37]));
            }
            ASN1EncodableVector aSN1EncodableVectorX18 = n00.x(aSN1EncodableVector30, aSN1EncodableVector29);
            aSN1EncodableVector31.add(new ASN1Integer(i34));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[1]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[2]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[3]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[4]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[5]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[6]));
            aSN1EncodableVector31.add(new ASN1Integer(i35));
            for (int i38 = 0; i38 < i34; i38++) {
                aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[i38 + 8]));
            }
            for (int i39 = 0; i39 < i35; i39++) {
                aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[i33].getStatInt()[i34 + 8 + i39]));
            }
            ASN1EncodableVector aSN1EncodableVectorX19 = n00.x(aSN1EncodableVector31, aSN1EncodableVector29);
            ASN1EncodableVector aSN1EncodableVector34 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector35 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector36 = new ASN1EncodableVector();
            if (gMSSRootCalcArr[i33].getTreehash() != null) {
                int i40 = 0;
                while (i40 < gMSSRootCalcArr[i33].getTreehash().length) {
                    aSN1EncodableVector34.add(new DERSequence(algorithmIdentifierArr[0]));
                    int i41 = gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[1];
                    aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[i33].getTreehash()[i40].getStatByte()[0]));
                    aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[i33].getTreehash()[i40].getStatByte()[1]));
                    aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[i33].getTreehash()[i40].getStatByte()[2]));
                    int i42 = 0;
                    while (i42 < i41) {
                        aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[i33].getTreehash()[i40].getStatByte()[i42 + 3]));
                        i42++;
                        aSN1EncodableVectorX18 = aSN1EncodableVectorX18;
                    }
                    ASN1EncodableVector aSN1EncodableVector37 = aSN1EncodableVectorX18;
                    aSN1EncodableVector35 = n00.x(aSN1EncodableVector35, aSN1EncodableVector34);
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[0]));
                    aSN1EncodableVector36.add(new ASN1Integer(i41));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[2]));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[3]));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[4]));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[5]));
                    int i43 = 0;
                    while (i43 < i41) {
                        aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[i33].getTreehash()[i40].getStatInt()[i43 + 6]));
                        i43++;
                        aSN1EncodableVectorX19 = aSN1EncodableVectorX19;
                    }
                    aSN1EncodableVector36 = n00.x(aSN1EncodableVector36, aSN1EncodableVector34);
                    aSN1EncodableVector34 = n00.x(aSN1EncodableVector34, aSN1EncodableVector32);
                    i40++;
                    aSN1EncodableVectorX18 = aSN1EncodableVector37;
                }
            }
            ASN1EncodableVector aSN1EncodableVector38 = aSN1EncodableVectorX18;
            ASN1EncodableVector aSN1EncodableVector39 = aSN1EncodableVectorX19;
            aSN1EncodableVector32 = n00.x(aSN1EncodableVector32, aSN1EncodableVector29);
            ASN1EncodableVector aSN1EncodableVector40 = new ASN1EncodableVector();
            if (gMSSRootCalcArr[i33].getRetain() != null) {
                for (int i44 = 0; i44 < gMSSRootCalcArr[i33].getRetain().length; i44++) {
                    for (int i45 = 0; i45 < gMSSRootCalcArr[i33].getRetain()[i44].size(); i45++) {
                        aSN1EncodableVector40.add(new DEROctetString((byte[]) gMSSRootCalcArr[i33].getRetain()[i44].elementAt(i45)));
                    }
                    aSN1EncodableVector40 = n00.x(aSN1EncodableVector40, aSN1EncodableVector33);
                }
            }
            aSN1EncodableVector33 = n00.x(aSN1EncodableVector33, aSN1EncodableVector29);
            aSN1EncodableVector29 = n00.x(aSN1EncodableVector29, aSN1EncodableVectorX17);
            i33++;
            aSN1EncodableVector30 = aSN1EncodableVector38;
            aSN1EncodableVector31 = aSN1EncodableVector39;
        }
        ASN1EncodableVector aSN1EncodableVectorX20 = n00.x(aSN1EncodableVectorX17, aSN1EncodableVector);
        for (byte[] bArr11 : bArr7) {
            aSN1EncodableVectorX20.add(new DEROctetString(bArr11));
        }
        ASN1EncodableVector aSN1EncodableVectorX21 = n00.x(aSN1EncodableVectorX20, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector41 = new ASN1EncodableVector();
        new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector42 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector43 = new ASN1EncodableVector();
        for (int i46 = 0; i46 < gMSSRootSigArr.length; i46++) {
            aSN1EncodableVector41.add(new DERSequence(algorithmIdentifierArr[0]));
            new ASN1EncodableVector();
            aSN1EncodableVector42.add(new DEROctetString(gMSSRootSigArr[i46].getStatByte()[0]));
            aSN1EncodableVector42.add(new DEROctetString(gMSSRootSigArr[i46].getStatByte()[1]));
            aSN1EncodableVector42.add(new DEROctetString(gMSSRootSigArr[i46].getStatByte()[2]));
            aSN1EncodableVector42.add(new DEROctetString(gMSSRootSigArr[i46].getStatByte()[3]));
            aSN1EncodableVector42.add(new DEROctetString(gMSSRootSigArr[i46].getStatByte()[4]));
            aSN1EncodableVector41.add(new DERSequence(aSN1EncodableVector42));
            aSN1EncodableVector42 = new ASN1EncodableVector();
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[0]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[1]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[2]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[3]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[4]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[5]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[6]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[7]));
            aSN1EncodableVector43.add(new ASN1Integer(gMSSRootSigArr[i46].getStatInt()[8]));
            aSN1EncodableVector41.add(new DERSequence(aSN1EncodableVector43));
            aSN1EncodableVector43 = new ASN1EncodableVector();
            aSN1EncodableVector41 = n00.x(aSN1EncodableVector41, aSN1EncodableVectorX21);
        }
        ASN1EncodableVector aSN1EncodableVectorX22 = n00.x(aSN1EncodableVectorX21, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector44 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector45 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector46 = new ASN1EncodableVector();
        for (int i47 = 0; i47 < gMSSParameters.getHeightOfTrees().length; i47++) {
            aSN1EncodableVector44.add(new ASN1Integer(gMSSParameters.getHeightOfTrees()[i47]));
            aSN1EncodableVector45.add(new ASN1Integer(gMSSParameters.getWinternitzParameter()[i47]));
            aSN1EncodableVector46.add(new ASN1Integer(gMSSParameters.getK()[i47]));
        }
        aSN1EncodableVectorX22.add(new ASN1Integer(gMSSParameters.getNumOfLayers()));
        aSN1EncodableVectorX22.add(new DERSequence(aSN1EncodableVector44));
        aSN1EncodableVectorX22.add(new DERSequence(aSN1EncodableVector45));
        aSN1EncodableVectorX22.add(new DERSequence(aSN1EncodableVector46));
        ASN1EncodableVector aSN1EncodableVectorX23 = n00.x(aSN1EncodableVectorX22, aSN1EncodableVector);
        for (AlgorithmIdentifier algorithmIdentifier : algorithmIdentifierArr) {
            aSN1EncodableVectorX23.add(algorithmIdentifier);
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVectorX23));
        return new DERSequence(aSN1EncodableVector);
    }

    public static GMSSPrivateKey getInstance(Object obj) {
        if (obj instanceof GMSSPrivateKey) {
            return (GMSSPrivateKey) obj;
        }
        if (obj != null) {
            return new GMSSPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.primitive;
    }

    public GMSSPrivateKey(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][][] bArr5, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, AlgorithmIdentifier algorithmIdentifier) {
        this.primitive = encode(iArr, bArr, bArr2, bArr3, bArr4, bArr5, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, gMSSLeafArr, gMSSLeafArr2, gMSSLeafArr3, iArr2, bArr6, gMSSRootCalcArr, bArr7, gMSSRootSigArr, gMSSParameters, new AlgorithmIdentifier[]{algorithmIdentifier});
    }
}
