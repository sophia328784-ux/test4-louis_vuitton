package org.apache.commons.lang3;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import com.sightcall.advancedannotations.domain.parser.TextParser;
import defpackage.md;
import defpackage.n00;
import defpackage.sg0;
import java.util.Random;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes3.dex */
public class RandomStringUtils {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final sg0 f77537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RandomStringUtils f77538c;
    public static final char[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final sg0 f77539a;

    static {
        sg0 sg0Var = new sg0(1);
        f77537b = sg0Var;
        f77538c = new RandomStringUtils(sg0Var);
        d = new char[]{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', ResourceParser.ResourceInstruction, 'O', PositionParser.PositionInstruction, 'Q', 'R', ScaleParser.ScaleInstruction, TextParser.TextInstruction, Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    }

    @Deprecated
    public RandomStringUtils() {
        this(f77537b);
    }

    public static String a(boolean z, boolean z2, char[] cArr, Random random) {
        int iMax;
        int length;
        int i2;
        String str = null;
        if (cArr != null && cArr.length == 0) {
            md.n("The chars array must not be empty");
            return null;
        }
        if (cArr != null) {
            length = cArr.length;
            iMax = 0;
        } else if (z || z2) {
            iMax = 32;
            length = 123;
        } else {
            iMax = 0;
            length = 1114111;
        }
        int iMin = length <= 1114111 ? length : 1114111;
        if (cArr == null && iMin <= 127) {
            if (z && z2 && iMin >= 123) {
                return a(false, false, d, random);
            }
            if ((z2 && iMin <= 48) || (z && iMin <= 65)) {
                md.n(n00.m(iMin, "Parameter end (", ") must be greater then (48) for generating digits or greater then (65) for generating letters."));
                return null;
            }
            if (z && z2) {
                iMax = Math.max(48, iMax);
                iMin = Math.min(123, iMin);
            } else if (z2) {
                iMax = Math.max(48, iMax);
                iMin = Math.min(58, iMin);
            } else if (z) {
                iMax = Math.max(65, iMax);
                iMin = Math.min(123, iMin);
            }
        }
        int i3 = 10;
        StringBuilder sb = new StringBuilder(10);
        int iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(iMin - iMax);
        CachedRandomBits cachedRandomBits = new CachedRandomBits((int) Math.min((((((long) iNumberOfLeadingZeros) * 10) + 3) / 5) + 10, 429496739L), random);
        while (true) {
            int i4 = i3 - 1;
            if (i3 == 0) {
                return sb.toString();
            }
            if (iNumberOfLeadingZeros > 32 || iNumberOfLeadingZeros <= 0) {
                String str2 = str;
                md.n("number of bits must be between 1 and 32");
                return str2;
            }
            int i5 = 0;
            int i6 = 0;
            while (i5 < iNumberOfLeadingZeros) {
                int i7 = cachedRandomBits.f77536c >> 3;
                byte[] bArr = cachedRandomBits.f77535b;
                String str3 = str;
                if (i7 >= bArr.length) {
                    cachedRandomBits.f77534a.nextBytes(bArr);
                    cachedRandomBits.f77536c = 0;
                }
                int iMin2 = Math.min(8 - (cachedRandomBits.f77536c & 7), iNumberOfLeadingZeros - i5);
                int i8 = cachedRandomBits.f77536c;
                i6 = (i6 << iMin2) | ((bArr[i8 >> 3] >> (i8 & 7)) & ((1 << iMin2) - 1));
                i5 += iMin2;
                cachedRandomBits.f77536c = i8 + iMin2;
                str = str3;
            }
            String str4 = str;
            int i9 = i6 + iMax;
            if (i9 < iMin) {
                if (cArr == null) {
                    int type = Character.getType(i9);
                    if (type != 0 && type != 18) {
                        if (type == 19) {
                            i2 = i9;
                        }
                    }
                } else {
                    i2 = cArr[i9];
                }
                i2 = i9;
                int iCharCount = Character.charCount(i2);
                if ((i4 != 0 || iCharCount <= 1) && ((z && Character.isLetter(i2)) || ((z2 && Character.isDigit(i2)) || (!z && !z2)))) {
                    sb.appendCodePoint(i2);
                    i3 = iCharCount == 2 ? i3 - 2 : i4;
                }
            }
            str = str4;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RandomStringUtils [random=");
        this.f77539a.getClass();
        sb.append((Random) RandomUtils.f77540b.f77542a.get());
        sb.append("]");
        return sb.toString();
    }

    public RandomStringUtils(sg0 sg0Var) {
        this.f77539a = sg0Var;
    }
}
