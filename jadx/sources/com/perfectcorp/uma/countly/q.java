package com.perfectcorp.uma.countly;

import defpackage.a61;
import defpackage.ct0;
import defpackage.md;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f43245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43246c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43248f;
    public char[] g;

    public q(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f43244a = name;
        this.f43245b = name.length();
    }

    public final int a(int i2) {
        int i3;
        int i4;
        int i5 = i2 + 1;
        int i6 = this.f43245b;
        String str = this.f43244a;
        if (i5 < i6) {
            char[] cArr = this.g;
            char c2 = cArr[i2];
            if (c2 >= '0' && c2 <= '9') {
                i3 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i3 = c2 - 'W';
            } else if (c2 >= 'A' && c2 <= 'F') {
                i3 = c2 - '7';
            }
            char c3 = cArr[i5];
            if (c3 >= '0' && c3 <= '9') {
                i4 = c3 - '0';
            } else if (c3 >= 'a' && c3 <= 'f') {
                i4 = c3 - 'W';
            } else if (c3 >= 'A' && c3 <= 'F') {
                i4 = c3 - '7';
            }
            return (i3 << 4) + i4;
        }
        a61.q(str, "Malformed DN: ");
        return 0;
    }

    public final String b() {
        String str;
        char[] cArr;
        char c2;
        int i2;
        char c3;
        this.f43246c = 0;
        this.d = 0;
        this.f43247e = 0;
        this.f43248f = 0;
        String str2 = this.f43244a;
        this.g = str2.toCharArray();
        String strC = c();
        if (strC != null) {
            do {
                int i3 = this.f43246c;
                int i4 = this.f43245b;
                if (i3 != i4) {
                    char c4 = this.g[i3];
                    if (c4 == '\"') {
                        int i5 = i3 + 1;
                        this.f43246c = i5;
                        this.d = i5;
                        while (true) {
                            this.f43247e = i5;
                            int i6 = this.f43246c;
                            if (i6 == i4) {
                                md.k("Unexpected end of DN: ".concat(str2));
                                return null;
                            }
                            char[] cArr2 = this.g;
                            char c5 = cArr2[i6];
                            if (c5 == '\"') {
                                do {
                                    this.f43246c = i6 + 1;
                                    i6 = this.f43246c;
                                    if (i6 >= i4) {
                                        break;
                                    }
                                } while (this.g[i6] == ' ');
                                char[] cArr3 = this.g;
                                int i7 = this.d;
                                str = new String(cArr3, i7, this.f43247e - i7);
                                break;
                            }
                            int i8 = this.f43247e;
                            if (c5 == '\\') {
                                cArr2[i8] = d();
                            } else {
                                cArr2[i8] = c5;
                            }
                            this.f43246c++;
                            i5 = this.f43247e + 1;
                        }
                    } else if (c4 == '#') {
                        if (i3 + 4 >= i4) {
                            md.k("Unexpected end of DN: ".concat(str2));
                            return null;
                        }
                        this.d = i3;
                        while (true) {
                            this.f43246c = i3 + 1;
                            i3 = this.f43246c;
                            if (i3 == i4 || (c2 = (cArr = this.g)[i3]) == '+' || c2 == ',' || c2 == ';') {
                                this.f43247e = i3;
                                break;
                            }
                            if (c2 == ' ') {
                                this.f43247e = i3;
                                do {
                                    this.f43246c = i3 + 1;
                                    i3 = this.f43246c;
                                    if (i3 >= i4) {
                                        break;
                                    }
                                } while (this.g[i3] == ' ');
                            } else if (c2 >= 'A' && c2 <= 'F') {
                                cArr[i3] = (char) (c2 + ' ');
                            }
                        }
                        int i9 = this.f43247e;
                        int i10 = this.d;
                        int i11 = i9 - i10;
                        if (i11 < 5 || (i11 & 1) == 0) {
                            md.k("Unexpected end of DN: ".concat(str2));
                            return null;
                        }
                        int i12 = i11 / 2;
                        byte[] bArr = new byte[i12];
                        int i13 = i10 + 1;
                        for (int i14 = 0; i14 < i12; i14++) {
                            bArr[i14] = (byte) a(i13);
                            i13 += 2;
                        }
                        str = new String(this.g, this.d, i11);
                    } else if (c4 != '+' && c4 != ',' && c4 != ';') {
                        this.d = i3;
                        this.f43247e = i3;
                        while (true) {
                            int i15 = this.f43246c;
                            char[] cArr4 = this.g;
                            if (i15 >= i4) {
                                int i16 = this.d;
                                str = new String(cArr4, i16, this.f43247e - i16);
                                break;
                            }
                            char c6 = cArr4[i15];
                            if (c6 != ' ') {
                                if (c6 != ';') {
                                    if (c6 == '\\') {
                                        int i17 = this.f43247e;
                                        this.f43247e = i17 + 1;
                                        cArr4[i17] = d();
                                        i15 = this.f43246c;
                                    } else if (c6 != '+' && c6 != ',') {
                                        int i18 = this.f43247e;
                                        this.f43247e = i18 + 1;
                                        cArr4[i18] = c6;
                                    }
                                    this.f43246c = i15 + 1;
                                }
                                int i19 = this.d;
                                str = new String(cArr4, i19, this.f43247e - i19);
                                break;
                            }
                            int i20 = this.f43247e;
                            this.f43248f = i20;
                            this.f43246c = i15 + 1;
                            this.f43247e = i20 + 1;
                            cArr4[i20] = ' ';
                            while (true) {
                                i2 = this.f43246c;
                                if (i2 >= i4) {
                                    break;
                                }
                                char[] cArr5 = this.g;
                                if (cArr5[i2] != ' ') {
                                    break;
                                }
                                int i21 = this.f43247e;
                                this.f43247e = i21 + 1;
                                cArr5[i21] = ' ';
                                this.f43246c = i2 + 1;
                            }
                            if (i2 == i4 || (c3 = this.g[i2]) == ',' || c3 == '+' || c3 == ';') {
                                char[] cArr6 = this.g;
                                int i22 = this.d;
                                str = new String(cArr6, i22, this.f43248f - i22);
                                break;
                            }
                        }
                    } else {
                        str = "";
                    }
                    if ("cn".equalsIgnoreCase(strC)) {
                        return str;
                    }
                    int i23 = this.f43246c;
                    if (i23 < i4) {
                        char c7 = this.g[i23];
                        if (c7 != ',' && c7 != ';' && c7 != '+') {
                            md.k("Malformed DN: ".concat(str2));
                            return null;
                        }
                        this.f43246c = i23 + 1;
                        strC = c();
                    }
                }
            } while (strC != null);
            md.k("Malformed DN: ".concat(str2));
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        if (r0 != r1) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String c() {
        /*
            r7 = this;
        L0:
            int r0 = r7.f43246c
            int r1 = r7.f43245b
            r2 = 32
            if (r0 >= r1) goto L13
            char[] r3 = r7.g
            char r3 = r3[r0]
            if (r3 != r2) goto L13
            int r0 = r0 + 1
            r7.f43246c = r0
            goto L0
        L13:
            if (r0 != r1) goto L17
            r7 = 0
            return r7
        L17:
            r7.d = r0
        L19:
            int r0 = r0 + 1
            r7.f43246c = r0
            int r0 = r7.f43246c
            r3 = 61
            if (r0 >= r1) goto L2c
            char[] r4 = r7.g
            char r4 = r4[r0]
            if (r4 == r3) goto L2c
            if (r4 == r2) goto L2c
            goto L19
        L2c:
            java.lang.String r4 = r7.f43244a
            java.lang.String r5 = "Unexpected end of DN: "
            if (r0 >= r1) goto L54
            r7.f43247e = r0
            char[] r6 = r7.g
            char r0 = r6[r0]
            if (r0 != r2) goto L59
        L3a:
            int r0 = r7.f43246c
            if (r0 >= r1) goto L4b
            char[] r6 = r7.g
            char r6 = r6[r0]
            if (r6 == r3) goto L4b
            if (r6 != r2) goto L4b
            int r0 = r0 + 1
            r7.f43246c = r0
            goto L3a
        L4b:
            char[] r6 = r7.g
            char r6 = r6[r0]
            if (r6 != r3) goto L54
            if (r0 == r1) goto L54
            goto L59
        L54:
            defpackage.a61.q(r4, r5)
            r7 = 0
            return r7
        L59:
            int r0 = r7.f43246c
            int r0 = r0 + 1
            r7.f43246c = r0
            if (r0 >= r1) goto L67
            char[] r3 = r7.g
            char r0 = r3[r0]
            if (r0 == r2) goto L59
        L67:
            int r0 = r7.f43247e
            int r1 = r7.d
            int r2 = r0 - r1
            r3 = 4
            if (r2 <= r3) goto La7
            char[] r2 = r7.g
            int r4 = r1 + 3
            char r4 = r2[r4]
            r5 = 46
            if (r4 != r5) goto La7
            char r4 = r2[r1]
            r5 = 79
            if (r4 == r5) goto L84
            r5 = 111(0x6f, float:1.56E-43)
            if (r4 != r5) goto La7
        L84:
            int r4 = r1 + 1
            char r4 = r2[r4]
            r5 = 73
            if (r4 == r5) goto L94
            int r4 = r1 + 1
            char r4 = r2[r4]
            r5 = 105(0x69, float:1.47E-43)
            if (r4 != r5) goto La7
        L94:
            int r4 = r1 + 2
            char r4 = r2[r4]
            r5 = 68
            if (r4 == r5) goto La4
            int r4 = r1 + 2
            char r2 = r2[r4]
            r4 = 100
            if (r2 != r4) goto La7
        La4:
            int r1 = r1 + r3
            r7.d = r1
        La7:
            java.lang.String r1 = new java.lang.String
            char[] r2 = r7.g
            int r7 = r7.d
            int r0 = r0 - r7
            r1.<init>(r2, r7, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.uma.countly.q.c():java.lang.String");
    }

    public final char d() {
        int i2;
        int i3;
        int i4 = this.f43246c + 1;
        this.f43246c = i4;
        int i5 = this.f43245b;
        if (i4 == i5) {
            ct0.o(this.f43244a, "Unexpected end of DN: ");
            return (char) 0;
        }
        char c2 = this.g[i4];
        if (c2 != ' ' && c2 != '%' && c2 != '\\' && c2 != '_' && c2 != '\"' && c2 != '#') {
            switch (c2) {
                default:
                    switch (c2) {
                        case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iA = a(i4);
                            this.f43246c++;
                            if (iA < 128) {
                                return (char) iA;
                            }
                            if (iA < 192 || iA > 247) {
                                return '?';
                            }
                            if (iA <= 223) {
                                i2 = iA & 31;
                                i3 = 1;
                            } else if (iA <= 239) {
                                i2 = iA & 15;
                                i3 = 2;
                            } else {
                                i2 = iA & 7;
                                i3 = 3;
                            }
                            for (int i6 = 0; i6 < i3; i6++) {
                                int i7 = this.f43246c;
                                int i8 = i7 + 1;
                                this.f43246c = i8;
                                if (i8 == i5 || this.g[i8] != '\\') {
                                    return '?';
                                }
                                int i9 = i7 + 2;
                                this.f43246c = i9;
                                int iA2 = a(i9);
                                this.f43246c++;
                                if ((iA2 & 192) != 128) {
                                    return '?';
                                }
                                i2 = (i2 << 6) + (iA2 & 63);
                            }
                            return (char) i2;
                    }
                case EACTags.CURRENCY_CODE /* 42 */:
                case EACTags.DATE_OF_BIRTH /* 43 */:
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    return c2;
            }
        }
        return c2;
    }
}
