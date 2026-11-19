package okhttp3.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import defpackage.no0;
import io.jsonwebtoken.JwtParser;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.idn.IdnaMappingTable;
import okhttp3.internal.idn.IdnaMappingTableInstanceKt;
import okhttp3.internal.idn.IdnaMappingTableKt;
import okhttp3.internal.idn.Punycode;
import okio.Buffer;
import okio.ByteString;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class _HostnamesCommonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f77015a = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* JADX WARN: Code duplicated, block: B:55:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00af A[LOOP:1: B:54:0x00a3->B:57:0x00af, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x00b5 A[EDGE_INSN: B:78:0x00b5->B:58:0x00b5 BREAK  A[LOOP:1: B:54:0x00a3->B:57:0x00af], SYNTHETIC] */
    public static final byte[] a(int i2, int i3, String str) {
        int i4;
        int i5;
        int iN;
        str.getClass();
        byte[] bArr = new byte[16];
        int i6 = i2;
        int i7 = 0;
        int i8 = -1;
        int i9 = -1;
        while (i6 < i3) {
            if (i7 == 16) {
                return null;
            }
            int i10 = i6 + 2;
            if (i10 <= i3 && StringsKt.O(str, i6, "::", false)) {
                if (i8 != -1) {
                    return null;
                }
                i7 += 2;
                i8 = i7;
                if (i10 == i3) {
                    break;
                }
                i9 = i10;
                i4 = 0;
                i6 = i9;
                while (i6 < i3) {
                    iN = _UtilCommonKt.n(str.charAt(i6));
                    if (iN != -1) {
                        break;
                        break;
                    }
                    i4 = (i4 << 4) + iN;
                    i6++;
                }
                i5 = i6 - i9;
                return i5 == 0 ? null : null;
            }
            if (i7 != 0) {
                if (!StringsKt.O(str, i6, ":", false)) {
                    if (!StringsKt.O(str, i6, FileUtils.HIDDEN_PREFIX, false)) {
                        return null;
                    }
                    int i11 = i7 - 2;
                    int i12 = i11;
                    while (i9 < i3) {
                        if (i12 == 16) {
                            return null;
                        }
                        if (i12 != i11) {
                            if (str.charAt(i9) != '.') {
                                return null;
                            }
                            i9++;
                        }
                        int i13 = 0;
                        int i14 = i9;
                        while (i14 < i3) {
                            char cCharAt = str.charAt(i14);
                            if (Intrinsics.d(cCharAt, 48) < 0 || Intrinsics.d(cCharAt, 57) > 0) {
                                break;
                            }
                            if ((i13 == 0 && i9 != i14) || (i13 = ((i13 * 10) + cCharAt) - 48) > 255) {
                                return null;
                            }
                            i14++;
                        }
                        if (i14 - i9 == 0) {
                            return null;
                        }
                        bArr[i12] = (byte) i13;
                        i12++;
                        i9 = i14;
                    }
                    if (i12 != i7 + 2) {
                        return null;
                    }
                    i7 += 2;
                    break;
                }
                i6++;
            }
            i9 = i6;
            i4 = 0;
            i6 = i9;
            while (i6 < i3) {
                iN = _UtilCommonKt.n(str.charAt(i6));
                if (iN != -1) {
                    break;
                }
                i4 = (i4 << 4) + iN;
                i6++;
            }
            i5 = i6 - i9;
            if (i5 == 0 && i5 <= 4) {
                int i15 = i7 + 1;
                bArr[i7] = (byte) (255 & (i4 >>> 8));
                i7 += 2;
                bArr[i15] = (byte) (i4 & 255);
            }
        }
        if (i7 != 16) {
            if (i8 == -1) {
                return null;
            }
            ArraysKt.j(16 - (i7 - i8), bArr, i8, bArr, i7);
            Arrays.fill(bArr, i8, (16 - i7) + i8, (byte) 0);
        }
        return bArr;
    }

    /* JADX WARN: Code duplicated, block: B:171:0x0368  */
    /* JADX WARN: Code duplicated, block: B:213:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:214:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:218:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:221:0x040e A[LOOP:19: B:170:0x0366->B:221:0x040e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:225:0x0431 A[LOOP:21: B:223:0x042b->B:225:0x0431, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:232:0x0462  */
    /* JADX WARN: Code duplicated, block: B:235:0x0472  */
    /* JADX WARN: Code duplicated, block: B:237:0x0480  */
    /* JADX WARN: Code duplicated, block: B:239:0x048a  */
    /* JADX WARN: Code duplicated, block: B:242:0x048e  */
    /* JADX WARN: Code duplicated, block: B:246:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:265:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:270:0x0504  */
    /* JADX WARN: Code duplicated, block: B:274:0x0512  */
    /* JADX WARN: Code duplicated, block: B:276:0x051c  */
    /* JADX WARN: Code duplicated, block: B:279:0x0527  */
    /* JADX WARN: Code duplicated, block: B:282:0x0531  */
    /* JADX WARN: Code duplicated, block: B:286:0x0542  */
    /* JADX WARN: Code duplicated, block: B:288:0x0546  */
    /* JADX WARN: Code duplicated, block: B:294:0x055e  */
    /* JADX WARN: Code duplicated, block: B:297:0x0569  */
    /* JADX WARN: Code duplicated, block: B:302:0x057b  */
    /* JADX WARN: Code duplicated, block: B:304:0x0580  */
    /* JADX WARN: Code duplicated, block: B:325:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:326:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:329:0x05ed A[LOOP:15: B:283:0x0533->B:329:0x05ed, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:333:0x05fd A[LOOP:11: B:241:0x048c->B:333:0x05fd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:336:0x060d A[LOOP:10: B:236:0x047e->B:336:0x060d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:429:0x040b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:430:0x040b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:432:0x05f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:433:0x023b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:434:0x023b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:435:0x0619 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:436:0x0619 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:437:0x0606 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:438:0x0496 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:445:0x04f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:447:0x04e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:449:0x05fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:450:0x054e A[EDGE_INSN: B:450:0x054e->B:291:0x054e BREAK  A[LOOP:15: B:283:0x0533->B:329:0x05ed], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:452:0x0584 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:453:0x05e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:454:0x0575 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:455:0x057d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:466:0x0425 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v15, types: [int] */
    /* JADX WARN: Type inference failed for: r5v9, types: [char] */
    public static final String b(String str) {
        int i2;
        String str2;
        int i3;
        String strH;
        String strNormalize;
        int length;
        Buffer buffer;
        int i4;
        String strH2;
        int iU;
        int i5;
        ArrayList arrayList;
        Iterator it;
        int i6;
        int i7;
        int i8;
        int i9;
        int iA;
        Iterator it2;
        Object next;
        int iIntValue;
        int i10;
        int i11;
        Iterator it3;
        int iIntValue2;
        int i12;
        int i13;
        int i14;
        boolean z;
        int iIntValue3;
        Object next2;
        int iIntValue4;
        int iIntValue5;
        int iCharAt;
        int i15;
        int iA2;
        int i16;
        Iterator it4;
        int i17;
        int i18;
        boolean z2;
        int size;
        int size2;
        int i19;
        int i20;
        int i21;
        str.getClass();
        int i22 = 0;
        boolean zK = StringsKt.k(str, ":", false);
        char c2 = JwtParser.SEPARATOR_CHAR;
        char c3 = '\n';
        int i23 = 4;
        int i24 = -1;
        int i25 = 1;
        char c4 = 2;
        String str3 = null;
        if (zK) {
            byte[] bArrA = (StringsKt.P(str, "[", false) && StringsKt.p(str, "]", false)) ? a(1, str.length() - 1, str) : a(0, str.length(), str);
            if (bArrA == null) {
                return null;
            }
            if (bArrA.length == 16) {
                int i26 = 0;
                while (true) {
                    if (i26 >= 10) {
                        if (bArrA[10] != -1 || bArrA[11] != -1) {
                            break;
                            break;
                        }
                        IntRange intRangeJ = RangesKt.j(12, 16);
                        intRangeJ.getClass();
                        if (!intRangeJ.isEmpty()) {
                            bArrA = ArraysKt.o(bArrA, intRangeJ.f71951b, intRangeJ.f71952c + 1);
                            break;
                        }
                        bArrA = new byte[0];
                        break;
                    }
                    if (bArrA[i26] != 0) {
                        break;
                    }
                    i26++;
                }
            }
            if (bArrA.length != 16) {
                if (bArrA.length != 4) {
                    md.h(d21.d('\'', "Invalid IPv6 address: '", str));
                    return null;
                }
                if (bArrA.length != 4) {
                    md.n("Failed requirement.");
                    return null;
                }
                Buffer buffer2 = new Buffer();
                byte b2 = bArrA[0];
                byte[] bArr = _UtilCommonKt.f77016a;
                buffer2.n0(b2 & 255);
                buffer2.m0(46);
                buffer2.n0(bArrA[1] & 255);
                buffer2.m0(46);
                buffer2.n0(bArrA[2] & 255);
                buffer2.m0(46);
                buffer2.n0(bArrA[3] & 255);
                return buffer2.H();
            }
            int i27 = 0;
            int i28 = 0;
            while (i27 < bArrA.length) {
                int i29 = i27;
                while (i29 < 16 && bArrA[i29] == 0 && bArrA[i29 + 1] == 0) {
                    i29 += 2;
                }
                int i30 = i29 - i27;
                if (i30 > i28 && i30 >= 4) {
                    i24 = i27;
                    i28 = i30;
                }
                i27 = i29 + 2;
            }
            Buffer buffer3 = new Buffer();
            while (i22 < bArrA.length) {
                if (i22 == i24) {
                    buffer3.m0(58);
                    i22 += i28;
                    if (i22 == 16) {
                        buffer3.m0(58);
                    }
                } else {
                    if (i22 > 0) {
                        buffer3.m0(58);
                    }
                    byte b3 = bArrA[i22];
                    byte[] bArr2 = _UtilCommonKt.f77016a;
                    buffer3.o0(((b3 & 255) << 8) | (bArrA[i22 + 1] & 255));
                    i22 += 2;
                }
            }
            return buffer3.H();
        }
        Buffer buffer4 = new Buffer();
        buffer4.M0(str);
        Buffer buffer5 = new Buffer();
        while (true) {
            char c5 = '{';
            if (buffer4.Z0()) {
                i2 = i25;
                str2 = str3;
                String strNormalize2 = Normalizer.normalize(buffer5.H(), Normalizer.Form.NFC);
                strNormalize2.getClass();
                buffer4.M0(strNormalize2);
                ByteString byteString = Punycode.f77306a;
                String strH3 = buffer4.H();
                int length2 = strH3.length();
                Buffer buffer6 = new Buffer();
                int i31 = 0;
                while (true) {
                    int i32 = Integer.MAX_VALUE;
                    int i33 = 36;
                    if (i31 < length2) {
                        int iU2 = StringsKt.u(strH3, c2, i31, i23);
                        if (iU2 == -1) {
                            iU2 = length2;
                        }
                        String str4 = strH3;
                        int i34 = i31;
                        if (str4.regionMatches(true, i34, "xn--", 0, 4)) {
                            int i35 = i34 + 4;
                            ArrayList arrayList2 = new ArrayList();
                            int iZ = StringsKt.z(str4, '-', iU2, i23);
                            char c6 = '[';
                            char c7 = 'a';
                            if (iZ >= i35) {
                                while (true) {
                                    if (i35 < iZ) {
                                        int i36 = i35 + 1;
                                        char cCharAt = str4.charAt(i35);
                                        if (('a' > cCharAt || cCharAt >= c5) && (('A' > cCharAt || cCharAt >= '[') && (('0' > cCharAt || cCharAt >= ':') && cCharAt != '-'))) {
                                            i3 = Integer.MAX_VALUE;
                                        } else {
                                            arrayList2.add(Integer.valueOf(cCharAt));
                                            i35 = i36;
                                        }
                                    } else {
                                        i35++;
                                        i15 = 128;
                                        iA2 = 72;
                                        i16 = 0;
                                        while (true) {
                                            if (i35 < iU2) {
                                                IntProgression intProgressionI = RangesKt.i(RangesKt.j(i33, i32), i33);
                                                int i37 = intProgressionI.f71951b;
                                                i3 = i32;
                                                int i38 = intProgressionI.f71952c;
                                                i17 = intProgressionI.d;
                                                if ((i17 <= 0 && i37 <= i38) || (i17 < 0 && i38 <= i37)) {
                                                    i18 = i16;
                                                    int i39 = i2;
                                                    while (true) {
                                                        if (i35 != iU2) {
                                                            int i40 = i35 + 1;
                                                            char cCharAt2 = str4.charAt(i35);
                                                            if (c7 <= cCharAt2 && cCharAt2 < c5) {
                                                                i19 = cCharAt2 - 'a';
                                                            } else if ('A' <= cCharAt2 && cCharAt2 < c6) {
                                                                i19 = cCharAt2 - 'A';
                                                            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                                                                i19 = cCharAt2 - 22;
                                                            }
                                                            int i41 = i39;
                                                            int i42 = i19 * i41;
                                                            int i43 = i18;
                                                            if (i43 <= i3 - i42) {
                                                                i18 = i43 + i42;
                                                                int i44 = i37 <= iA2 ? i2 : i37 >= iA2 + 26 ? 26 : i37 - iA2;
                                                                if (i19 >= i44) {
                                                                    int i45 = 36 - i44;
                                                                    if (i41 <= i3 / i45) {
                                                                        i39 = i41 * i45;
                                                                        if (i37 != i38) {
                                                                            i37 += i17;
                                                                            i35 = i40;
                                                                            c7 = 'a';
                                                                            c6 = '[';
                                                                            c5 = '{';
                                                                        }
                                                                    }
                                                                }
                                                                i35 = i40;
                                                            }
                                                        }
                                                    }
                                                }
                                                int i46 = i18 - i16;
                                                int size3 = arrayList2.size() + 1;
                                                if (i16 == 0) {
                                                    z2 = i2;
                                                } else {
                                                    z2 = 0;
                                                }
                                                iA2 = Punycode.a(i46, size3, z2);
                                                size = i18 / (arrayList2.size() + 1);
                                                if (i15 > i3 - size) {
                                                    i15 += size;
                                                    size2 = i18 % (arrayList2.size() + 1);
                                                    if (i15 > 1114111) {
                                                        arrayList2.add(size2, Integer.valueOf(i15));
                                                        i16 = size2 + 1;
                                                        i32 = i3;
                                                        c7 = 'a';
                                                        i33 = 36;
                                                        c6 = '[';
                                                        c5 = '{';
                                                    }
                                                }
                                            } else {
                                                i3 = i32;
                                                it4 = arrayList2.iterator();
                                                while (it4.hasNext()) {
                                                    buffer6.P0(((Number) it4.next()).intValue());
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                i15 = 128;
                                iA2 = 72;
                                i16 = 0;
                                while (true) {
                                    if (i35 < iU2) {
                                        IntProgression intProgressionI2 = RangesKt.i(RangesKt.j(i33, i32), i33);
                                        int i310 = intProgressionI2.f71951b;
                                        i3 = i32;
                                        int i311 = intProgressionI2.f71952c;
                                        i17 = intProgressionI2.d;
                                        i18 = i17 <= 0 ? i16 : i16;
                                        int i47 = i18 - i16;
                                        int size4 = arrayList2.size() + 1;
                                        if (i16 == 0) {
                                            z2 = i2;
                                        } else {
                                            z2 = 0;
                                        }
                                        iA2 = Punycode.a(i47, size4, z2);
                                        size = i18 / (arrayList2.size() + 1);
                                        if (i15 > i3 - size) {
                                            i15 += size;
                                            size2 = i18 % (arrayList2.size() + 1);
                                            if (i15 > 1114111) {
                                                arrayList2.add(size2, Integer.valueOf(i15));
                                                i16 = size2 + 1;
                                                i32 = i3;
                                                c7 = 'a';
                                                i33 = 36;
                                                c6 = '[';
                                                c5 = '{';
                                            }
                                        }
                                    } else {
                                        i3 = i32;
                                        it4 = arrayList2.iterator();
                                        while (it4.hasNext()) {
                                            buffer6.P0(((Number) it4.next()).intValue());
                                        }
                                    }
                                }
                            }
                            strH = str2;
                            if (strH == null) {
                                strNormalize = Normalizer.normalize(strH, Normalizer.Form.NFC);
                                strNormalize.getClass();
                                if (strH.equals(strNormalize)) {
                                    break;
                                }
                                ByteString byteString2 = Punycode.f77306a;
                                length = strH.length();
                                buffer = new Buffer();
                                i4 = 0;
                                while (true) {
                                    if (i4 >= length) {
                                        iU = StringsKt.u(strH, JwtParser.SEPARATOR_CHAR, i4, 4);
                                        if (iU == -1) {
                                            iU = length;
                                        }
                                        i5 = i4;
                                        while (true) {
                                            if (i5 < iU) {
                                                buffer.I0(i4, iU, strH);
                                            } else if (strH.charAt(i5) >= 128) {
                                                buffer.l0(Punycode.f77306a);
                                                arrayList = new ArrayList();
                                                while (i4 < iU) {
                                                    iCharAt = strH.charAt(i4);
                                                    if (55296 > iCharAt && iCharAt < 57344) {
                                                        int i48 = i4 + 1;
                                                        char cCharAt3 = i48 < iU ? strH.charAt(i48) : (char) 0;
                                                        if (Character.isLowSurrogate(iCharAt) || !Character.isLowSurrogate(cCharAt3)) {
                                                            iCharAt = 63;
                                                        } else {
                                                            iCharAt = 65536 + (((iCharAt & 1023) << 10) | (cCharAt3 & 1023));
                                                            i4 = i48;
                                                        }
                                                    }
                                                    arrayList.add(Integer.valueOf(iCharAt));
                                                    i4++;
                                                }
                                                it = arrayList.iterator();
                                                i6 = 0;
                                                while (it.hasNext()) {
                                                    iIntValue5 = ((Number) it.next()).intValue();
                                                    if (iIntValue5 < 128) {
                                                        buffer.m0(iIntValue5);
                                                        i6++;
                                                    }
                                                }
                                                if (i6 > 0) {
                                                    buffer.m0(45);
                                                }
                                                i7 = i6;
                                                i8 = 128;
                                                i9 = 0;
                                                iA = 72;
                                                while (true) {
                                                    if (i7 < arrayList.size()) {
                                                        it2 = arrayList.iterator();
                                                        if (it2.hasNext()) {
                                                            b21.x();
                                                            return str2;
                                                        }
                                                        next = it2.next();
                                                        if (it2.hasNext()) {
                                                            iIntValue3 = ((Number) next).intValue();
                                                            if (iIntValue3 < i8) {
                                                                iIntValue3 = i3;
                                                            }
                                                            while (true) {
                                                                next2 = it2.next();
                                                                iIntValue4 = ((Number) next2).intValue();
                                                                if (iIntValue4 < i8) {
                                                                    iIntValue4 = i3;
                                                                }
                                                                if (iIntValue3 > iIntValue4) {
                                                                    iIntValue3 = iIntValue4;
                                                                    next = next2;
                                                                }
                                                                if (!it2.hasNext()) {
                                                                    break;
                                                                }
                                                                i3 = Integer.MAX_VALUE;
                                                            }
                                                        }
                                                        iIntValue = ((Number) next).intValue();
                                                        i10 = (i7 + 1) * (iIntValue - i8);
                                                        if (i9 > i3 - i10) {
                                                            i11 = i9 + i10;
                                                            it3 = arrayList.iterator();
                                                            while (true) {
                                                                if (it3.hasNext()) {
                                                                    iIntValue2 = ((Number) it3.next()).intValue();
                                                                    if (iIntValue2 < iIntValue) {
                                                                        i12 = i3;
                                                                        if (i11 == i12) {
                                                                            i11++;
                                                                        }
                                                                    } else {
                                                                        i12 = i3;
                                                                        if (iIntValue2 == iIntValue) {
                                                                            IntProgression intProgressionI3 = RangesKt.i(RangesKt.j(36, i12), 36);
                                                                            int i49 = intProgressionI3.f71951b;
                                                                            int i50 = intProgressionI3.f71952c;
                                                                            i13 = intProgressionI3.d;
                                                                            if ((i13 <= 0 && i49 <= i50) || (i13 < 0 && i50 <= i49)) {
                                                                                i14 = i11;
                                                                                while (true) {
                                                                                    int i51 = i49 <= iA ? i2 : i49 >= iA + 26 ? 26 : i49 - iA;
                                                                                    if (i14 < i51) {
                                                                                        break;
                                                                                    }
                                                                                    int i52 = i14 - i51;
                                                                                    int i53 = 36 - i51;
                                                                                    buffer.m0(Punycode.b((i52 % i53) + i51));
                                                                                    i14 = i52 / i53;
                                                                                    if (i49 == i50) {
                                                                                        break;
                                                                                    }
                                                                                    i49 += i13;
                                                                                }
                                                                            }
                                                                            buffer.m0(Punycode.b(i14));
                                                                            int i54 = i7 + 1;
                                                                            if (i7 == i6) {
                                                                                z = i2;
                                                                            } else {
                                                                                z = 0;
                                                                            }
                                                                            iA = Punycode.a(i11, i54, z);
                                                                            i7 = i54;
                                                                            i11 = 0;
                                                                            i3 = Integer.MAX_VALUE;
                                                                        }
                                                                    }
                                                                    i3 = i12;
                                                                } else {
                                                                    i9 = i11 + 1;
                                                                    i8 = iIntValue + 1;
                                                                    i3 = Integer.MAX_VALUE;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                i5++;
                                                i3 = Integer.MAX_VALUE;
                                            }
                                            if (iU < length) {
                                                buffer.m0(46);
                                                i4 = iU + 1;
                                                i3 = Integer.MAX_VALUE;
                                            }
                                        }
                                    }
                                    strH2 = buffer.H();
                                    break;
                                }
                            }
                            break;
                        }
                        buffer6.I0(i34, iU2, str4);
                        i3 = Integer.MAX_VALUE;
                        if (iU2 < length2) {
                            buffer6.m0(46);
                            i31 = iU2 + 1;
                            strH3 = str4;
                            c2 = JwtParser.SEPARATOR_CHAR;
                            i23 = 4;
                            c5 = '{';
                        }
                    } else {
                        i3 = Integer.MAX_VALUE;
                    }
                    strH = buffer6.H();
                    if (strH == null) {
                        strNormalize = Normalizer.normalize(strH, Normalizer.Form.NFC);
                        strNormalize.getClass();
                        if (strH.equals(strNormalize)) {
                            ByteString byteString3 = Punycode.f77306a;
                            length = strH.length();
                            buffer = new Buffer();
                            i4 = 0;
                            while (true) {
                                if (i4 >= length) {
                                    iU = StringsKt.u(strH, JwtParser.SEPARATOR_CHAR, i4, 4);
                                    if (iU == -1) {
                                        iU = length;
                                    }
                                    i5 = i4;
                                    while (true) {
                                        if (i5 < iU) {
                                            buffer.I0(i4, iU, strH);
                                        } else if (strH.charAt(i5) >= 128) {
                                            buffer.l0(Punycode.f77306a);
                                            arrayList = new ArrayList();
                                            while (i4 < iU) {
                                                iCharAt = strH.charAt(i4);
                                                if (55296 > iCharAt) {
                                                }
                                                arrayList.add(Integer.valueOf(iCharAt));
                                                i4++;
                                            }
                                            it = arrayList.iterator();
                                            i6 = 0;
                                            while (it.hasNext()) {
                                                iIntValue5 = ((Number) it.next()).intValue();
                                                if (iIntValue5 < 128) {
                                                    buffer.m0(iIntValue5);
                                                    i6++;
                                                }
                                            }
                                            if (i6 > 0) {
                                                buffer.m0(45);
                                            }
                                            i7 = i6;
                                            i8 = 128;
                                            i9 = 0;
                                            iA = 72;
                                            while (true) {
                                                if (i7 < arrayList.size()) {
                                                    it2 = arrayList.iterator();
                                                    if (it2.hasNext()) {
                                                        b21.x();
                                                        return str2;
                                                    }
                                                    next = it2.next();
                                                    if (it2.hasNext()) {
                                                        iIntValue3 = ((Number) next).intValue();
                                                        if (iIntValue3 < i8) {
                                                            iIntValue3 = i3;
                                                        }
                                                        while (true) {
                                                            next2 = it2.next();
                                                            iIntValue4 = ((Number) next2).intValue();
                                                            if (iIntValue4 < i8) {
                                                                iIntValue4 = i3;
                                                            }
                                                            if (iIntValue3 > iIntValue4) {
                                                                iIntValue3 = iIntValue4;
                                                                next = next2;
                                                            }
                                                            if (!it2.hasNext()) {
                                                                break;
                                                                break;
                                                            }
                                                            i3 = Integer.MAX_VALUE;
                                                        }
                                                    }
                                                    iIntValue = ((Number) next).intValue();
                                                    i10 = (i7 + 1) * (iIntValue - i8);
                                                    if (i9 > i3 - i10) {
                                                        i11 = i9 + i10;
                                                        it3 = arrayList.iterator();
                                                        while (true) {
                                                            if (it3.hasNext()) {
                                                                iIntValue2 = ((Number) it3.next()).intValue();
                                                                if (iIntValue2 < iIntValue) {
                                                                    i12 = i3;
                                                                    if (i11 == i12) {
                                                                        i11++;
                                                                    }
                                                                } else {
                                                                    i12 = i3;
                                                                    if (iIntValue2 == iIntValue) {
                                                                        IntProgression intProgressionI4 = RangesKt.i(RangesKt.j(36, i12), 36);
                                                                        int i410 = intProgressionI4.f71951b;
                                                                        int i55 = intProgressionI4.f71952c;
                                                                        i13 = intProgressionI4.d;
                                                                        i14 = i13 <= 0 ? i11 : i11;
                                                                        buffer.m0(Punycode.b(i14));
                                                                        int i56 = i7 + 1;
                                                                        if (i7 == i6) {
                                                                            z = i2;
                                                                        } else {
                                                                            z = 0;
                                                                        }
                                                                        iA = Punycode.a(i11, i56, z);
                                                                        i7 = i56;
                                                                        i11 = 0;
                                                                        i3 = Integer.MAX_VALUE;
                                                                    }
                                                                }
                                                                i3 = i12;
                                                            } else {
                                                                i9 = i11 + 1;
                                                                i8 = iIntValue + 1;
                                                                i3 = Integer.MAX_VALUE;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            i5++;
                                            i3 = Integer.MAX_VALUE;
                                        }
                                        if (iU < length) {
                                            buffer.m0(46);
                                            i4 = iU + 1;
                                            i3 = Integer.MAX_VALUE;
                                        }
                                    }
                                }
                                strH2 = buffer.H();
                                break;
                            }
                        }
                        break;
                    }
                    break;
                }
            }
            int iI0 = buffer4.i0();
            char c8 = c3;
            IdnaMappingTable idnaMappingTable = IdnaMappingTableInstanceKt.f77305a;
            char c9 = c4;
            String str5 = idnaMappingTable.f77303b;
            str2 = str3;
            int i57 = (iI0 & 2097024) >> 7;
            i2 = i25;
            String str6 = idnaMappingTable.f77302a;
            int i58 = i22;
            int length3 = (str6.length() / 4) - 1;
            while (true) {
                if (i58 > length3) {
                    i20 = (-i58) - 1;
                    break;
                }
                i20 = (i58 + length3) / 2;
                int iD = Intrinsics.d(i57, IdnaMappingTableKt.a(i20 * 4, str6));
                if (iD >= 0) {
                    if (iD <= 0) {
                        break;
                    }
                    i58 = i20 + 1;
                } else {
                    length3 = i20 - 1;
                }
            }
            int i59 = i20;
            int i60 = i59 >= 0 ? i59 * 4 : ((-i59) - 2) * 4;
            int iA3 = IdnaMappingTableKt.a(i60 + 2, str6);
            int iA4 = i60 + 4 < str6.length() ? IdnaMappingTableKt.a(i60 + 6, str6) : str5.length() / 4;
            int i61 = iI0 & CertificateBody.profileType;
            int i62 = iA4 - 1;
            while (true) {
                if (iA3 > i62) {
                    i21 = (-iA3) - 1;
                    break;
                }
                i21 = (iA3 + i62) / 2;
                int iD2 = Intrinsics.d(i61, str5.charAt(i21 * 4));
                if (iD2 >= 0) {
                    if (iD2 <= 0) {
                        break;
                    }
                    iA3 = i21 + 1;
                } else {
                    i62 = i21 - 1;
                }
            }
            int i63 = i21 >= 0 ? i21 * 4 : ((-i21) - 2) * 4;
            char cCharAt4 = str5.charAt(i63 + 1);
            if (cCharAt4 >= 0 && cCharAt4 < '@') {
                int iA5 = IdnaMappingTableKt.a(i63 + 2, str5);
                buffer5.I0(iA5, cCharAt4 + iA5, idnaMappingTable.f77304c);
            } else if ('@' <= cCharAt4 && cCharAt4 < 'P') {
                buffer5.P0(iI0 - ((((cCharAt4 & 15) << 14) | (str5.charAt(i63 + 2) << 7)) | str5.charAt(i63 + 3)));
            } else if ('P' <= cCharAt4 && cCharAt4 < '`') {
                buffer5.P0(iI0 + (((cCharAt4 & 15) << 14) | (str5.charAt(i63 + 2) << 7) | str5.charAt(i63 + 3)));
            } else if (cCharAt4 == 'w') {
                continue;
            } else if (cCharAt4 == 'x') {
                buffer5.P0(iI0);
            } else if (cCharAt4 == 'y') {
                buffer5.P0(iI0);
            } else if (cCharAt4 == 'z') {
                buffer5.m0(str5.charAt(i63 + 2));
            } else if (cCharAt4 == '{') {
                buffer5.m0(str5.charAt(i63 + 2) | 128);
            } else if (cCharAt4 == '|') {
                buffer5.m0(str5.charAt(i63 + 2));
                buffer5.m0(str5.charAt(i63 + 3));
            } else if (cCharAt4 == '}') {
                buffer5.m0(str5.charAt(i63 + 2) | 128);
                buffer5.m0(str5.charAt(i63 + 3));
            } else if (cCharAt4 == '~') {
                buffer5.m0(str5.charAt(i63 + 2));
                buffer5.m0(str5.charAt(i63 + 3) | 128);
            } else {
                if (cCharAt4 != 127) {
                    no0.i(iI0, "unexpected rangesIndex for ");
                    return str2;
                }
                buffer5.m0(str5.charAt(i63 + 2) | 128);
                buffer5.m0(str5.charAt(i63 + 3) | 128);
            }
            c3 = c8;
            c4 = c9;
            i25 = i2;
            str3 = str2;
            i22 = 0;
            strH2 = str2;
            break;
        }
        if (strH2 == null || strH2.length() == 0) {
            return str2;
        }
        int length4 = strH2.length();
        for (int i64 = 0; i64 < length4; i64++) {
            char cCharAt5 = strH2.charAt(i64);
            if (Intrinsics.d(cCharAt5, 31) <= 0 || Intrinsics.d(cCharAt5, CertificateBody.profileType) >= 0 || StringsKt.u(" #%/:?@[\\]", cCharAt5, 0, 6) != -1) {
                return str2;
            }
        }
        int i65 = 0;
        int length5 = strH2.length();
        int i66 = i2;
        if (i66 > length5 || length5 >= 254) {
            return str2;
        }
        while (true) {
            int iU3 = StringsKt.u(strH2, JwtParser.SEPARATOR_CHAR, i65, 4);
            int length6 = iU3 == -1 ? strH2.length() - i65 : iU3 - i65;
            if (i66 > length6 || length6 >= 64) {
                return str2;
            }
            if (iU3 == -1 || iU3 == strH2.length() - i66) {
                break;
            }
            i65 = iU3 + 1;
        }
        return strH2;
    }
}
