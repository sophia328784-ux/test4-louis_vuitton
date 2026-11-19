package kotlinx.serialization.json.internal;

import defpackage.d21;
import defpackage.n00;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "", "<init>", "()V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractJsonLexer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f75765a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f75767c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonPath f75766b = new JsonPath();
    public final StringBuilder d = new StringBuilder();

    public static /* synthetic */ void m(AbstractJsonLexer abstractJsonLexer, String str, int i2, String str2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = abstractJsonLexer.f75765a;
        }
        if ((i3 & 4) != 0) {
            str2 = "";
        }
        abstractJsonLexer.l(i2, str, str2);
        throw null;
    }

    public final int a(CharSequence charSequence, int i2) {
        int i3 = i2 + 4;
        if (i3 < charSequence.length()) {
            this.d.append((char) (n(charSequence, i2 + 3) + (n(charSequence, i2) << 12) + (n(charSequence, i2 + 1) << 8) + (n(charSequence, i2 + 2) << 4)));
            return i3;
        }
        this.f75765a = i2;
        if (i3 < charSequence.length()) {
            return a(charSequence, this.f75765a);
        }
        m(this, "Unexpected EOF during unicode escape", 0, null, 6);
        throw null;
    }

    public abstract boolean b();

    public final void c(int i2, String str) {
        if (getF75832e().length() - i2 < str.length()) {
            m(this, "Unexpected end of boolean literal", 0, null, 6);
            throw null;
        }
        int length = str.length();
        for (int i3 = 0; i3 < length; i3++) {
            if (str.charAt(i3) != (getF75832e().charAt(i2 + i3) | ' ')) {
                m(this, "Expected valid boolean literal prefix, but had '" + j() + '\'', 0, null, 6);
                throw null;
            }
        }
        this.f75765a = str.length() + i2;
    }

    public abstract String d();

    public abstract byte e();

    public final byte f(byte b2) {
        byte bE = e();
        if (bE == b2) {
            return bE;
        }
        String strB = AbstractJsonLexerKt.b(b2);
        int i2 = this.f75765a;
        int i3 = i2 - 1;
        m(this, d21.l("Expected ", strB, ", but had '", (i2 == getF75832e().length() || i3 < 0) ? "EOF" : String.valueOf(getF75832e().charAt(i3)), "' instead"), i3, null, 4);
        throw null;
    }

    public abstract void g(char c2);

    public final long h() {
        boolean z;
        boolean z2;
        double dPow;
        int iS = s(t());
        int i2 = 0;
        if (iS >= getF75832e().length() || iS == -1) {
            m(this, "EOF", 0, null, 6);
            throw null;
        }
        if (getF75832e().charAt(iS) == '\"') {
            iS++;
            if (iS == getF75832e().length()) {
                m(this, "EOF", 0, null, 6);
                throw null;
            }
            z = true;
        } else {
            z = false;
        }
        int i3 = iS;
        int i4 = 0;
        boolean z3 = false;
        boolean z4 = false;
        long j2 = 0;
        long j3 = 0;
        while (true) {
            if (i3 == getF75832e().length()) {
                z = z;
                z2 = z3;
                break;
            }
            char cCharAt = getF75832e().charAt(i3);
            if ((cCharAt != 'e' && cCharAt != 'E') || z3) {
                z = z;
                if (cCharAt == '-' && z3) {
                    if (i3 == iS) {
                        m(this, "Unexpected symbol '-' in numeric literal", i2, null, 6);
                        throw null;
                    }
                    i3++;
                    i4 = i2;
                } else if (cCharAt != '+' || !z3) {
                    z2 = z3;
                    if (cCharAt != '-') {
                        if (AbstractJsonLexerKt.a(cCharAt) != 0) {
                            break;
                        }
                        i3++;
                        int i5 = cCharAt - '0';
                        if (i5 < 0 || i5 >= 10) {
                            m(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", i2, null, 6);
                            throw null;
                        }
                        if (z2) {
                            j2 = (j2 * 10) + ((long) i5);
                            z3 = z2;
                        } else {
                            j3 = (j3 * 10) - ((long) i5);
                            if (j3 > 0) {
                                m(this, "Numeric value overflow", 0, null, 6);
                                throw null;
                            }
                            z = z;
                            z3 = z2;
                            i2 = 0;
                        }
                    } else {
                        if (i3 != iS) {
                            m(this, "Unexpected symbol '-' in numeric literal", i2, null, 6);
                            throw null;
                        }
                        i3++;
                        z = z;
                        z3 = z2;
                        z4 = true;
                    }
                } else {
                    if (i3 == iS) {
                        m(this, "Unexpected symbol '+' in numeric literal", i2, null, 6);
                        throw null;
                    }
                    i3++;
                    z = z;
                    i4 = 1;
                }
            } else {
                if (i3 == iS) {
                    m(this, "Unexpected symbol " + cCharAt + " in numeric literal", i2, null, 6);
                    throw null;
                }
                i3++;
                i4 = 1;
                z3 = true;
            }
        }
        boolean z5 = i3 != iS;
        if (iS == i3 || (z4 && iS == i3 - 1)) {
            m(this, "Expected numeric literal", 0, null, 6);
            throw null;
        }
        if (z) {
            if (!z5) {
                m(this, "EOF", 0, null, 6);
                throw null;
            }
            if (getF75832e().charAt(i3) != '\"') {
                m(this, "Expected closing quotation mark", 0, null, 6);
                throw null;
            }
            i3++;
        }
        this.f75765a = i3;
        if (z2) {
            double d = j3;
            if (i4 == 0) {
                dPow = Math.pow(10.0d, -j2);
            } else {
                if (i4 != 1) {
                    v40.g();
                    return 0L;
                }
                dPow = Math.pow(10.0d, j2);
            }
            double d2 = d * dPow;
            if (d2 > 9.223372036854776E18d || d2 < -9.223372036854776E18d) {
                m(this, "Numeric value overflow", 0, null, 6);
                throw null;
            }
            if (Math.floor(d2) != d2) {
                m(this, "Can't convert " + d2 + " to Long", 0, null, 6);
                throw null;
            }
            j3 = (long) d2;
        }
        if (z4) {
            return j3;
        }
        if (j3 != Long.MIN_VALUE) {
            return -j3;
        }
        m(this, "Numeric value overflow", 0, null, 6);
        throw null;
    }

    public final String i() {
        String str = this.f75767c;
        if (str == null) {
            return d();
        }
        str.getClass();
        this.f75767c = null;
        return str;
    }

    public final String j() {
        String string;
        String str = this.f75767c;
        if (str != null) {
            str.getClass();
            this.f75767c = null;
            return str;
        }
        int iT = t();
        if (iT >= getF75832e().length() || iT == -1) {
            m(this, "EOF", iT, null, 4);
            throw null;
        }
        byte bA = AbstractJsonLexerKt.a(getF75832e().charAt(iT));
        if (bA == 1) {
            return i();
        }
        if (bA != 0) {
            m(this, "Expected beginning of the string, but got " + getF75832e().charAt(iT), 0, null, 6);
            throw null;
        }
        boolean z = false;
        while (true) {
            byte bA2 = AbstractJsonLexerKt.a(getF75832e().charAt(iT));
            StringBuilder sb = this.d;
            if (bA2 != 0) {
                int i2 = this.f75765a;
                if (z) {
                    sb.append((CharSequence) getF75832e(), i2, iT);
                    string = sb.toString();
                    sb.setLength(0);
                } else {
                    string = getF75832e().subSequence(i2, iT).toString();
                }
                this.f75765a = iT;
                return string;
            }
            iT++;
            if (iT >= getF75832e().length()) {
                sb.append((CharSequence) getF75832e(), this.f75765a, iT);
                int iS = s(iT);
                if (iS == -1) {
                    this.f75765a = iT;
                    sb.append((CharSequence) getF75832e(), 0, 0);
                    String string2 = sb.toString();
                    sb.setLength(0);
                    return string2;
                }
                iT = iS;
                z = true;
            }
        }
    }

    public final String k() {
        String strJ = j();
        if (!Intrinsics.c(strJ, "null") || getF75832e().charAt(this.f75765a - 1) == '\"') {
            return strJ;
        }
        m(this, "Unexpected 'null' value instead of string literal", 0, null, 6);
        throw null;
    }

    public final void l(int i2, String str, String str2) {
        str2.getClass();
        String strConcat = str2.length() == 0 ? "" : "\n".concat(str2);
        StringBuilder sbU = n00.u(str, " at path: ");
        sbU.append(this.f75766b.a());
        sbU.append(strConcat);
        throw JsonExceptionsKt.e(sbU.toString(), getF75832e(), i2);
    }

    public final int n(CharSequence charSequence, int i2) {
        char cCharAt = charSequence.charAt(i2);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        m(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6);
        throw null;
    }

    /* JADX INFO: renamed from: o */
    public abstract String getF75832e();

    public abstract String p(String str, boolean z);

    public byte q() {
        String strO = getF75832e();
        int i2 = this.f75765a;
        while (true) {
            int iS = s(i2);
            if (iS == -1) {
                this.f75765a = iS;
                return (byte) 10;
            }
            char cCharAt = strO.charAt(iS);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ') {
                this.f75765a = iS;
                return AbstractJsonLexerKt.a(cCharAt);
            }
            i2 = iS + 1;
        }
    }

    public final String r(boolean z) {
        String strI;
        byte bQ = q();
        if (z) {
            if (bQ != 1 && bQ != 0) {
                return null;
            }
            strI = j();
        } else {
            if (bQ != 1) {
                return null;
            }
            strI = i();
        }
        this.f75767c = strI;
        return strI;
    }

    public abstract int s(int i2);

    public abstract int t();

    public final String toString() {
        StringBuilder sb = new StringBuilder("JsonReader(source='");
        sb.append((Object) getF75832e());
        sb.append("', currentPosition=");
        return tr.k(sb, this.f75765a, ')');
    }

    public final boolean u() {
        int iT = t();
        String strO = getF75832e();
        if (iT >= strO.length() || iT == -1 || strO.charAt(iT) != ',') {
            return false;
        }
        this.f75765a++;
        return true;
    }

    public final boolean v(boolean z) {
        int iS = s(t());
        int length = getF75832e().length() - iS;
        if (length >= 4 && iS != -1) {
            for (int i2 = 0; i2 < 4; i2++) {
                if ("null".charAt(i2) == getF75832e().charAt(iS + i2)) {
                }
            }
            if (length <= 4 || AbstractJsonLexerKt.a(getF75832e().charAt(iS + 4)) != 0) {
                if (z) {
                    this.f75765a = iS + 4;
                }
                return true;
            }
        }
        return false;
    }

    public final void w(char c2) {
        int i2 = this.f75765a;
        if (i2 > 0 && c2 == '\"') {
            try {
                this.f75765a = i2 - 1;
                String strJ = j();
                this.f75765a = i2;
                if (Intrinsics.c(strJ, "null")) {
                    l(this.f75765a - 1, "Expected string literal but 'null' literal was found", "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.f75765a = i2;
                throw th;
            }
        }
        String strB = AbstractJsonLexerKt.b(AbstractJsonLexerKt.a(c2));
        int i3 = this.f75765a;
        int i4 = i3 - 1;
        String str = ((StringJsonLexer) this).f75832e;
        m(this, d21.l("Expected ", strB, ", but had '", (i3 == str.length() || i4 < 0) ? "EOF" : String.valueOf(str.charAt(i4)), "' instead"), i4, null, 4);
        throw null;
    }
}
