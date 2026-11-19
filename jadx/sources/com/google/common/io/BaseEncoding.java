package com.google.common.io;

import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.math.IntMath;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import defpackage.md;
import defpackage.n00;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseEncoding {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BaseEncoding f33746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BaseEncoding f33747b;

    public static final class Base16Encoding extends StandardBaseEncoding {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final char[] f33754f;

        public Base16Encoding(Alphabet alphabet) {
            super(alphabet, (Character) null);
            this.f33754f = new char[512];
            char[] cArr = alphabet.f33749b;
            Preconditions.g(cArr.length == 16);
            for (int i2 = 0; i2 < 256; i2++) {
                char[] cArr2 = this.f33754f;
                cArr2[i2] = cArr[i2 >>> 4];
                cArr2[i2 | 256] = cArr[i2 & 15];
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final void b(StringBuilder sb, byte[] bArr, int i2) {
            Preconditions.o(0, i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i3] & 255;
                char[] cArr = this.f33754f;
                sb.append(cArr[i4]);
                sb.append(cArr[i4 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public final BaseEncoding e(Alphabet alphabet, Character ch) {
            return new Base16Encoding(alphabet);
        }
    }

    public static final class DecodingException extends IOException {
    }

    static {
        new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        f33746a = new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f33747b = new Base16Encoding(new Alphabet("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'}));
    }

    public final String a(byte[] bArr) {
        int length = bArr.length;
        Preconditions.o(0, length, bArr.length);
        Alphabet alphabet = ((StandardBaseEncoding) this).f33755c;
        int i2 = alphabet.f33751e;
        int i3 = alphabet.f33752f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(IntMath.a(length, i3) * i2);
        try {
            b(sb, bArr, length);
            return sb.toString();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }

    public abstract void b(StringBuilder sb, byte[] bArr, int i2);

    public abstract BaseEncoding c();

    public static final class Base64Encoding extends StandardBaseEncoding {
        public Base64Encoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()), (Character) '=');
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final void b(StringBuilder sb, byte[] bArr, int i2) {
            int i3 = 0;
            Preconditions.o(0, i2, bArr.length);
            for (int i4 = i2; i4 >= 3; i4 -= 3) {
                int i5 = i3 + 2;
                int i6 = ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3] & 255) << 16);
                i3 += 3;
                int i7 = i6 | (bArr[i5] & 255);
                Alphabet alphabet = this.f33755c;
                char[] cArr = alphabet.f33749b;
                char[] cArr2 = alphabet.f33749b;
                sb.append(cArr[i7 >>> 18]);
                sb.append(cArr2[(i7 >>> 12) & 63]);
                sb.append(cArr2[(i7 >>> 6) & 63]);
                sb.append(cArr2[i7 & 63]);
            }
            if (i3 < i2) {
                d(sb, bArr, i3, i2 - i3);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public final BaseEncoding e(Alphabet alphabet, Character ch) {
            return new Base64Encoding(alphabet, ch);
        }

        public Base64Encoding(Alphabet alphabet, Character ch) {
            super(alphabet, ch);
            Preconditions.g(alphabet.f33749b.length == 64);
        }
    }

    public static class StandardBaseEncoding extends BaseEncoding {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Alphabet f33755c;
        public final Character d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile BaseEncoding f33756e;

        /* JADX WARN: Code duplicated, block: B:9:0x0017  */
        public StandardBaseEncoding(Alphabet alphabet, Character ch) {
            boolean z;
            this.f33755c = alphabet;
            if (ch != null) {
                char cCharValue = ch.charValue();
                byte[] bArr = alphabet.g;
                if (cCharValue >= bArr.length || bArr[cCharValue] == -1) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = true;
            }
            Preconditions.e(ch, "Padding character %s was already in alphabet", z);
            this.d = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        public void b(StringBuilder sb, byte[] bArr, int i2) {
            int i3 = 0;
            Preconditions.o(0, i2, bArr.length);
            while (i3 < i2) {
                Alphabet alphabet = this.f33755c;
                d(sb, bArr, i3, Math.min(alphabet.f33752f, i2 - i3));
                i3 += alphabet.f33752f;
            }
        }

        /* JADX WARN: Code duplicated, block: B:46:0x00b5 A[EDGE_INSN: B:46:0x00b5->B:48:0x00bb BREAK  A[LOOP:0: B:5:0x000b->B:47:0x00b7]] */
        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding c() {
            boolean z;
            BaseEncoding baseEncodingE = this.f33756e;
            if (baseEncodingE == null) {
                Alphabet alphabet = this.f33755c;
                char[] cArr = alphabet.f33749b;
                for (char c2 : cArr) {
                    if (Ascii.b(c2)) {
                        int length = cArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                z = false;
                                break;
                            }
                            char c3 = cArr[i2];
                            if (c3 >= 'a' && c3 <= 'z') {
                                z = true;
                                break;
                            }
                            i2++;
                        }
                        Preconditions.p("Cannot call lowerCase() on a mixed-case alphabet", !z);
                        char[] cArr2 = new char[cArr.length];
                        for (int i3 = 0; i3 < cArr.length; i3++) {
                            char c4 = cArr[i3];
                            if (Ascii.b(c4)) {
                                c4 = (char) (c4 ^ ' ');
                            }
                            cArr2[i3] = c4;
                        }
                        Alphabet alphabet2 = new Alphabet(n00.r(alphabet.f33748a, ".lowerCase()", new StringBuilder()), cArr2);
                        if (!alphabet.f33753h) {
                            alphabet = alphabet2;
                            break;
                        }
                        byte[] bArr = alphabet2.g;
                        if (!alphabet2.f33753h) {
                            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                            for (int i4 = 65; i4 <= 90; i4++) {
                                int i5 = i4 | 32;
                                byte b2 = bArr[i4];
                                byte b3 = bArr[i5];
                                if (b2 == -1) {
                                    bArrCopyOf[i4] = b3;
                                } else {
                                    char c5 = (char) i4;
                                    char c6 = (char) i5;
                                    if (!(b3 == -1)) {
                                        md.k(Strings.b("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c5), Character.valueOf(c6)));
                                        return null;
                                    }
                                    bArrCopyOf[i5] = b2;
                                }
                            }
                            alphabet = new Alphabet(n00.r(alphabet2.f33748a, ".ignoreCase()", new StringBuilder()), alphabet2.f33749b, bArrCopyOf, true);
                            break;
                        }
                        alphabet = alphabet2;
                        break;
                    }
                }
                baseEncodingE = alphabet == this.f33755c ? this : e(alphabet, this.d);
                this.f33756e = baseEncodingE;
            }
            return baseEncodingE;
        }

        public final void d(StringBuilder sb, byte[] bArr, int i2, int i3) {
            Preconditions.o(i2, i2 + i3, bArr.length);
            Alphabet alphabet = this.f33755c;
            int i4 = alphabet.f33752f;
            int i5 = alphabet.d;
            int i6 = 0;
            Preconditions.g(i3 <= i4);
            long j2 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                j2 = (j2 | ((long) (bArr[i2 + i7] & 255))) << 8;
            }
            int i8 = ((i3 + 1) * 8) - i5;
            while (i6 < i3 * 8) {
                sb.append(alphabet.f33749b[((int) (j2 >>> (i8 - i6))) & alphabet.f33750c]);
                i6 += i5;
            }
            Character ch = this.d;
            if (ch != null) {
                while (i6 < alphabet.f33752f * 8) {
                    sb.append(ch.charValue());
                    i6 += i5;
                }
            }
        }

        public BaseEncoding e(Alphabet alphabet, Character ch) {
            return new StandardBaseEncoding(alphabet, ch);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof StandardBaseEncoding) {
                StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) obj;
                if (this.f33755c.equals(standardBaseEncoding.f33755c) && Objects.equals(this.d, standardBaseEncoding.d)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hashCode(this.d) ^ this.f33755c.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            Alphabet alphabet = this.f33755c;
            sb.append(alphabet);
            if (8 % alphabet.d != 0) {
                Character ch = this.d;
                if (ch == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(ch);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public StandardBaseEncoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()), (Character) '=');
        }
    }

    public static final class Alphabet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final char[] f33749b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f33750c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f33751e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f33752f;
        public final byte[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f33753h;

        public Alphabet(String str, char[] cArr, byte[] bArr, boolean z) {
            this.f33748a = str;
            cArr.getClass();
            this.f33749b = cArr;
            try {
                int length = cArr.length;
                RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                int iB = IntMath.b(length);
                this.d = iB;
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iB);
                int i2 = 1 << (3 - iNumberOfTrailingZeros);
                this.f33751e = i2;
                this.f33752f = iB >> iNumberOfTrailingZeros;
                this.f33750c = cArr.length - 1;
                this.g = bArr;
                boolean[] zArr = new boolean[i2];
                for (int i3 = 0; i3 < this.f33752f; i3++) {
                    int i4 = this.d;
                    RoundingMode roundingMode2 = RoundingMode.CEILING;
                    zArr[IntMath.a(i3 * 8, i4)] = true;
                }
                this.f33753h = z;
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Alphabet)) {
                return false;
            }
            Alphabet alphabet = (Alphabet) obj;
            return this.f33753h == alphabet.f33753h && Arrays.equals(this.f33749b, alphabet.f33749b);
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f33749b) + (this.f33753h ? 1231 : 1237);
        }

        public final String toString() {
            return this.f33748a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Alphabet(String str, char[] cArr) {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i2 = 0; i2 < cArr.length; i2++) {
                char c2 = cArr[i2];
                if (c2 < 128) {
                    if (bArr[c2] == -1) {
                        bArr[c2] = (byte) i2;
                    } else {
                        md.n(Strings.b("Duplicate character: %s", Character.valueOf(c2)));
                        throw null;
                    }
                } else {
                    md.n(Strings.b("Non-ASCII character: %s", Character.valueOf(c2)));
                    throw null;
                }
            }
            this(str, cArr, bArr, false);
        }
    }
}
