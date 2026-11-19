package org.bouncycastle.pqc.crypto.sphincsplus;

import java.lang.reflect.Array;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class HarakaSBase {
    protected long[][] haraka512_rc = {new long[]{2652350495371256459L, -4767360454786055294L, -2778808723033108313L, -6138960262205972599L, 4944264682582508575L, 5312892415214084856L, 390034814247088728L, 2584105839607850161L}, new long[]{-2829930801980875922L, 9137660425067592590L, 7974068014816832049L, -4665944065725157058L, 2602240152241800734L, -1525694355931290902L, 8634660511727056099L, 1757945485816280992L}, new long[]{1181946526362588450L, -2765192619992380293L, 3395396416743122529L, -5116273100549372423L, -1285454309797503998L, -3363297609815171261L, -8360835858392998991L, -2371352336613968487L}, new long[]{-2500853454776756032L, 8465221333286591414L, 8817016078209461823L, 9067727467981428858L, 4244107674518258433L, -4347326460570889538L, 1711371409274742987L, 6486926172609168623L}, new long[]{1689001080716996467L, -491496126278250673L, 1273395568185090836L, 5805238412293617850L, -3441289770925384855L, 4592753210857527691L, 7062886034259989751L, -7974393977033172556L}, new long[]{-797818098819718290L, -41460260651793472L, 476036171179798187L, 7391697506481003962L, -855662275170689475L, -3489340839585811635L, -4891525734487956488L, 9110006695579921767L}, new long[]{-886938081943560790L, 4212830408327159617L, -3546674487567282635L, -1955379422127038289L, 3174578079917510314L, 5156046680874954380L, -318545805834821831L, -6176414008149462342L}, new long[]{2529785914229181047L, 2966313764524854080L, 6363694428402697361L, 8292109690175819701L, -8497546332135459587L, -3211108476154815616L, -5526938793786642321L, -4975969843627057770L}, new long[]{3357847021085574721L, -4764837212565187058L, -626391829400648692L, 2124133995575340009L, 7425858999829294301L, -3432032868905637771L, 1119301198758921294L, 1907812968586478892L}, new long[]{-8986524826712832802L, 3356175496741300052L, -5764600317639896362L, 4002747967109689317L, -8718925159733497197L, -1938063772587374661L, -8003749789895945835L, 7302960353763723932L}};
    protected int[][] haraka256_rc = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 10, 8);
    protected final byte[] buffer = new byte[64];
    protected int off = 0;

    private void Swapn(long[] jArr, int i2, int i3, int i4) {
        long j2;
        long j3;
        if (i2 == 1) {
            j2 = 6148914691236517205L;
            j3 = -6148914691236517206L;
        } else if (i2 == 2) {
            j2 = 3689348814741910323L;
            j3 = -3689348814741910324L;
        } else {
            if (i2 != 4) {
                return;
            }
            j2 = 1085102592571150095L;
            j3 = -1085102592571150096L;
        }
        long j4 = jArr[i3];
        long j5 = jArr[i4];
        jArr[i3] = ((j2 & j5) << i2) | (j4 & j2);
        jArr[i4] = ((j4 & j3) >>> i2) | (j5 & j3);
    }

    private void Swapn32(int[] iArr, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (i2 == 1) {
            i5 = 1431655765;
            i6 = -1431655766;
        } else if (i2 == 2) {
            i5 = 858993459;
            i6 = -858993460;
        } else if (i2 != 4) {
            i5 = 0;
            i6 = 0;
        } else {
            i5 = 252645135;
            i6 = -252645136;
        }
        int i7 = iArr[i3];
        int i8 = iArr[i4];
        iArr[i3] = ((i5 & i8) << i2) | (i7 & i5);
        iArr[i4] = ((i7 & i6) >>> i2) | (i8 & i6);
    }

    private void addRoundKey(long[] jArr, long[] jArr2) {
        jArr[0] = jArr[0] ^ jArr2[0];
        jArr[1] = jArr[1] ^ jArr2[1];
        jArr[2] = jArr[2] ^ jArr2[2];
        jArr[3] = jArr[3] ^ jArr2[3];
        jArr[4] = jArr[4] ^ jArr2[4];
        jArr[5] = jArr[5] ^ jArr2[5];
        jArr[6] = jArr[6] ^ jArr2[6];
        jArr[7] = jArr[7] ^ jArr2[7];
    }

    private void addRoundKey32(int[] iArr, int[] iArr2) {
        iArr[0] = iArr[0] ^ iArr2[0];
        iArr[1] = iArr[1] ^ iArr2[1];
        iArr[2] = iArr[2] ^ iArr2[2];
        iArr[3] = iArr[3] ^ iArr2[3];
        iArr[4] = iArr[4] ^ iArr2[4];
        iArr[5] = iArr[5] ^ iArr2[5];
        iArr[6] = iArr[6] ^ iArr2[6];
        iArr[7] = iArr2[7] ^ iArr[7];
    }

    private void brAesCt64BitsliceSbox(long[] jArr) {
        long j2 = jArr[7];
        long j3 = jArr[6];
        long j4 = jArr[5];
        long j5 = jArr[4];
        long j6 = jArr[3];
        long j7 = jArr[2];
        long j8 = jArr[1];
        long j9 = jArr[0];
        long j10 = j5 ^ j7;
        long j11 = j2 ^ j8;
        long j12 = j2 ^ j5;
        long j13 = j2 ^ j7;
        long j14 = j4 ^ j3;
        long j15 = j14 ^ j9;
        long j16 = j15 ^ j5;
        long j17 = j11 ^ j10;
        long j18 = j15 ^ j2;
        long j19 = j15 ^ j8;
        long j20 = j19 ^ j13;
        long j21 = j6 ^ j17;
        long j22 = j21 ^ j7;
        long j23 = j3 ^ j21;
        long j24 = j22 ^ j9;
        long j25 = j22 ^ j14;
        long j26 = j23 ^ j12;
        long j27 = j9 ^ j26;
        long j28 = j25 ^ j26;
        long j29 = j14 ^ j26;
        long j30 = j17 & j22;
        long j31 = (j20 & j24) ^ j30;
        long j32 = j11 & j29;
        long j33 = (j19 & j15) ^ j32;
        long j34 = j12 & j26;
        long j35 = (j10 & j28) ^ j34;
        long j36 = (j13 & j25) ^ j34;
        long j37 = (j31 ^ j35) ^ j23;
        long j38 = (((j16 & j9) ^ j30) ^ j36) ^ (j25 ^ j13);
        long j39 = (j33 ^ j35) ^ (j11 ^ j29);
        long j40 = (((j18 & j27) ^ j32) ^ j36) ^ (j2 ^ j29);
        long j41 = j37 ^ j38;
        long j42 = j37 & j39;
        long j43 = j40 ^ j42;
        long j44 = (j41 & j43) ^ j38;
        long j45 = ((j38 ^ j42) & (j39 ^ j40)) ^ j40;
        long j46 = j40 & (j43 ^ j45);
        long j47 = j46 ^ (j39 ^ j45);
        long j48 = j41 ^ (j44 & (j43 ^ j46));
        long j49 = j48 ^ j47;
        long j50 = j44 ^ j45;
        long j51 = j44 ^ j48;
        long j52 = j45 ^ j47;
        long j53 = j50 ^ j49;
        long j54 = j45 & j9;
        long j55 = j51 & j29;
        long j56 = j48 & j15;
        long j57 = j44 & j27;
        long j58 = j53 & j28;
        long j59 = j47 & j20;
        long j60 = j45 & j16;
        long j61 = j51 & j11;
        long j62 = j48 & j19;
        long j63 = j50 & j12;
        long j64 = j53 & j10;
        long j65 = j49 & j13;
        long j66 = j63 ^ j64;
        long j67 = j57 ^ j62;
        long j68 = (j52 & j17) ^ j59;
        long j69 = (j52 & j22) ^ j55;
        long j70 = j64 ^ j65;
        long j71 = (j54 ^ j61) ^ j69;
        long j72 = j56 ^ j66;
        long j73 = j55 ^ ((j50 & j26) ^ j58);
        long j74 = j66 ^ j71;
        long j75 = (j44 & j18) ^ j71;
        long j76 = (j58 ^ (j49 & j25)) ^ j72;
        long j77 = j68 ^ j72;
        long j78 = j56 ^ j73;
        long j79 = j75 ^ j76;
        long j80 = (j47 & j24) ^ j77;
        long j81 = (~j76) ^ (j61 ^ j67);
        long j82 = j67 ^ (~j74);
        long j83 = j69 ^ j80;
        long j84 = j78 ^ (~j83);
        long j85 = j70 ^ (~(j78 ^ j79));
        jArr[7] = j73 ^ j77;
        jArr[6] = j84;
        jArr[5] = j85;
        jArr[4] = j83;
        jArr[3] = (j54 ^ j57) ^ j80;
        jArr[2] = (j59 ^ j60) ^ j79;
        jArr[1] = j81;
        jArr[0] = j82;
    }

    private void brAesCt64InterleaveIn(long[] jArr, int i2, int[] iArr, int i3) {
        long j2 = ((long) iArr[i3]) & BodyPartID.bodyIdMax;
        long j3 = ((long) iArr[i3 + 1]) & BodyPartID.bodyIdMax;
        long j4 = ((long) iArr[i3 + 2]) & BodyPartID.bodyIdMax;
        long j5 = ((long) iArr[i3 + 3]) & BodyPartID.bodyIdMax;
        long j6 = (j3 << 16) | j3;
        long j7 = (j2 | (j2 << 16)) & 281470681808895L;
        long j8 = j6 & 281470681808895L;
        long j9 = ((j4 << 16) | j4) & 281470681808895L;
        long j10 = (j5 | (j5 << 16)) & 281470681808895L;
        jArr[i2] = ((j7 | (j7 << 8)) & 71777214294589695L) | (((j9 | (j9 << 8)) & 71777214294589695L) << 8);
        long j11 = ((j10 | (j10 << 8)) & 71777214294589695L) << 8;
        jArr[i2 + 4] = j11 | ((j8 | (j8 << 8)) & 71777214294589695L);
    }

    private void brAesCt64InterleaveOut(int[] iArr, long[] jArr, int i2) {
        long j2 = jArr[i2];
        long j3 = j2 & 71777214294589695L;
        long j4 = jArr[i2 + 4];
        long j5 = j4 & 71777214294589695L;
        long j6 = (j2 >>> 8) & 71777214294589695L;
        long j7 = 71777214294589695L & (j4 >>> 8);
        long j8 = (j3 | (j3 >>> 8)) & 281470681808895L;
        long j9 = ((j5 >>> 8) | j5) & 281470681808895L;
        long j10 = (j6 | (j6 >>> 8)) & 281470681808895L;
        long j11 = (j7 | (j7 >>> 8)) & 281470681808895L;
        int i3 = i2 << 2;
        iArr[i3] = (int) (j8 | (j8 >>> 16));
        iArr[i3 + 1] = (int) ((j9 >>> 16) | j9);
        iArr[i3 + 2] = (int) (j10 | (j10 >>> 16));
        iArr[i3 + 3] = (int) ((j11 >>> 16) | j11);
    }

    private void brAesCt64Ortho(long[] jArr) {
        Swapn(jArr, 1, 0, 1);
        Swapn(jArr, 1, 2, 3);
        Swapn(jArr, 1, 4, 5);
        Swapn(jArr, 1, 6, 7);
        Swapn(jArr, 2, 0, 2);
        Swapn(jArr, 2, 1, 3);
        Swapn(jArr, 2, 4, 6);
        Swapn(jArr, 2, 5, 7);
        Swapn(jArr, 4, 0, 4);
        Swapn(jArr, 4, 1, 5);
        Swapn(jArr, 4, 2, 6);
        Swapn(jArr, 4, 3, 7);
    }

    private static void brAesCtBitsliceSbox(int[] iArr) {
        int i2 = iArr[7];
        int i3 = iArr[6];
        int i4 = iArr[5];
        int i5 = iArr[4];
        int i6 = iArr[3];
        int i7 = iArr[2];
        int i8 = iArr[1];
        int i9 = iArr[0];
        int i10 = i5 ^ i7;
        int i11 = i2 ^ i8;
        int i12 = i2 ^ i5;
        int i13 = i2 ^ i7;
        int i14 = i4 ^ i3;
        int i15 = i14 ^ i9;
        int i16 = i15 ^ i5;
        int i17 = i11 ^ i10;
        int i18 = i15 ^ i2;
        int i19 = i15 ^ i8;
        int i20 = i19 ^ i13;
        int i21 = i6 ^ i17;
        int i22 = i7 ^ i21;
        int i23 = i3 ^ i21;
        int i24 = i22 ^ i9;
        int i25 = i22 ^ i14;
        int i26 = i23 ^ i12;
        int i27 = i9 ^ i26;
        int i28 = i25 ^ i26;
        int i29 = i14 ^ i26;
        int i30 = i17 & i22;
        int i31 = (i20 & i24) ^ i30;
        int i32 = i11 & i29;
        int i33 = (i19 & i15) ^ i32;
        int i34 = i12 & i26;
        int i35 = (i10 & i28) ^ i34;
        int i36 = (i13 & i25) ^ i34;
        int i37 = (i31 ^ i35) ^ i23;
        int i38 = (((i16 & i9) ^ i30) ^ i36) ^ (i25 ^ i13);
        int i39 = (i33 ^ i35) ^ (i11 ^ i29);
        int i40 = (((i18 & i27) ^ i32) ^ i36) ^ (i2 ^ i29);
        int i41 = i37 ^ i38;
        int i42 = i37 & i39;
        int i43 = i40 ^ i42;
        int i44 = (i41 & i43) ^ i38;
        int i45 = ((i38 ^ i42) & (i39 ^ i40)) ^ i40;
        int i46 = i40 & (i43 ^ i45);
        int i47 = i46 ^ (i39 ^ i45);
        int i48 = i41 ^ (i44 & (i43 ^ i46));
        int i49 = i48 ^ i47;
        int i50 = i44 ^ i45;
        int i51 = i44 ^ i48;
        int i52 = i45 ^ i47;
        int i53 = i50 ^ i49;
        int i54 = i9 & i45;
        int i55 = i51 & i29;
        int i56 = i48 & i15;
        int i57 = i44 & i27;
        int i58 = i53 & i28;
        int i59 = i47 & i20;
        int i60 = i45 & i16;
        int i61 = i51 & i11;
        int i62 = i48 & i19;
        int i63 = i50 & i12;
        int i64 = i53 & i10;
        int i65 = i49 & i13;
        int i66 = i63 ^ i64;
        int i67 = i57 ^ i62;
        int i68 = (i52 & i17) ^ i59;
        int i69 = (i52 & i22) ^ i55;
        int i70 = i64 ^ i65;
        int i71 = (i54 ^ i61) ^ i69;
        int i72 = i56 ^ i66;
        int i73 = i55 ^ ((i50 & i26) ^ i58);
        int i74 = i66 ^ i71;
        int i75 = (i44 & i18) ^ i71;
        int i76 = (i58 ^ (i49 & i25)) ^ i72;
        int i77 = i68 ^ i72;
        int i78 = i56 ^ i73;
        int i79 = i75 ^ i76;
        int i80 = (i47 & i24) ^ i77;
        int i81 = (~i76) ^ (i61 ^ i67);
        int i82 = (~i74) ^ i67;
        int i83 = i69 ^ i80;
        int i84 = i78 ^ (~i83);
        int i85 = i70 ^ (~(i78 ^ i79));
        iArr[7] = i73 ^ i77;
        iArr[6] = i84;
        iArr[5] = i85;
        iArr[4] = i83;
        iArr[3] = i80 ^ (i54 ^ i57);
        iArr[2] = (i59 ^ i60) ^ i79;
        iArr[1] = i81;
        iArr[0] = i82;
    }

    private void brAesCtOrtho(int[] iArr) {
        Swapn32(iArr, 1, 0, 1);
        Swapn32(iArr, 1, 2, 3);
        Swapn32(iArr, 1, 4, 5);
        Swapn32(iArr, 1, 6, 7);
        Swapn32(iArr, 2, 0, 2);
        Swapn32(iArr, 2, 1, 3);
        Swapn32(iArr, 2, 4, 6);
        Swapn32(iArr, 2, 5, 7);
        Swapn32(iArr, 4, 0, 4);
        Swapn32(iArr, 4, 1, 5);
        Swapn32(iArr, 4, 2, 6);
        Swapn32(iArr, 4, 3, 7);
    }

    private int brDec32Le(byte[] bArr, int i2) {
        return (bArr[i2] & 255) | ((bArr[i2 + 1] << 8) & 65280) | ((bArr[i2 + 2] << 16) & 16711680) | (bArr[i2 + 3] << 24);
    }

    private void brEnc32Le(byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < 4; i4++) {
            bArr[i3 + i4] = (byte) (i2 >> (i4 << 3));
        }
    }

    private void brRangeDec32Le(byte[] bArr, int[] iArr, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = (i3 << 2) + i2;
            iArr[i3] = (bArr[i4 + 3] << 24) | (bArr[i4] & 255) | ((bArr[i4 + 1] << 8) & 65280) | ((bArr[i4 + 2] << 16) & 16711680);
        }
    }

    private void mixColumns(long[] jArr) {
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        long j10 = (j2 >>> 16) | (j2 << 48);
        long j11 = (j3 >>> 16) | (j3 << 48);
        long j12 = (j4 >>> 16) | (j4 << 48);
        long j13 = (j5 >>> 16) | (j5 << 48);
        long j14 = (j6 >>> 16) | (j6 << 48);
        long j15 = (j7 >>> 16) | (j7 << 48);
        long j16 = (j8 >>> 16) | (j8 << 48);
        long j17 = (j9 >>> 16) | (j9 << 48);
        long j18 = j9 ^ j17;
        long j19 = j2 ^ j10;
        jArr[0] = (j18 ^ j10) ^ rotr32(j19);
        long j20 = j3 ^ j11;
        jArr[1] = (((j19 ^ j9) ^ j17) ^ j11) ^ rotr32(j20);
        long j21 = j4 ^ j12;
        jArr[2] = (j20 ^ j12) ^ rotr32(j21);
        long j22 = ((j21 ^ j9) ^ j17) ^ j13;
        long j23 = j5 ^ j13;
        jArr[3] = j22 ^ rotr32(j23);
        long j24 = ((j23 ^ j9) ^ j17) ^ j14;
        long j25 = j6 ^ j14;
        jArr[4] = j24 ^ rotr32(j25);
        long j26 = j25 ^ j15;
        long j27 = j7 ^ j15;
        jArr[5] = j26 ^ rotr32(j27);
        long j28 = j27 ^ j16;
        long j29 = j8 ^ j16;
        jArr[6] = j28 ^ rotr32(j29);
        jArr[7] = rotr32(j18) ^ (j29 ^ j17);
    }

    private void mixColumns32(int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = (i2 >>> 8) | (i2 << 24);
        int i11 = (i3 >>> 8) | (i3 << 24);
        int i12 = (i4 >>> 8) | (i4 << 24);
        int i13 = (i5 >>> 8) | (i5 << 24);
        int i14 = (i6 >>> 8) | (i6 << 24);
        int i15 = (i7 >>> 8) | (i7 << 24);
        int i16 = (i8 >>> 8) | (i8 << 24);
        int i17 = (i9 >>> 8) | (i9 << 24);
        int i18 = i9 ^ i17;
        int i19 = i2 ^ i10;
        iArr[0] = (i18 ^ i10) ^ rotr16(i19);
        int i20 = i3 ^ i11;
        iArr[1] = (((i19 ^ i9) ^ i17) ^ i11) ^ rotr16(i20);
        int i21 = i4 ^ i12;
        iArr[2] = (i20 ^ i12) ^ rotr16(i21);
        int i22 = ((i21 ^ i9) ^ i17) ^ i13;
        int i23 = i5 ^ i13;
        iArr[3] = i22 ^ rotr16(i23);
        int i24 = ((i23 ^ i9) ^ i17) ^ i14;
        int i25 = i6 ^ i14;
        iArr[4] = i24 ^ rotr16(i25);
        int i26 = i25 ^ i15;
        int i27 = i7 ^ i15;
        iArr[5] = i26 ^ rotr16(i27);
        int i28 = i27 ^ i16;
        int i29 = i8 ^ i16;
        iArr[6] = i28 ^ rotr16(i29);
        iArr[7] = rotr16(i18) ^ (i29 ^ i17);
    }

    private int rotr16(int i2) {
        return (i2 << 16) | (i2 >>> 16);
    }

    private long rotr32(long j2) {
        return (j2 >>> 32) | (j2 << 32);
    }

    private void shiftRows(long[] jArr) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            long j2 = jArr[i2];
            jArr[i2] = ((j2 & 1152640029630136320L) << 4) | (65535 & j2) | ((4293918720L & j2) >>> 4) | ((983040 & j2) << 12) | ((280375465082880L & j2) >>> 8) | ((1095216660480L & j2) << 8) | (((-1152921504606846976L) & j2) >>> 12);
        }
    }

    private void shiftRows32(int[] iArr) {
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = iArr[i2];
            iArr[i2] = ((i3 & 1056964608) << 2) | (i3 & 255) | ((64512 & i3) >>> 2) | ((i3 & 768) << 6) | ((15728640 & i3) >>> 4) | ((983040 & i3) << 4) | (((-1073741824) & i3) >>> 6);
        }
    }

    public static void xor(byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4, int i5) {
        for (int i6 = 0; i6 < i5; i6++) {
            bArr3[i4 + i6] = (byte) (bArr[i2 + i6] ^ bArr2[i3 + i6]);
        }
    }

    public void haraka256Perm(byte[] bArr) {
        int[] iArr = new int[8];
        interleaveConstant32(iArr, this.buffer, 0);
        for (int i2 = 0; i2 < 5; i2++) {
            for (int i3 = 0; i3 < 2; i3++) {
                brAesCtBitsliceSbox(iArr);
                shiftRows32(iArr);
                mixColumns32(iArr);
                addRoundKey32(iArr, this.haraka256_rc[(i2 << 1) + i3]);
            }
            for (int i4 = 0; i4 < 8; i4++) {
                int i5 = iArr[i4];
                iArr[i4] = ((i5 & 1077952576) >>> 1) | ((-2122219135) & i5) | ((33686018 & i5) << 1) | ((67372036 & i5) << 2) | ((134744072 & i5) << 3) | ((269488144 & i5) >>> 3) | ((538976288 & i5) >>> 2);
            }
        }
        brAesCtOrtho(iArr);
        for (int i6 = 0; i6 < 4; i6++) {
            int i7 = i6 << 1;
            int i8 = i6 << 2;
            brEnc32Le(bArr, iArr[i7], i8);
            brEnc32Le(bArr, iArr[i7 + 1], i8 + 16);
        }
    }

    public void haraka512Perm(byte[] bArr) {
        int[] iArr = new int[16];
        long[] jArr = new long[8];
        brRangeDec32Le(this.buffer, iArr, 0);
        for (int i2 = 0; i2 < 4; i2++) {
            brAesCt64InterleaveIn(jArr, i2, iArr, i2 << 2);
        }
        brAesCt64Ortho(jArr);
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 2; i4++) {
                brAesCt64BitsliceSbox(jArr);
                shiftRows(jArr);
                mixColumns(jArr);
                addRoundKey(jArr, this.haraka512_rc[(i3 << 1) + i4]);
            }
            for (int i5 = 0; i5 < 8; i5++) {
                long j2 = jArr[i5];
                jArr[i5] = ((j2 & (-8934996522953571328L)) >>> 3) | ((281479271743489L & j2) << 5) | ((562958543486978L & j2) << 12) | ((1125917086973956L & j2) >>> 1) | ((2251834173947912L & j2) << 6) | ((9007336695791648L & j2) << 9) | ((18014673391583296L & j2) >>> 4) | ((36029346783166592L & j2) << 3) | ((2377936887688995072L & j2) >>> 5) | ((148621055480562192L & j2) << 2) | ((576469548530665472L & j2) << 4) | ((1152939097061330944L & j2) >>> 12) | ((4611756388245323776L & j2) >>> 10);
            }
        }
        brAesCt64Ortho(jArr);
        for (int i6 = 0; i6 < 4; i6++) {
            brAesCt64InterleaveOut(iArr, jArr, i6);
        }
        for (int i7 = 0; i7 < 16; i7++) {
            for (int i8 = 0; i8 < 4; i8++) {
                bArr[(i7 << 2) + i8] = (byte) ((iArr[i7] >>> (i8 << 3)) & 255);
            }
        }
    }

    public void interleaveConstant(long[] jArr, byte[] bArr, int i2) {
        int[] iArr = new int[16];
        brRangeDec32Le(bArr, iArr, i2);
        for (int i3 = 0; i3 < 4; i3++) {
            brAesCt64InterleaveIn(jArr, i3, iArr, i3 << 2);
        }
        brAesCt64Ortho(jArr);
    }

    public void interleaveConstant32(int[] iArr, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = i3 << 1;
            int i5 = (i3 << 2) + i2;
            iArr[i4] = brDec32Le(bArr, i5);
            iArr[i4 + 1] = brDec32Le(bArr, i5 + 16);
        }
        brAesCtOrtho(iArr);
    }

    public void reset() {
        this.off = 0;
        Arrays.clear(this.buffer);
    }
}
