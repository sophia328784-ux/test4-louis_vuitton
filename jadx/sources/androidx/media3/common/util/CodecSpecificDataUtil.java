package androidx.media3.common.util;

import android.util.Pair;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
public abstract class CodecSpecificDataUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f14144a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f14145b = {"", "A", NBSSpanMetricUnit.Byte, "C"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f14146c = Pattern.compile("^\\D?(\\d+)$");

    public static String a(int i2, boolean z, int i3, int i4, int[] iArr, int i5) {
        Object[] objArr = {f14145b[i2], Integer.valueOf(i3), Integer.valueOf(i4), Character.valueOf(z ? 'H' : 'L'), Integer.valueOf(i5)};
        String str = Util.f14242a;
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i6 = 0; i6 < length; i6++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i6])));
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:160:0x0230  */
    /* JADX WARN: Code duplicated, block: B:17:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:20:0x00af  */
    /* JADX WARN: Code duplicated, block: B:237:0x0326  */
    /* JADX WARN: Code duplicated, block: B:240:0x0331  */
    /* JADX WARN: Code duplicated, block: B:464:0x0610 A[PHI: r2
      0x0610: PHI (r2v46 int) = (r2v45 int), (r2v48 int), (r2v49 int), (r2v50 int), (r2v51 int) binds: [B:445:0x05e3, B:448:0x05e9, B:450:0x05ed, B:452:0x05f1, B:454:0x05f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:480:0x064b  */
    /* JADX WARN: Code duplicated, block: B:680:0x091b  */
    /* JADX WARN: Code duplicated, block: B:701:0x0957  */
    /* JADX WARN: Code duplicated, block: B:703:0x095d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0153  */
    /* JADX WARN: Code duplicated, block: B:86:0x015e  */
    public static Pair b(Format format) {
        byte b2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Integer num;
        Integer numValueOf = 1024;
        String str = format.f13763k;
        ColorInfo colorInfo = format.E;
        if (str != null) {
            String[] strArrSplit = str.split("\\.");
            if ("video/dolby-vision".equals(format.o)) {
                if (strArrSplit.length < 3) {
                    cj.y("Ignoring malformed Dolby Vision codec string: ", str);
                    return null;
                }
                Matcher matcher = f14146c.matcher(strArrSplit[1]);
                if (!matcher.matches()) {
                    cj.y("Ignoring malformed Dolby Vision codec string: ", str);
                    return null;
                }
                String strGroup = matcher.group(1);
                if (strGroup != null) {
                    switch (strGroup) {
                        case "00":
                            num = 1;
                            break;
                        case "01":
                            num = 2;
                            break;
                        case "02":
                            num = 4;
                            break;
                        case "03":
                            num = 8;
                            break;
                        case "04":
                            num = 16;
                            break;
                        case "05":
                            num = 32;
                            break;
                        case "06":
                            num = 64;
                            break;
                        case "07":
                            num = 128;
                            break;
                        case "08":
                            num = 256;
                            break;
                        case "09":
                            num = 512;
                            break;
                        case "10":
                            num = numValueOf;
                            break;
                        default:
                            num = null;
                            break;
                    }
                } else {
                    num = null;
                }
                if (num == null) {
                    cj.y("Unknown Dolby Vision profile string: ", strGroup);
                    return null;
                }
                String str2 = strArrSplit[2];
                if (str2 != null) {
                    switch (str2) {
                        case "01":
                            numValueOf = 1;
                            break;
                        case "02":
                            numValueOf = 2;
                            break;
                        case "03":
                            numValueOf = 4;
                            break;
                        case "04":
                            numValueOf = 8;
                            break;
                        case "05":
                            numValueOf = 16;
                            break;
                        case "06":
                            numValueOf = 32;
                            break;
                        case "07":
                            numValueOf = 64;
                            break;
                        case "08":
                            numValueOf = 128;
                            break;
                        case "09":
                            numValueOf = 256;
                            break;
                        case "10":
                            numValueOf = 512;
                            break;
                        case "11":
                            break;
                        case "12":
                            numValueOf = 2048;
                            break;
                        case "13":
                            numValueOf = 4096;
                            break;
                        default:
                            numValueOf = null;
                            break;
                    }
                } else {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    return new Pair(num, numValueOf);
                }
                cj.y("Unknown Dolby Vision level string: ", str2);
                return null;
            }
            String str3 = strArrSplit[0];
            str3.getClass();
            switch (str3) {
                case "ac-4":
                    b2 = 0;
                    break;
                case "apv1":
                    b2 = 1;
                    break;
                case "av01":
                    b2 = 2;
                    break;
                case "avc1":
                    b2 = 3;
                    break;
                case "avc2":
                    b2 = 4;
                    break;
                case "hev1":
                    b2 = 5;
                    break;
                case "hvc1":
                    b2 = 6;
                    break;
                case "iamf":
                    b2 = 7;
                    break;
                case "mp4a":
                    b2 = 8;
                    break;
                case "s263":
                    b2 = 9;
                    break;
                case "vp09":
                    b2 = 10;
                    break;
                case "vvc1":
                    b2 = 11;
                    break;
                case "vvi1":
                    b2 = 12;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            int i19 = 8192;
            switch (b2) {
                case 0:
                    if (strArrSplit.length != 4) {
                        cj.y("Ignoring malformed AC-4 codec string: ", str);
                        return null;
                    }
                    try {
                        int i20 = Integer.parseInt(strArrSplit[1]);
                        int i21 = Integer.parseInt(strArrSplit[2]);
                        int i22 = Integer.parseInt(strArrSplit[3]);
                        if (i20 != 0) {
                            if (i20 != 1) {
                                if (i20 != 2) {
                                    i2 = -1;
                                } else if (i21 == 1) {
                                    i2 = 1026;
                                } else if (i21 == 2) {
                                    i2 = 1028;
                                } else {
                                    i2 = -1;
                                }
                            } else if (i21 == 0) {
                                i2 = 513;
                            } else if (i21 == 1) {
                                i2 = 514;
                            } else {
                                i2 = -1;
                            }
                        } else if (i21 == 0) {
                            i2 = 257;
                        } else {
                            i2 = -1;
                        }
                        if (i2 == -1) {
                            Log.g("Unknown AC-4 profile: " + i20 + FileUtils.HIDDEN_PREFIX + i21);
                            return null;
                        }
                        if (i22 == 0) {
                            i3 = 1;
                        } else if (i22 == 1) {
                            i3 = 2;
                        } else if (i22 == 2) {
                            i3 = 4;
                        } else {
                            if (i22 != 3) {
                                if (i22 != 4) {
                                    i4 = -1;
                                    i3 = -1;
                                } else {
                                    i3 = 16;
                                }
                                if (i3 == i4) {
                                    return new Pair(Integer.valueOf(i2), Integer.valueOf(i3));
                                }
                                defpackage.a.u(i22, "Unknown AC-4 level: ");
                                return null;
                            }
                            i3 = 8;
                        }
                        i4 = -1;
                        if (i3 == i4) {
                            return new Pair(Integer.valueOf(i2), Integer.valueOf(i3));
                        }
                        defpackage.a.u(i22, "Unknown AC-4 level: ");
                        return null;
                    } catch (NumberFormatException unused) {
                        cj.y("Ignoring malformed AC-4 codec string: ", str);
                        return null;
                    }
                case 1:
                    if (strArrSplit.length < 4) {
                        cj.y("Ignoring malformed APV codec string: ", str);
                        return null;
                    }
                    try {
                        int i23 = Integer.parseInt(strArrSplit[1].substring(4));
                        int i24 = Integer.parseInt(strArrSplit[2].substring(4));
                        int i25 = Integer.parseInt(strArrSplit[3].substring(4));
                        if (i23 == 33) {
                            i19 = 1;
                        } else if (i23 != 44) {
                            defpackage.a.u(i23, "Ignoring invalid APV profile: ");
                            return null;
                        }
                        int i26 = (i24 / 30) * 2;
                        if (i24 % 30 == 0) {
                            i26--;
                        }
                        return new Pair(Integer.valueOf(i19), Integer.valueOf((256 << (i26 - 1)) | (1 << i25)));
                    } catch (NumberFormatException e2) {
                        Log.h("Ignoring malformed APV codec string: " + str, e2);
                        return null;
                    }
                case 2:
                    if (strArrSplit.length < 4) {
                        cj.y("Ignoring malformed AV1 codec string: ", str);
                        return null;
                    }
                    try {
                        int i27 = Integer.parseInt(strArrSplit[1]);
                        int i28 = Integer.parseInt(strArrSplit[2].substring(0, 2));
                        int i29 = Integer.parseInt(strArrSplit[3]);
                        if (i27 != 0) {
                            defpackage.a.u(i27, "Unknown AV1 profile: ");
                            return null;
                        }
                        int i30 = 8;
                        if (i29 != 8 && i29 != 10) {
                            defpackage.a.u(i29, "Unknown AV1 bit depth: ");
                            return null;
                        }
                        if (i29 == 8) {
                            i5 = 1;
                        } else {
                            i5 = (colorInfo == null || !(colorInfo.d != null || (i6 = colorInfo.f13727c) == 7 || i6 == 6)) ? 2 : 4096;
                        }
                        switch (i28) {
                            case 0:
                                i30 = 1;
                                break;
                            case 1:
                                i30 = 2;
                                break;
                            case 2:
                                i30 = 4;
                                break;
                            case 3:
                                break;
                            case 4:
                                i30 = 16;
                                break;
                            case 5:
                                i30 = 32;
                                break;
                            case 6:
                                i30 = 64;
                                break;
                            case 7:
                                i30 = 128;
                                break;
                            case 8:
                                i30 = 256;
                                break;
                            case 9:
                                i30 = 512;
                                break;
                            case 10:
                                i30 = 1024;
                                break;
                            case 11:
                                i30 = 2048;
                                break;
                            case 12:
                                i30 = 4096;
                                break;
                            case 13:
                                i30 = 8192;
                                break;
                            case 14:
                                i30 = 16384;
                                break;
                            case 15:
                                i30 = 32768;
                                break;
                            case 16:
                                i30 = 65536;
                                break;
                            case 17:
                                i30 = 131072;
                                break;
                            case 18:
                                i30 = 262144;
                                break;
                            case 19:
                                i30 = 524288;
                                break;
                            case 20:
                                i30 = 1048576;
                                break;
                            case 21:
                                i30 = 2097152;
                                break;
                            case 22:
                                i30 = 4194304;
                                break;
                            case 23:
                                i30 = 8388608;
                                break;
                            default:
                                i30 = -1;
                                break;
                        }
                        if (i30 != -1) {
                            return new Pair(Integer.valueOf(i5), Integer.valueOf(i30));
                        }
                        defpackage.a.u(i28, "Unknown AV1 level: ");
                        return null;
                    } catch (NumberFormatException unused2) {
                        cj.y("Ignoring malformed AV1 codec string: ", str);
                        return null;
                    }
                case 3:
                case 4:
                    if (strArrSplit.length < 2) {
                        cj.y("Ignoring malformed AVC codec string: ", str);
                        return null;
                    }
                    try {
                        if (strArrSplit[1].length() == 6) {
                            i7 = 16;
                            i8 = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                            i9 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                        } else {
                            i7 = 16;
                            if (strArrSplit.length < 3) {
                                Log.g("Ignoring malformed AVC codec string: " + str);
                                return null;
                            }
                            i8 = Integer.parseInt(strArrSplit[1]);
                            i9 = Integer.parseInt(strArrSplit[2]);
                        }
                        if (i8 == 66) {
                            i10 = -1;
                            i11 = 1;
                        } else if (i8 == 77) {
                            i10 = -1;
                            i11 = 2;
                        } else if (i8 == 88) {
                            i10 = -1;
                            i11 = 4;
                        } else if (i8 == 100) {
                            i10 = -1;
                            i11 = 8;
                        } else if (i8 == 110) {
                            i11 = i7;
                            i10 = -1;
                        } else if (i8 == 122) {
                            i10 = -1;
                            i11 = 32;
                        } else if (i8 != 244) {
                            i10 = -1;
                            i11 = -1;
                        } else {
                            i10 = -1;
                            i11 = 64;
                        }
                        if (i11 == i10) {
                            defpackage.a.u(i8, "Unknown AVC profile: ");
                            return null;
                        }
                        switch (i9) {
                            case 10:
                                i7 = 1;
                                break;
                            case 11:
                                i7 = 4;
                                break;
                            case 12:
                                i7 = 8;
                                break;
                            case 13:
                                break;
                            default:
                                switch (i9) {
                                    case 20:
                                        i7 = 32;
                                        break;
                                    case 21:
                                        i7 = 64;
                                        break;
                                    case 22:
                                        i7 = 128;
                                        break;
                                    default:
                                        switch (i9) {
                                            case 30:
                                                i7 = 256;
                                                break;
                                            case 31:
                                                i7 = 512;
                                                break;
                                            case 32:
                                                i7 = 1024;
                                                break;
                                            default:
                                                switch (i9) {
                                                    case 40:
                                                        i7 = 2048;
                                                        break;
                                                    case 41:
                                                        i7 = 4096;
                                                        break;
                                                    case EACTags.CURRENCY_CODE /* 42 */:
                                                        i7 = 8192;
                                                        break;
                                                    default:
                                                        switch (i9) {
                                                            case 50:
                                                                i7 = 16384;
                                                                break;
                                                            case EACTags.TRANSACTION_DATE /* 51 */:
                                                                i7 = 32768;
                                                                break;
                                                            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                                                i7 = 65536;
                                                                break;
                                                            default:
                                                                i7 = -1;
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        if (i7 != -1) {
                            return new Pair(Integer.valueOf(i11), Integer.valueOf(i7));
                        }
                        defpackage.a.u(i9, "Unknown AVC level: ");
                        return null;
                    } catch (NumberFormatException unused3) {
                        cj.y("Ignoring malformed AVC codec string: ", str);
                        return null;
                    }
                case 5:
                case 6:
                    return c(str, strArrSplit, colorInfo);
                case 7:
                    if (strArrSplit.length < 4) {
                        cj.y("Ignoring malformed IAMF codec string: ", str);
                        return null;
                    }
                    try {
                        int i31 = 1 << (Integer.parseInt(strArrSplit[1]) + 16);
                        String str4 = strArrSplit[3];
                        str4.getClass();
                        switch (str4) {
                            case "Opus":
                                i12 = 1;
                                break;
                            case "fLaC":
                                i12 = 4;
                                break;
                            case "ipcm":
                                i12 = 8;
                                break;
                            case "mp4a":
                                i12 = 2;
                                break;
                            default:
                                Log.g("Ignoring unknown codec identifier for IAMF auxiliary profile: " + strArrSplit[3]);
                                return null;
                        }
                        return new Pair(Integer.valueOf(i31 | 16777216 | i12), 0);
                    } catch (NumberFormatException e3) {
                        Log.h("Ignoring malformed primary profile in IAMF codec string: " + strArrSplit[1], e3);
                        return null;
                    }
                case 8:
                    if (strArrSplit.length != 3) {
                        cj.y("Ignoring malformed MP4A codec string: ", str);
                        return null;
                    }
                    try {
                        if ("audio/mp4a-latm".equals(MimeTypes.f(Integer.parseInt(strArrSplit[1], 16)))) {
                            int i32 = Integer.parseInt(strArrSplit[2]);
                            int i33 = 17;
                            if (i32 == 17) {
                                i13 = i33;
                                i14 = -1;
                            } else {
                                if (i32 != 20) {
                                    i33 = 23;
                                    if (i32 != 23) {
                                        i33 = 29;
                                        if (i32 != 29) {
                                            i33 = 39;
                                            if (i32 != 39) {
                                                i33 = 42;
                                                if (i32 != 42) {
                                                    switch (i32) {
                                                        case 1:
                                                            i14 = -1;
                                                            i13 = 1;
                                                            break;
                                                        case 2:
                                                            i14 = -1;
                                                            i13 = 2;
                                                            break;
                                                        case 3:
                                                            i14 = -1;
                                                            i13 = 3;
                                                            break;
                                                        case 4:
                                                            i14 = -1;
                                                            i13 = 4;
                                                            break;
                                                        case 5:
                                                            i13 = 5;
                                                            break;
                                                        case 6:
                                                            i14 = -1;
                                                            i13 = 6;
                                                            break;
                                                        default:
                                                            i14 = -1;
                                                            i13 = -1;
                                                            break;
                                                    }
                                                } else {
                                                    i13 = i33;
                                                }
                                            } else {
                                                i13 = i33;
                                            }
                                        } else {
                                            i13 = i33;
                                        }
                                    } else {
                                        i13 = i33;
                                    }
                                } else {
                                    i13 = 20;
                                }
                                i14 = -1;
                            }
                            if (i13 != i14) {
                                return new Pair(Integer.valueOf(i13), 0);
                            }
                        }
                    } catch (NumberFormatException unused4) {
                        cj.y("Ignoring malformed MP4A codec string: ", str);
                        return null;
                    }
                    break;
                case 9:
                    Pair pair = new Pair(1, 1);
                    if (strArrSplit.length < 3) {
                        cj.y("Ignoring malformed H263 codec string: ", str);
                        return pair;
                    }
                    try {
                        return new Pair(Integer.valueOf(Integer.parseInt(strArrSplit[1])), Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                    } catch (NumberFormatException unused5) {
                        cj.y("Ignoring malformed H263 codec string: ", str);
                        return pair;
                    }
                case 10:
                    if (strArrSplit.length < 3) {
                        cj.y("Ignoring malformed VP9 codec string: ", str);
                        return null;
                    }
                    try {
                        int i34 = Integer.parseInt(strArrSplit[1]);
                        int i35 = Integer.parseInt(strArrSplit[2]);
                        if (i34 == 0) {
                            i15 = 1;
                        } else if (i34 == 1) {
                            i15 = 2;
                        } else if (i34 != 2) {
                            i15 = i34 != 3 ? -1 : 8;
                        } else {
                            i15 = 4;
                        }
                        if (i15 == -1) {
                            defpackage.a.u(i34, "Unknown VP9 profile: ");
                            return null;
                        }
                        if (i35 == 10) {
                            i16 = -1;
                            i17 = 1;
                        } else if (i35 == 11) {
                            i16 = -1;
                            i17 = 2;
                        } else if (i35 == 20) {
                            i16 = -1;
                            i17 = 4;
                        } else if (i35 == 21) {
                            i16 = -1;
                            i17 = 8;
                        } else if (i35 == 30) {
                            i16 = -1;
                            i17 = 16;
                        } else if (i35 == 31) {
                            i16 = -1;
                            i17 = 32;
                        } else if (i35 == 40) {
                            i16 = -1;
                            i17 = 64;
                        } else if (i35 != 41) {
                            if (i35 == 50) {
                                i17 = 256;
                            } else if (i35 != 51) {
                                switch (i35) {
                                    case 60:
                                        i16 = -1;
                                        i17 = 2048;
                                        break;
                                    case 61:
                                        i16 = -1;
                                        i17 = 4096;
                                        break;
                                    case 62:
                                        i17 = 8192;
                                        break;
                                    default:
                                        i16 = -1;
                                        i17 = -1;
                                        break;
                                }
                            } else {
                                i16 = -1;
                                i17 = 512;
                            }
                            i16 = -1;
                        } else {
                            i16 = -1;
                            i17 = 128;
                        }
                        if (i17 != i16) {
                            return new Pair(Integer.valueOf(i15), Integer.valueOf(i17));
                        }
                        defpackage.a.u(i35, "Unknown VP9 level: ");
                        return null;
                    } catch (NumberFormatException unused6) {
                        cj.y("Ignoring malformed VP9 codec string: ", str);
                        return null;
                    }
                case 11:
                case 12:
                    if (strArrSplit.length < 3) {
                        cj.y("Ignoring malformed VVC codec string: ", str);
                        return null;
                    }
                    try {
                        int i36 = Integer.parseInt(strArrSplit[1]);
                        if (i36 == 1) {
                            if (colorInfo == null || colorInfo.f13727c != 6) {
                                i18 = (colorInfo == null || colorInfo.f13728e != 8) ? 2 : 1;
                            } else {
                                i18 = 4096;
                            }
                        } else {
                            if (i36 != 65) {
                                Log.g("Unknown VVC profile IDC: " + strArrSplit[1]);
                                return null;
                            }
                            i18 = 4;
                        }
                        String str5 = strArrSplit[2];
                        if (str5 != null) {
                            switch (str5) {
                                case "H64":
                                    numValueOf = 64;
                                    break;
                                case "H67":
                                    numValueOf = 256;
                                    break;
                                case "H80":
                                    break;
                                case "H83":
                                    numValueOf = 4096;
                                    break;
                                case "H86":
                                    numValueOf = 16384;
                                    break;
                                case "H96":
                                    numValueOf = 65536;
                                    break;
                                case "L16":
                                    numValueOf = 1;
                                    break;
                                case "L32":
                                    numValueOf = 2;
                                    break;
                                case "L35":
                                    numValueOf = 4;
                                    break;
                                case "L48":
                                    numValueOf = 8;
                                    break;
                                case "L51":
                                    numValueOf = 16;
                                    break;
                                case "L64":
                                    numValueOf = 32;
                                    break;
                                case "L67":
                                    numValueOf = 128;
                                    break;
                                case "L80":
                                    numValueOf = 512;
                                    break;
                                case "L83":
                                    numValueOf = 2048;
                                    break;
                                case "L86":
                                    numValueOf = 8192;
                                    break;
                                case "L96":
                                    numValueOf = 32768;
                                    break;
                                case "H112":
                                    numValueOf = 262144;
                                    break;
                                case "H128":
                                    numValueOf = 1048576;
                                    break;
                                case "H144":
                                    numValueOf = 4194304;
                                    break;
                                case "L112":
                                    numValueOf = 131072;
                                    break;
                                case "L128":
                                    numValueOf = 524288;
                                    break;
                                case "L144":
                                    numValueOf = Integer.valueOf(PKIFailureInfo.badSenderNonce);
                                    break;
                                default:
                                    numValueOf = null;
                                    break;
                            }
                        } else {
                            numValueOf = null;
                        }
                        if (numValueOf != null) {
                            return new Pair(Integer.valueOf(i18), numValueOf);
                        }
                        cj.y("Unknown VVC level string: ", str5);
                        return null;
                    } catch (NumberFormatException unused7) {
                        cj.y("Ignoring malformed VVC codec string: ", str);
                        return null;
                    }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    public static Pair c(String str, String[] strArr, ColorInfo colorInfo) {
        int i2;
        Integer numValueOf;
        if (strArr.length < 4) {
            cj.y("Ignoring malformed HEVC codec string: ", str);
            return null;
        }
        Matcher matcher = f14146c.matcher(strArr[1]);
        if (!matcher.matches()) {
            cj.y("Ignoring malformed HEVC codec string: ", str);
            return null;
        }
        String strGroup = matcher.group(1);
        if ("1".equals(strGroup)) {
            i2 = 1;
        } else if (ContentTree.AUDIO_ID.equals(strGroup)) {
            i2 = (colorInfo == null || colorInfo.f13727c != 6) ? 2 : 4096;
        } else {
            if (!"6".equals(strGroup)) {
                cj.y("Unknown HEVC profile string: ", strGroup);
                return null;
            }
            i2 = 6;
        }
        String str2 = strArr[3];
        if (str2 != null) {
            switch (str2) {
                case "H30":
                    numValueOf = 2;
                    break;
                case "H60":
                    numValueOf = 8;
                    break;
                case "H63":
                    numValueOf = 32;
                    break;
                case "H90":
                    numValueOf = 128;
                    break;
                case "H93":
                    numValueOf = 512;
                    break;
                case "L30":
                    numValueOf = 1;
                    break;
                case "L60":
                    numValueOf = 4;
                    break;
                case "L63":
                    numValueOf = 16;
                    break;
                case "L90":
                    numValueOf = 64;
                    break;
                case "L93":
                    numValueOf = 256;
                    break;
                case "H120":
                    numValueOf = 2048;
                    break;
                case "H123":
                    numValueOf = 8192;
                    break;
                case "H150":
                    numValueOf = 32768;
                    break;
                case "H153":
                    numValueOf = 131072;
                    break;
                case "H156":
                    numValueOf = 524288;
                    break;
                case "H180":
                    numValueOf = Integer.valueOf(PKIFailureInfo.badSenderNonce);
                    break;
                case "H183":
                    numValueOf = 8388608;
                    break;
                case "H186":
                    numValueOf = 33554432;
                    break;
                case "L120":
                    numValueOf = 1024;
                    break;
                case "L123":
                    numValueOf = 4096;
                    break;
                case "L150":
                    numValueOf = 16384;
                    break;
                case "L153":
                    numValueOf = 65536;
                    break;
                case "L156":
                    numValueOf = 262144;
                    break;
                case "L180":
                    numValueOf = 1048576;
                    break;
                case "L183":
                    numValueOf = 4194304;
                    break;
                case "L186":
                    numValueOf = 16777216;
                    break;
                default:
                    numValueOf = null;
                    break;
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return new Pair(Integer.valueOf(i2), numValueOf);
        }
        cj.y("Unknown HEVC level string: ", str2);
        return null;
    }
}
