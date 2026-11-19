package okhttp3;

import defpackage.b21;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u0014\u0015Bs\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lokhttp3/CacheControl;", "", "", "noCache", "noStore", "", "maxAgeSeconds", "sMaxAgeSeconds", "isPrivate", "isPublic", "mustRevalidate", "maxStaleSeconds", "minFreshSeconds", "onlyIfCached", "noTransform", "immutable", "", "headerValue", "<init>", "(ZZIIZZZIIZZZLjava/lang/String;)V", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CacheControl {
    public static final Companion n = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f76841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f76842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f76843c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f76844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f76845f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f76846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f76847i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f76848j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f76849k;
    public final boolean l;
    public String m;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/CacheControl$Builder;", "", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f76850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f76851b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f76852c;
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokhttp3/CacheControl$Companion;", "", "Lokhttp3/CacheControl;", "FORCE_NETWORK", "Lokhttp3/CacheControl;", "FORCE_CACHE", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:108:0x0064 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:109:0x006a A[EDGE_INSN: B:109:0x006a->B:22:0x006a BREAK  A[LOOP:2: B:16:0x004c->B:20:0x005d], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:15:0x0047  */
        /* JADX WARN: Code duplicated, block: B:17:0x004e  */
        /* JADX WARN: Code duplicated, block: B:20:0x005d A[LOOP:2: B:16:0x004c->B:20:0x005d, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:51:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:54:0x0105  */
        /* JADX WARN: Code duplicated, block: B:56:0x010e  */
        /* JADX WARN: Code duplicated, block: B:58:0x0116  */
        /* JADX WARN: Code duplicated, block: B:59:0x011c  */
        /* JADX WARN: Code duplicated, block: B:61:0x0124  */
        /* JADX WARN: Code duplicated, block: B:63:0x012d  */
        /* JADX WARN: Code duplicated, block: B:65:0x0136  */
        /* JADX WARN: Code duplicated, block: B:66:0x013b  */
        /* JADX WARN: Code duplicated, block: B:68:0x0143  */
        /* JADX WARN: Code duplicated, block: B:69:0x0149  */
        /* JADX WARN: Code duplicated, block: B:71:0x0151  */
        /* JADX WARN: Code duplicated, block: B:72:0x0157  */
        /* JADX WARN: Code duplicated, block: B:74:0x015f  */
        /* JADX WARN: Code duplicated, block: B:75:0x0165  */
        /* JADX WARN: Code duplicated, block: B:77:0x016d  */
        /* JADX WARN: Code duplicated, block: B:78:0x0175  */
        /* JADX WARN: Code duplicated, block: B:80:0x017d  */
        /* JADX WARN: Code duplicated, block: B:81:0x0183  */
        /* JADX WARN: Code duplicated, block: B:83:0x018c  */
        /* JADX WARN: Code duplicated, block: B:84:0x0193  */
        /* JADX WARN: Code duplicated, block: B:86:0x019b  */
        /* JADX WARN: Code duplicated, block: B:87:0x01a2  */
        /* JADX WARN: Code duplicated, block: B:89:0x01aa  */
        public static CacheControl a(Headers headers) {
            int i2;
            int length;
            int length2;
            int i3;
            String string;
            String string2;
            Headers headers2 = headers;
            headers2.getClass();
            int size = headers2.size();
            int i4 = 0;
            boolean z = true;
            String str = null;
            boolean z2 = false;
            boolean z3 = false;
            int iQ = -1;
            int iQ2 = -1;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            int iQ3 = -1;
            int iQ4 = -1;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            while (i4 < size) {
                String strF = headers2.f(i4);
                String strM = headers2.m(i4);
                if (strF.equalsIgnoreCase("Cache-Control")) {
                    if (str == null) {
                        str = strM;
                    }
                    i2 = 0;
                    while (i2 < strM.length()) {
                        length = strM.length();
                        length2 = i2;
                        while (true) {
                            if (length2 < length) {
                                i3 = size;
                                length2 = strM.length();
                                break;
                            }
                            i3 = size;
                            if (StringsKt.l("=,;", strM.charAt(length2))) {
                                break;
                            }
                            length2++;
                            size = i3;
                        }
                        string = StringsKt.a0(strM.substring(i2, length2)).toString();
                        if (length2 != strM.length() || strM.charAt(length2) == ',' || strM.charAt(length2) == ';') {
                            i2 = length2 + 1;
                            string2 = null;
                        } else {
                            int length3 = length2 + 1;
                            byte[] bArr = _UtilCommonKt.f77016a;
                            int length4 = strM.length();
                            while (true) {
                                if (length3 < length4) {
                                    char cCharAt = strM.charAt(length3);
                                    if (cCharAt != ' ' && cCharAt != '\t') {
                                        break;
                                    }
                                    length3++;
                                } else {
                                    length3 = strM.length();
                                    break;
                                }
                            }
                            if (length3 >= strM.length() || strM.charAt(length3) != '\"') {
                                int length5 = strM.length();
                                int length6 = length3;
                                while (true) {
                                    if (length6 >= length5) {
                                        length6 = strM.length();
                                        break;
                                    }
                                    int i5 = length5;
                                    if (StringsKt.l(",;", strM.charAt(length6))) {
                                        break;
                                    }
                                    length6++;
                                    length5 = i5;
                                }
                                int i6 = length6;
                                string2 = StringsKt.a0(strM.substring(length3, length6)).toString();
                                i2 = i6;
                            } else {
                                int i7 = length3 + 1;
                                int iU = StringsKt.u(strM, '\"', i7, 4);
                                string2 = strM.substring(i7, iU);
                                i2 = iU + 1;
                            }
                        }
                        if ("no-cache".equalsIgnoreCase(string)) {
                            z2 = true;
                        } else if ("no-store".equalsIgnoreCase(string)) {
                            z3 = true;
                        } else if ("max-age".equalsIgnoreCase(string)) {
                            iQ = _UtilCommonKt.q(-1, string2);
                        } else if ("s-maxage".equalsIgnoreCase(string)) {
                            iQ2 = _UtilCommonKt.q(-1, string2);
                        } else if ("private".equalsIgnoreCase(string)) {
                            z4 = true;
                        } else if ("public".equalsIgnoreCase(string)) {
                            z5 = true;
                        } else if ("must-revalidate".equalsIgnoreCase(string)) {
                            z6 = true;
                        } else if ("max-stale".equalsIgnoreCase(string)) {
                            iQ3 = _UtilCommonKt.q(Integer.MAX_VALUE, string2);
                        } else if ("min-fresh".equalsIgnoreCase(string)) {
                            iQ4 = _UtilCommonKt.q(-1, string2);
                        } else if ("only-if-cached".equalsIgnoreCase(string)) {
                            z7 = true;
                        } else if ("no-transform".equalsIgnoreCase(string)) {
                            z8 = true;
                        } else if ("immutable".equalsIgnoreCase(string)) {
                            z9 = true;
                        }
                        size = i3;
                    }
                    i4++;
                    headers2 = headers;
                    size = size;
                } else {
                    if (strF.equalsIgnoreCase("Pragma")) {
                    }
                    i4++;
                    headers2 = headers;
                    size = size;
                }
                z = false;
                i2 = 0;
                while (i2 < strM.length()) {
                    length = strM.length();
                    length2 = i2;
                    while (true) {
                        if (length2 < length) {
                            i3 = size;
                            length2 = strM.length();
                            break;
                        }
                        i3 = size;
                        if (StringsKt.l("=,;", strM.charAt(length2))) {
                            break;
                            break;
                        }
                        length2++;
                        size = i3;
                    }
                    string = StringsKt.a0(strM.substring(i2, length2)).toString();
                    if (length2 != strM.length()) {
                        i2 = length2 + 1;
                        string2 = null;
                    } else {
                        i2 = length2 + 1;
                        string2 = null;
                    }
                    if ("no-cache".equalsIgnoreCase(string)) {
                        z2 = true;
                    } else if ("no-store".equalsIgnoreCase(string)) {
                        z3 = true;
                    } else if ("max-age".equalsIgnoreCase(string)) {
                        iQ = _UtilCommonKt.q(-1, string2);
                    } else if ("s-maxage".equalsIgnoreCase(string)) {
                        iQ2 = _UtilCommonKt.q(-1, string2);
                    } else if ("private".equalsIgnoreCase(string)) {
                        z4 = true;
                    } else if ("public".equalsIgnoreCase(string)) {
                        z5 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(string)) {
                        z6 = true;
                    } else if ("max-stale".equalsIgnoreCase(string)) {
                        iQ3 = _UtilCommonKt.q(Integer.MAX_VALUE, string2);
                    } else if ("min-fresh".equalsIgnoreCase(string)) {
                        iQ4 = _UtilCommonKt.q(-1, string2);
                    } else if ("only-if-cached".equalsIgnoreCase(string)) {
                        z7 = true;
                    } else if ("no-transform".equalsIgnoreCase(string)) {
                        z8 = true;
                    } else if ("immutable".equalsIgnoreCase(string)) {
                        z9 = true;
                    }
                    size = i3;
                }
                i4++;
                headers2 = headers;
                size = size;
            }
            return new CacheControl(z2, z3, iQ, iQ2, z4, z5, z6, iQ3, iQ4, z7, z8, z9, !z ? null : str);
        }
    }

    static {
        Builder builder = new Builder();
        builder.f76850a = true;
        new CacheControl(true, false, -1, -1, false, false, false, builder.f76851b, -1, builder.f76852c, false, false, null);
        Builder builder2 = new Builder();
        builder2.f76852c = true;
        Duration.Companion companion = Duration.INSTANCE;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        long jK = Duration.k(DurationKt.g(Integer.MAX_VALUE, durationUnit), durationUnit);
        if (jK < 0) {
            b21.n(d21.g(jK, "maxStale < 0: "));
            return;
        }
        int i2 = jK <= 2147483647L ? (int) jK : Integer.MAX_VALUE;
        builder2.f76851b = i2;
        new CacheControl(builder2.f76850a, false, -1, -1, false, false, false, i2, -1, builder2.f76852c, false, false, null);
    }

    public CacheControl(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, String str) {
        this.f76841a = z;
        this.f76842b = z2;
        this.f76843c = i2;
        this.d = i3;
        this.f76844e = z3;
        this.f76845f = z4;
        this.g = z5;
        this.f76846h = i4;
        this.f76847i = i5;
        this.f76848j = z6;
        this.f76849k = z7;
        this.l = z8;
        this.m = str;
    }

    public final String toString() {
        String str = this.m;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f76841a) {
            sb.append("no-cache, ");
        }
        if (this.f76842b) {
            sb.append("no-store, ");
        }
        int i2 = this.f76843c;
        if (i2 != -1) {
            sb.append("max-age=");
            sb.append(i2);
            sb.append(", ");
        }
        int i3 = this.d;
        if (i3 != -1) {
            sb.append("s-maxage=");
            sb.append(i3);
            sb.append(", ");
        }
        if (this.f76844e) {
            sb.append("private, ");
        }
        if (this.f76845f) {
            sb.append("public, ");
        }
        if (this.g) {
            sb.append("must-revalidate, ");
        }
        int i4 = this.f76846h;
        if (i4 != -1) {
            sb.append("max-stale=");
            sb.append(i4);
            sb.append(", ");
        }
        int i5 = this.f76847i;
        if (i5 != -1) {
            sb.append("min-fresh=");
            sb.append(i5);
            sb.append(", ");
        }
        if (this.f76848j) {
            sb.append("only-if-cached, ");
        }
        if (this.f76849k) {
            sb.append("no-transform, ");
        }
        if (this.l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length()).getClass();
        String string = sb.toString();
        this.m = string;
        return string;
    }
}
