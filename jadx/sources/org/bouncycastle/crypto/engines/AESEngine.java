package org.bouncycastle.crypto.engines;

import com.batch.android.x0.h;
import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DefaultMultiBlockCipher;
import org.bouncycastle.crypto.MultiBlockCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class AESEngine extends DefaultMultiBlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int m1 = -2139062144;
    private static final int m2 = 2139062143;
    private static final int m3 = 27;
    private static final int m4 = -1061109568;
    private static final int m5 = 1061109567;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;
    private byte[] s;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, h.a.f24180j, 48, 1, 103, 43, -2, h.a.B, -85, 118, h.a.o, -126, h.a.n, 125, -6, 89, 71, -16, -83, h.a.y, -94, -81, -100, -92, 114, h.a.f24176e, -73, -3, -109, 38, 54, 63, -9, h.a.q, 52, -91, -27, -15, 113, h.a.C, 49, 21, 4, h.a.l, 35, h.a.f24178h, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, h.a.d, 82, 59, h.a.A, -77, 41, -29, 47, -124, 83, h.a.v, 0, -19, 32, -4, -79, 91, 106, h.a.p, -66, 57, 74, 76, 88, h.a.t, h.a.u, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, h.a.E, 33, 16, -1, -13, h.a.w, h.a.r, 12, 19, -20, 95, -105, 68, 23, h.a.f24179i, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, h.a.G, 34, 42, h.a.f24175c, -120, 70, -18, -72, 20, h.a.I, 94, 11, h.a.F, h.a.K, 50, 58, 10, 73, 6, 36, 92, h.a.g, h.a.x, -84, 98, -111, -107, -28, 121, -25, h.a.m, 55, 109, -115, h.a.z, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, h.a.f24181k, -24, h.a.H, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, h.a.f24177f, 29, -98, -31, -8, -104, 17, 105, h.a.D, -114, -108, -101, 30, -121, -23, h.a.s, 85, 40, h.a.J, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, h.a.z, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, h.a.B, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, h.a.f24179i, h.a.I, -23, h.a.p, 84, 123, -108, 50, -90, h.a.g, 35, 61, -18, 76, -107, 11, 66, -6, h.a.f24178h, 78, 8, 46, -95, 102, 40, h.a.D, 36, -78, 118, 91, -94, 73, 109, -117, h.a.v, 37, 114, -8, -10, 100, -122, 104, -104, 22, h.a.y, -92, 92, h.a.q, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, h.a.E, 94, 21, 70, 87, -89, -115, -99, -124, h.a.f24175c, h.a.C, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, h.a.x, 10, -9, -28, 88, 5, -72, -77, 69, 6, h.a.u, 44, 30, -113, h.a.o, 63, 15, 2, h.a.f24177f, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, h.a.G, -22, -105, -14, h.a.t, h.a.s, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, h.a.J, 110, 71, -15, 26, 113, 29, 41, h.a.f24180j, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, h.a.f24181k, h.a.w, 121, 32, -102, h.a.F, h.a.f24176e, -2, 120, h.a.r, 90, -12, 31, h.a.H, -88, 51, -120, 7, h.a.l, 49, -79, 18, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, h.a.n, -100, -17, h.a.d, h.a.K, 59, 77, -82, 42, -11, -80, h.a.m, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, h.a.A, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};
    private static final int[] T0 = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};
    private static final int[] Tinv0 = {1353184337, 1399144830, -1012656358, -1772214470, -882136261, -247096033, -1420232020, -1828461749, 1442459680, -160598355, -1854485368, 625738485, -52959921, -674551099, -2143013594, -1885117771, 1230680542, 1729870373, -1743852987, -507445667, 41234371, 317738113, -1550367091, -956705941, -413167869, -1784901099, -344298049, -631680363, 763608788, -752782248, 694804553, 1154009486, 1787413109, 2021232372, 1799248025, -579749593, -1236278850, 397248752, 1722556617, -1271214467, 407560035, -2110711067, 1613975959, 1165972322, -529046351, -2068943941, 480281086, -1809118983, 1483229296, 436028815, -2022908268, -1208452270, 601060267, -503166094, 1468997603, 715871590, 120122290, 63092015, -1703164538, -1526188077, -226023376, -1297760477, -1167457534, 1552029421, 723308426, -1833666137, -252573709, -1578997426, -839591323, -708967162, 526529745, -1963022652, -1655493068, -1604979806, 853641733, 1978398372, 971801355, -1427152832, 111112542, 1360031421, -108388034, 1023860118, -1375387939, 1186850381, -1249028975, 90031217, 1876166148, -15380384, 620468249, -1746289194, -868007799, 2006899047, -1119688528, -2004121337, 945494503, -605108103, 1191869601, -384875908, -920746760, 0, -2088337399, 1223502642, -1401941730, 1316117100, -67170563, 1446544655, 517320253, 658058550, 1691946762, 564550760, -783000677, 976107044, -1318647284, 266819475, -761860428, -1634624741, 1338359936, -1574904735, 1766553434, 370807324, 179999714, -450191168, 1138762300, 488053522, 185403662, -1379431438, -1180125651, -928440812, -2061897385, 1275557295, -1143105042, -44007517, -1624899081, -1124765092, -985962940, 880737115, 1982415755, -590994485, 1761406390, 1676797112, -891538985, 277177154, 1076008723, 538035844, 2099530373, -130171950, 288553390, 1839278535, 1261411869, -214912292, -330136051, -790380169, 1813426987, -1715900247, -95906799, 577038663, -997393240, 440397984, -668172970, -275762398, -951170681, -1043253031, -22885748, 906744984, -813566554, 685669029, 646887386, -1530942145, -459458004, 227702864, -1681105046, 1648787028, -1038905866, -390539120, 1593260334, -173030526, -1098883681, 2090061929, -1456614033, -1290656305, 999926984, -1484974064, 1852021992, 2075868123, 158869197, -199730834, 28809964, -1466282109, 1701746150, 2129067946, 147831841, -420997649, -644094022, -835293366, -737566742, -696471511, -1347247055, 824393514, 815048134, -1067015627, 935087732, -1496677636, -1328508704, 366520115, 1251476721, -136647615, 240176511, 804688151, -1915335306, 1303441219, 1414376140, -553347356, -474623586, 461924940, -1205916479, 2136040774, 82468509, 1563790337, 1937016826, 776014843, 1511876531, 1389550482, 861278441, 323475053, -1939744870, 2047648055, -1911228327, -1992551445, -299390514, 902390199, -303751967, 1018251130, 1507840668, 1064563285, 2043548696, -1086863501, -355600557, 1537932639, 342834655, -2032450440, -2114736182, 1053059257, 741614648, 1598071746, 1925389590, 203809468, -1958134744, 1100287487, 1895934009, -558691320, -1662733096, -1866377628, 1636092795, 1890988757, 1952214088, 1113045200};

    public AESEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
    }

    private static int FFmulX(int i2) {
        return (((i2 & m1) >>> 7) * 27) ^ ((m2 & i2) << 1);
    }

    private static int FFmulX2(int i2) {
        int i3 = (m5 & i2) << 2;
        int i4 = i2 & m4;
        int i5 = i4 ^ (i4 >>> 1);
        return (i5 >>> 5) ^ (i3 ^ (i5 >>> 2));
    }

    private int bitsOfSecurity() {
        int[][] iArr = this.WorkingKey;
        if (iArr == null) {
            return 256;
        }
        return (iArr.length - 7) << 5;
    }

    private void decryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3, int[][] iArr) {
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2);
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4);
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8);
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12);
        int i4 = this.ROUNDS;
        int[] iArr2 = iArr[i4];
        char c2 = 0;
        int i5 = iLittleEndianToInt ^ iArr2[0];
        int i6 = 1;
        int i7 = iLittleEndianToInt2 ^ iArr2[1];
        char c3 = 2;
        int i8 = iLittleEndianToInt3 ^ iArr2[2];
        int i9 = i4 - 1;
        char c4 = 3;
        int iShift = iLittleEndianToInt4 ^ iArr2[3];
        while (i9 > i6) {
            int[] iArr3 = Tinv0;
            char c5 = c2;
            int i10 = i6;
            int iShift2 = (((iArr3[i5 & 255] ^ shift(iArr3[(iShift >> 8) & 255], 24)) ^ shift(iArr3[(i8 >> 16) & 255], 16)) ^ shift(iArr3[(i7 >> 24) & 255], 8)) ^ iArr[i9][c5];
            char c6 = c3;
            int iShift3 = (((iArr3[i7 & 255] ^ shift(iArr3[(i5 >> 8) & 255], 24)) ^ shift(iArr3[(iShift >> 16) & 255], 16)) ^ shift(iArr3[(i8 >> 24) & 255], 8)) ^ iArr[i9][i10];
            char c7 = c4;
            int iShift4 = (((iArr3[i8 & 255] ^ shift(iArr3[(i7 >> 8) & 255], 24)) ^ shift(iArr3[(i5 >> 16) & 255], 16)) ^ shift(iArr3[(iShift >> 24) & 255], 8)) ^ iArr[i9][c6];
            int iShift5 = ((iArr3[iShift & 255] ^ shift(iArr3[(i8 >> 8) & 255], 24)) ^ shift(iArr3[(i7 >> 16) & 255], 16)) ^ shift(iArr3[(i5 >> 24) & 255], 8);
            int i11 = i9 - 1;
            int i12 = iShift5 ^ iArr[i9][c7];
            int iShift6 = (((iArr3[iShift2 & 255] ^ shift(iArr3[(i12 >> 8) & 255], 24)) ^ shift(iArr3[(iShift4 >> 16) & 255], 16)) ^ shift(iArr3[(iShift3 >> 24) & 255], 8)) ^ iArr[i11][c5];
            int iShift7 = (((iArr3[iShift3 & 255] ^ shift(iArr3[(iShift2 >> 8) & 255], 24)) ^ shift(iArr3[(i12 >> 16) & 255], 16)) ^ shift(iArr3[(iShift4 >> 24) & 255], 8)) ^ iArr[i11][i10];
            int iShift8 = (((iArr3[iShift4 & 255] ^ shift(iArr3[(iShift3 >> 8) & 255], 24)) ^ shift(iArr3[(iShift2 >> 16) & 255], 16)) ^ shift(iArr3[(i12 >> 24) & 255], 8)) ^ iArr[i11][c6];
            i9 -= 2;
            iShift = (((iArr3[i12 & 255] ^ shift(iArr3[(iShift4 >> 8) & 255], 24)) ^ shift(iArr3[(iShift3 >> 16) & 255], 16)) ^ shift(iArr3[(iShift2 >> 24) & 255], 8)) ^ iArr[i11][c7];
            c2 = c5;
            i6 = i10;
            i5 = iShift6;
            i7 = iShift7;
            i8 = iShift8;
            c3 = c6;
            c4 = c7;
        }
        char c8 = c2;
        int i13 = i6;
        char c9 = c3;
        char c10 = c4;
        int[] iArr4 = Tinv0;
        int iShift9 = (((iArr4[i5 & 255] ^ shift(iArr4[(iShift >> 8) & 255], 24)) ^ shift(iArr4[(i8 >> 16) & 255], 16)) ^ shift(iArr4[(i7 >> 24) & 255], 8)) ^ iArr[i9][c8];
        int iShift10 = (((iArr4[i7 & 255] ^ shift(iArr4[(i5 >> 8) & 255], 24)) ^ shift(iArr4[(iShift >> 16) & 255], 16)) ^ shift(iArr4[(i8 >> 24) & 255], 8)) ^ iArr[i9][i13];
        int iShift11 = (((iArr4[i8 & 255] ^ shift(iArr4[(i7 >> 8) & 255], 24)) ^ shift(iArr4[(i5 >> 16) & 255], 16)) ^ shift(iArr4[(iShift >> 24) & 255], 8)) ^ iArr[i9][c9];
        int iShift12 = (((iArr4[iShift & 255] ^ shift(iArr4[(i8 >> 8) & 255], 24)) ^ shift(iArr4[(i7 >> 16) & 255], 16)) ^ shift(iArr4[(i5 >> 24) & 255], 8)) ^ iArr[i9][c10];
        byte[] bArr3 = Si;
        int i14 = bArr3[iShift9 & 255] & 255;
        byte[] bArr4 = this.s;
        int i15 = ((i14 ^ ((bArr4[(iShift12 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iShift11 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iShift10 >> 24) & 255] << 24);
        int[] iArr5 = iArr[c8];
        int i16 = i15 ^ iArr5[c8];
        int i17 = ((((bArr4[iShift10 & 255] & 255) ^ ((bArr4[(iShift9 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iShift12 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iShift11 >> 24) & 255] << 24)) ^ iArr5[i13];
        int i18 = ((((bArr4[iShift11 & 255] & 255) ^ ((bArr3[(iShift10 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iShift9 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iShift12 >> 24) & 255] << 24)) ^ iArr5[c9];
        int i19 = ((bArr4[(iShift9 >> 24) & 255] << 24) ^ (((bArr3[iShift12 & 255] & 255) ^ ((bArr4[(iShift11 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(iShift10 >> 16) & 255] & 255) << 16))) ^ iArr5[c10];
        Pack.intToLittleEndian(i16, bArr2, i3);
        Pack.intToLittleEndian(i17, bArr2, i3 + 4);
        Pack.intToLittleEndian(i18, bArr2, i3 + 8);
        Pack.intToLittleEndian(i19, bArr2, i3 + 12);
    }

    private void encryptBlock(byte[] bArr, int i2, byte[] bArr2, int i3, int[][] iArr) {
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2);
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4);
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8);
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12);
        char c2 = 0;
        int[] iArr2 = iArr[0];
        int i4 = iLittleEndianToInt ^ iArr2[0];
        int i5 = 1;
        int i6 = iLittleEndianToInt2 ^ iArr2[1];
        char c3 = 2;
        int i7 = iLittleEndianToInt3 ^ iArr2[2];
        char c4 = 3;
        int iShift = iLittleEndianToInt4 ^ iArr2[3];
        int i8 = 1;
        while (i8 < this.ROUNDS - i5) {
            int[] iArr3 = T0;
            char c5 = c2;
            int i9 = i5;
            int iShift2 = (((iArr3[i4 & 255] ^ shift(iArr3[(i6 >> 8) & 255], 24)) ^ shift(iArr3[(i7 >> 16) & 255], 16)) ^ shift(iArr3[(iShift >> 24) & 255], 8)) ^ iArr[i8][c5];
            char c6 = c3;
            int iShift3 = (((iArr3[i6 & 255] ^ shift(iArr3[(i7 >> 8) & 255], 24)) ^ shift(iArr3[(iShift >> 16) & 255], 16)) ^ shift(iArr3[(i4 >> 24) & 255], 8)) ^ iArr[i8][i9];
            char c7 = c4;
            int iShift4 = (((iArr3[i7 & 255] ^ shift(iArr3[(iShift >> 8) & 255], 24)) ^ shift(iArr3[(i4 >> 16) & 255], 16)) ^ shift(iArr3[(i6 >> 24) & 255], 8)) ^ iArr[i8][c6];
            int iShift5 = ((iArr3[iShift & 255] ^ shift(iArr3[(i4 >> 8) & 255], 24)) ^ shift(iArr3[(i6 >> 16) & 255], 16)) ^ shift(iArr3[(i7 >> 24) & 255], 8);
            int i10 = i8 + 1;
            int i11 = iShift5 ^ iArr[i8][c7];
            int iShift6 = (((iArr3[iShift2 & 255] ^ shift(iArr3[(iShift3 >> 8) & 255], 24)) ^ shift(iArr3[(iShift4 >> 16) & 255], 16)) ^ shift(iArr3[(i11 >> 24) & 255], 8)) ^ iArr[i10][c5];
            int iShift7 = (((iArr3[iShift3 & 255] ^ shift(iArr3[(iShift4 >> 8) & 255], 24)) ^ shift(iArr3[(i11 >> 16) & 255], 16)) ^ shift(iArr3[(iShift2 >> 24) & 255], 8)) ^ iArr[i10][i9];
            int iShift8 = (((iArr3[iShift4 & 255] ^ shift(iArr3[(i11 >> 8) & 255], 24)) ^ shift(iArr3[(iShift2 >> 16) & 255], 16)) ^ shift(iArr3[(iShift3 >> 24) & 255], 8)) ^ iArr[i10][c6];
            i8 += 2;
            iShift = (((iArr3[i11 & 255] ^ shift(iArr3[(iShift2 >> 8) & 255], 24)) ^ shift(iArr3[(iShift3 >> 16) & 255], 16)) ^ shift(iArr3[(iShift4 >> 24) & 255], 8)) ^ iArr[i10][c7];
            c2 = c5;
            i5 = i9;
            i4 = iShift6;
            i6 = iShift7;
            i7 = iShift8;
            c3 = c6;
            c4 = c7;
        }
        char c8 = c2;
        int i12 = i5;
        char c9 = c3;
        char c10 = c4;
        int[] iArr4 = T0;
        int iShift9 = (((iArr4[i4 & 255] ^ shift(iArr4[(i6 >> 8) & 255], 24)) ^ shift(iArr4[(i7 >> 16) & 255], 16)) ^ shift(iArr4[(iShift >> 24) & 255], 8)) ^ iArr[i8][c8];
        int iShift10 = (((iArr4[i6 & 255] ^ shift(iArr4[(i7 >> 8) & 255], 24)) ^ shift(iArr4[(iShift >> 16) & 255], 16)) ^ shift(iArr4[(i4 >> 24) & 255], 8)) ^ iArr[i8][i12];
        int iShift11 = (((iArr4[i7 & 255] ^ shift(iArr4[(iShift >> 8) & 255], 24)) ^ shift(iArr4[(i4 >> 16) & 255], 16)) ^ shift(iArr4[(i6 >> 24) & 255], 8)) ^ iArr[i8][c9];
        int iShift12 = (((iArr4[iShift & 255] ^ shift(iArr4[(i4 >> 8) & 255], 24)) ^ shift(iArr4[(i6 >> 16) & 255], 16)) ^ shift(iArr4[(i7 >> 24) & 255], 8)) ^ iArr[i8][c10];
        byte[] bArr3 = S;
        int i13 = (bArr3[iShift9 & 255] & 255) ^ ((bArr3[(iShift10 >> 8) & 255] & 255) << 8);
        byte[] bArr4 = this.s;
        int i14 = (i13 ^ ((bArr4[(iShift11 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iShift12 >> 24) & 255] << 24);
        int[] iArr5 = iArr[i8 + 1];
        int i15 = i14 ^ iArr5[c8];
        int i16 = ((((bArr4[iShift10 & 255] & 255) ^ ((bArr3[(iShift11 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iShift12 >> 16) & 255] & 255) << 16)) ^ (bArr4[(iShift9 >> 24) & 255] << 24)) ^ iArr5[i12];
        int i17 = ((((bArr4[iShift11 & 255] & 255) ^ ((bArr3[(iShift12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(iShift9 >> 16) & 255] & 255) << 16)) ^ (bArr3[(iShift10 >> 24) & 255] << 24)) ^ iArr5[c9];
        int i18 = ((((bArr4[(iShift10 >> 16) & 255] & 255) << 16) ^ ((bArr4[iShift12 & 255] & 255) ^ ((bArr4[(iShift9 >> 8) & 255] & 255) << 8))) ^ (bArr3[(iShift11 >> 24) & 255] << 24)) ^ iArr5[c10];
        Pack.intToLittleEndian(i15, bArr2, i3);
        Pack.intToLittleEndian(i16, bArr2, i3 + 4);
        Pack.intToLittleEndian(i17, bArr2, i3 + 8);
        Pack.intToLittleEndian(i18, bArr2, i3 + 12);
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z) {
        int i2;
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            md.n("Key length not 128/192/256 bits.");
            return null;
        }
        int i3 = length >>> 2;
        this.ROUNDS = i3 + 6;
        int i4 = 1;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i3 + 7, 4);
        char c2 = 3;
        if (i3 == 4) {
            i2 = 1;
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt2;
            int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt3;
            int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt4;
            for (int i5 = 1; i5 <= 10; i5++) {
                iLittleEndianToInt ^= subWord(shift(iLittleEndianToInt4, 8)) ^ rcon[i5 - 1];
                int[] iArr2 = iArr[i5];
                iArr2[0] = iLittleEndianToInt;
                iLittleEndianToInt2 ^= iLittleEndianToInt;
                iArr2[1] = iLittleEndianToInt2;
                iLittleEndianToInt3 ^= iLittleEndianToInt2;
                iArr2[2] = iLittleEndianToInt3;
                iLittleEndianToInt4 ^= iLittleEndianToInt3;
                iArr2[3] = iLittleEndianToInt4;
            }
        } else if (i3 == 6) {
            i2 = 1;
            int iLittleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt5;
            int iLittleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt6;
            int iLittleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt7;
            int iLittleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt8;
            int iLittleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
            int iLittleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
            int i6 = 1;
            int i7 = 1;
            while (true) {
                int[] iArr3 = iArr[i6];
                iArr3[0] = iLittleEndianToInt9;
                iArr3[1] = iLittleEndianToInt10;
                int iSubWord = iLittleEndianToInt5 ^ (subWord(shift(iLittleEndianToInt10, 8)) ^ i7);
                int[] iArr4 = iArr[i6];
                iArr4[2] = iSubWord;
                int i8 = iLittleEndianToInt6 ^ iSubWord;
                iArr4[3] = i8;
                int i9 = iLittleEndianToInt7 ^ i8;
                int[] iArr5 = iArr[i6 + 1];
                iArr5[0] = i9;
                int i10 = iLittleEndianToInt8 ^ i9;
                iArr5[1] = i10;
                int i11 = iLittleEndianToInt9 ^ i10;
                iArr5[2] = i11;
                int i12 = iLittleEndianToInt10 ^ i11;
                iArr5[3] = i12;
                int iSubWord2 = subWord(shift(i12, 8)) ^ (i7 << 1);
                i7 <<= 2;
                iLittleEndianToInt5 = iSubWord ^ iSubWord2;
                int[] iArr6 = iArr[i6 + 2];
                iArr6[0] = iLittleEndianToInt5;
                iLittleEndianToInt6 = i8 ^ iLittleEndianToInt5;
                iArr6[1] = iLittleEndianToInt6;
                iLittleEndianToInt7 = i9 ^ iLittleEndianToInt6;
                iArr6[2] = iLittleEndianToInt7;
                iLittleEndianToInt8 = i10 ^ iLittleEndianToInt7;
                iArr6[3] = iLittleEndianToInt8;
                i6 += 3;
                if (i6 >= 13) {
                    break;
                }
                iLittleEndianToInt9 = i11 ^ iLittleEndianToInt8;
                iLittleEndianToInt10 = i12 ^ iLittleEndianToInt9;
            }
        } else {
            if (i3 != 8) {
                md.k("Should never get here");
                return null;
            }
            int iLittleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt11;
            int iLittleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt12;
            int iLittleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt13;
            int iLittleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt14;
            int iLittleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = iLittleEndianToInt15;
            int iLittleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = iLittleEndianToInt16;
            int iLittleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
            iArr[1][2] = iLittleEndianToInt17;
            int iLittleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
            iArr[1][3] = iLittleEndianToInt18;
            int i13 = 1;
            int i14 = 2;
            while (true) {
                int iSubWord3 = subWord(shift(iLittleEndianToInt18, 8)) ^ i13;
                i13 <<= i4;
                iLittleEndianToInt11 ^= iSubWord3;
                int[] iArr7 = iArr[i14];
                iArr7[0] = iLittleEndianToInt11;
                iLittleEndianToInt12 ^= iLittleEndianToInt11;
                iArr7[i4] = iLittleEndianToInt12;
                iLittleEndianToInt13 ^= iLittleEndianToInt12;
                iArr7[2] = iLittleEndianToInt13;
                iLittleEndianToInt14 ^= iLittleEndianToInt13;
                iArr7[c2] = iLittleEndianToInt14;
                i2 = i4;
                int i15 = i14 + 1;
                char c3 = c2;
                if (i15 >= 15) {
                    break;
                }
                iLittleEndianToInt15 ^= subWord(iLittleEndianToInt14);
                int[] iArr8 = iArr[i15];
                iArr8[0] = iLittleEndianToInt15;
                iLittleEndianToInt16 ^= iLittleEndianToInt15;
                iArr8[i2] = iLittleEndianToInt16;
                iLittleEndianToInt17 ^= iLittleEndianToInt16;
                iArr8[2] = iLittleEndianToInt17;
                iLittleEndianToInt18 ^= iLittleEndianToInt17;
                iArr8[c3] = iLittleEndianToInt18;
                i14 += 2;
                i4 = i2;
                c2 = c3;
            }
        }
        if (!z) {
            for (int i16 = i2; i16 < this.ROUNDS; i16++) {
                for (int i17 = 0; i17 < 4; i17++) {
                    int[] iArr9 = iArr[i16];
                    iArr9[i17] = inv_mcol(iArr9[i17]);
                }
            }
        }
        return iArr;
    }

    private static int inv_mcol(int i2) {
        int iShift = shift(i2, 8) ^ i2;
        int iFFmulX = i2 ^ FFmulX(iShift);
        int iFFmulX2 = iShift ^ FFmulX2(iFFmulX);
        return iFFmulX ^ (iFFmulX2 ^ shift(iFFmulX2, 16));
    }

    public static MultiBlockCipher newInstance() {
        return new AESEngine();
    }

    private static int shift(int i2, int i3) {
        return (i2 << (-i3)) | (i2 >>> i3);
    }

    private static int subWord(int i2) {
        byte[] bArr = S;
        return (bArr[(i2 >> 24) & 255] << 24) | (bArr[i2 & 255] & 255) | ((bArr[(i2 >> 8) & 255] & 255) << 8) | ((bArr[(i2 >> 16) & 255] & 255) << 16);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n(a.l("invalid parameter passed to AES init - ", cipherParameters));
            return;
        }
        this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z);
        this.forEncryption = z;
        if (z) {
            this.s = Arrays.clone(S);
        } else {
            this.s = Arrays.clone(Si);
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity(), cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i2, byte[] bArr2, int i3) {
        int[][] iArr = this.WorkingKey;
        if (iArr == null) {
            md.k("AES engine not initialised");
            return 0;
        }
        if (i2 > bArr.length - 16) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i3 > bArr2.length - 16) {
            mt.n("output buffer too short");
            return 0;
        }
        if (this.forEncryption) {
            encryptBlock(bArr, i2, bArr2, i3, iArr);
        } else {
            decryptBlock(bArr, i2, bArr2, i3, iArr);
        }
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
