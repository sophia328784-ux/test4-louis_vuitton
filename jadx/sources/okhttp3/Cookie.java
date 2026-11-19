package okhttp3;

import com.networkbench.agent.impl.util.r;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.DateFormattingKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/Cookie;", "", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Cookie {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Companion f76881k = new Companion(null);
    public static final Pattern l = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern m = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern n = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern o = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f76882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f76883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f76884c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f76885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f76886f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f76887h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f76888i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f76889j;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u001c\u0010\u0007\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005R\u001c\u0010\b\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0005¨\u0006\t"}, d2 = {"Lokhttp3/Cookie$Companion;", "", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "YEAR_PATTERN", "Ljava/util/regex/Pattern;", "MONTH_PATTERN", "DAY_OF_MONTH_PATTERN", "TIME_PATTERN", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static int a(String str, int i2, int i3, boolean z) {
            while (i2 < i3) {
                char cCharAt = str.charAt(i2);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z)) {
                    return i2;
                }
                i2++;
            }
            return i3;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x009a  */
        public static long b(int i2, String str) {
            int iA = a(str, 0, i2, false);
            Matcher matcher = Cookie.o.matcher(str);
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int iV = -1;
            int i6 = -1;
            int i7 = -1;
            while (iA < i2) {
                int iA2 = a(str, iA + 1, i2, true);
                matcher.region(iA, iA2);
                if (i4 == -1 && matcher.usePattern(Cookie.o).matches()) {
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    i4 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    strGroup2.getClass();
                    i6 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    strGroup3.getClass();
                    i7 = Integer.parseInt(strGroup3);
                } else if (i5 == -1 && matcher.usePattern(Cookie.n).matches()) {
                    String strGroup4 = matcher.group(1);
                    strGroup4.getClass();
                    i5 = Integer.parseInt(strGroup4);
                } else if (iV == -1) {
                    Pattern pattern = Cookie.m;
                    if (matcher.usePattern(pattern).matches()) {
                        String strGroup5 = matcher.group(1);
                        strGroup5.getClass();
                        Locale locale = Locale.US;
                        locale.getClass();
                        String lowerCase = strGroup5.toLowerCase(locale);
                        lowerCase.getClass();
                        String strPattern = pattern.pattern();
                        strPattern.getClass();
                        iV = StringsKt.v(strPattern, lowerCase, 0, false, 6) / 4;
                    } else if (i3 != -1 && matcher.usePattern(Cookie.l).matches()) {
                        String strGroup6 = matcher.group(1);
                        strGroup6.getClass();
                        i3 = Integer.parseInt(strGroup6);
                    }
                } else if (i3 != -1) {
                }
                iA = a(str, iA2 + 1, i2, false);
            }
            if (70 <= i3 && i3 < 100) {
                i3 += 1900;
            }
            if (i3 >= 0 && i3 < 70) {
                i3 += r.E;
            }
            if (i3 < 1601) {
                md.n("Failed requirement.");
                return 0L;
            }
            if (iV == -1) {
                md.n("Failed requirement.");
                return 0L;
            }
            if (1 > i5 || i5 >= 32) {
                md.n("Failed requirement.");
                return 0L;
            }
            if (i4 < 0 || i4 >= 24) {
                md.n("Failed requirement.");
                return 0L;
            }
            if (i6 < 0 || i6 >= 60) {
                md.n("Failed requirement.");
                return 0L;
            }
            if (i7 < 0 || i7 >= 60) {
                md.n("Failed requirement.");
                return 0L;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(_UtilJvmKt.f77018a);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i3);
            gregorianCalendar.set(2, iV - 1);
            gregorianCalendar.set(5, i5);
            gregorianCalendar.set(11, i4);
            gregorianCalendar.set(12, i6);
            gregorianCalendar.set(13, i7);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    public Cookie(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f76882a = str;
        this.f76883b = str2;
        this.f76884c = j2;
        this.d = str3;
        this.f76885e = str4;
        this.f76886f = z;
        this.g = z2;
        this.f76887h = z3;
        this.f76888i = z4;
        this.f76889j = str5;
    }

    public final String a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f76882a);
        sb.append('=');
        sb.append(this.f76883b);
        if (this.f76887h) {
            long j2 = this.f76884c;
            if (j2 == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String str = DateFormattingKt.f77165a.get().format(new Date(j2));
                str.getClass();
                sb.append(str);
            }
        }
        if (!this.f76888i) {
            sb.append("; domain=");
            if (z) {
                sb.append(FileUtils.HIDDEN_PREFIX);
            }
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.f76885e);
        if (this.f76886f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        String str2 = this.f76889j;
        if (str2 != null) {
            sb.append("; samesite=");
            sb.append(str2);
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return Intrinsics.c(cookie.f76882a, this.f76882a) && Intrinsics.c(cookie.f76883b, this.f76883b) && cookie.f76884c == this.f76884c && Intrinsics.c(cookie.d, this.d) && Intrinsics.c(cookie.f76885e, this.f76885e) && cookie.f76886f == this.f76886f && cookie.g == this.g && cookie.f76887h == this.f76887h && cookie.f76888i == this.f76888i && Intrinsics.c(cookie.f76889j, this.f76889j);
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(o60.b(fc.b(fc.b(fc.a(fc.b(fc.b(527, 31, this.f76882a), 31, this.f76883b), 31, this.f76884c), 31, this.d), 31, this.f76885e), 31, this.f76886f), 31, this.g), 31, this.f76887h), 31, this.f76888i);
        String str = this.f76889j;
        return iB + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return a(false);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/Cookie$Builder;", "", "<init>", "()V", "Lokhttp3/Cookie;", "cookie", "(Lokhttp3/Cookie;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f76890a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f76891b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f76892c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f76893e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f76894f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f76895h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f76896i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f76897j;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Cookie cookie) {
            this();
            cookie.getClass();
            this.f76890a = cookie.f76882a;
            this.f76891b = cookie.f76883b;
            this.f76892c = cookie.f76884c;
            this.d = cookie.d;
            this.f76893e = cookie.f76885e;
            this.f76894f = cookie.f76886f;
            this.g = cookie.g;
            this.f76895h = cookie.f76887h;
            this.f76896i = cookie.f76888i;
            this.f76897j = cookie.f76889j;
        }

        public Builder() {
            this.f76892c = 253402300799999L;
            this.f76893e = "/";
        }
    }
}
