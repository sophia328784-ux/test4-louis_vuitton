package okhttp3;

import com.linkplay.network.SecurityConstants;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import defpackage.md;
import defpackage.x1;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/HttpUrl;", "", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HttpUrl {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f76918j = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f76919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f76920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f76921c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f76922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f76923f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f76924h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f76925i;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/HttpUrl$Builder;", "", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f76926a;
        public String d;
        public ArrayList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f76931h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f76927b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f76928c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f76929e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f76930f = CollectionsKt.U("");

        public static ArrayList g(String str) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 <= str.length()) {
                int iU = StringsKt.u(str, '&', i2, 4);
                if (iU == -1) {
                    iU = str.length();
                }
                int iU2 = StringsKt.u(str, '=', i2, 4);
                if (iU2 == -1 || iU2 > iU) {
                    arrayList.add(str.substring(i2, iU));
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i2, iU2));
                    arrayList.add(str.substring(iU2 + 1, iU));
                }
                i2 = iU + 1;
            }
            return arrayList;
        }

        public final void a(String str) {
            int i2 = 0;
            while (true) {
                int iE = _UtilCommonKt.e(i2, str.length(), str, "/\\");
                Builder builder = this;
                String str2 = str;
                builder.e(str2, i2, iE, iE < str.length(), false);
                i2 = iE + 1;
                if (i2 > str2.length()) {
                    return;
                }
                this = builder;
                str = str2;
            }
        }

        public final void b(String str, String str2) {
            str.getClass();
            if (this.g == null) {
                this.g = new ArrayList();
            }
            ArrayList arrayList = this.g;
            arrayList.getClass();
            arrayList.add(_UrlKt.a(str, 0, false, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", 0, 91));
            ArrayList arrayList2 = this.g;
            arrayList2.getClass();
            arrayList2.add(str2 != null ? _UrlKt.a(str2, 0, false, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", 0, 91) : null);
        }

        public final HttpUrl c() {
            ArrayList arrayList;
            String str = this.f76926a;
            if (str == null) {
                md.k("scheme == null");
                return null;
            }
            String strD = _UrlKt.d(0, 0, 7, this.f76927b);
            String strD2 = _UrlKt.d(0, 0, 7, this.f76928c);
            String str2 = this.d;
            if (str2 == null) {
                md.k("host == null");
                return null;
            }
            int iB = this.f76929e;
            if (iB == -1) {
                Companion companion = HttpUrl.f76918j;
                String str3 = this.f76926a;
                str3.getClass();
                companion.getClass();
                iB = Companion.b(str3);
            }
            ArrayList arrayList2 = this.f76930f;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(_UrlKt.d(0, 0, 7, (String) it.next()));
            }
            ArrayList<String> arrayList4 = this.g;
            if (arrayList4 != null) {
                arrayList = new ArrayList(CollectionsKt.t(arrayList4, 10));
                for (String str4 : arrayList4) {
                    arrayList.add(str4 != null ? _UrlKt.d(0, 0, 3, str4) : null);
                }
            } else {
                arrayList = null;
            }
            String str5 = this.f76931h;
            return new HttpUrl(str, strD, strD2, str2, iB, arrayList3, arrayList, str5 != null ? _UrlKt.d(0, 0, 7, str5) : null, toString(), null);
        }

        /*  JADX ERROR: Types fix failed
            jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r12v7 ??, new type: boolean
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
            Caused by: java.lang.NullPointerException
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
            	... 5 more
            */
        public final void d(okhttp3.HttpUrl r24, java.lang.String r25) {
            /*
                Method dump skipped, instruction units count: 758
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.d(okhttp3.HttpUrl, java.lang.String):void");
        }

        public final void e(String str, int i2, int i3, boolean z, boolean z2) {
            String strA = _UrlKt.a(str, i2, z2, " \"<>^`{}|/\\?#", i3, 112);
            if (strA.equals(FileUtils.HIDDEN_PREFIX) || strA.equalsIgnoreCase("%2e")) {
                return;
            }
            boolean zEquals = strA.equals("..");
            ArrayList arrayList = this.f76930f;
            if (zEquals || strA.equalsIgnoreCase("%2e.") || strA.equalsIgnoreCase(".%2e") || strA.equalsIgnoreCase("%2e%2e")) {
                if (((String) arrayList.remove(arrayList.size() - 1)).length() != 0 || arrayList.isEmpty()) {
                    arrayList.add("");
                    return;
                } else {
                    arrayList.set(arrayList.size() - 1, "");
                    return;
                }
            }
            if (((CharSequence) cj.c(1, arrayList)).length() == 0) {
                arrayList.set(arrayList.size() - 1, strA);
            } else {
                arrayList.add(strA);
            }
            if (z) {
                arrayList.add("");
            }
        }

        public final void f(String str) {
            if (this.g == null) {
                return;
            }
            String strA = _UrlKt.a(str, 0, false, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", 0, 91);
            ArrayList arrayList = this.g;
            arrayList.getClass();
            int size = arrayList.size() - 2;
            int iA = ProgressionUtilKt.a(size, 0, -2);
            if (iA > size) {
                return;
            }
            while (true) {
                ArrayList arrayList2 = this.g;
                arrayList2.getClass();
                if (strA.equals(arrayList2.get(size))) {
                    ArrayList arrayList3 = this.g;
                    arrayList3.getClass();
                    arrayList3.remove(size + 1);
                    ArrayList arrayList4 = this.g;
                    arrayList4.getClass();
                    arrayList4.remove(size);
                    ArrayList arrayList5 = this.g;
                    arrayList5.getClass();
                    if (arrayList5.isEmpty()) {
                        this.g = null;
                        return;
                    }
                }
                if (size == iA) {
                    return;
                } else {
                    size -= 2;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:32:0x008c  */
        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f76926a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.f76927b.length() > 0 || this.f76928c.length() > 0) {
                sb.append(this.f76927b);
                if (this.f76928c.length() > 0) {
                    sb.append(':');
                    sb.append(this.f76928c);
                }
                sb.append(AnnotationParser.AnnotationInstruction);
            }
            String str2 = this.d;
            if (str2 != null) {
                if (StringsKt.l(str2, ':')) {
                    sb.append('[');
                    sb.append(this.d);
                    sb.append(']');
                } else {
                    sb.append(this.d);
                }
            }
            int iB = this.f76929e;
            if (iB != -1 || this.f76926a != null) {
                if (iB == -1) {
                    Companion companion = HttpUrl.f76918j;
                    String str3 = this.f76926a;
                    str3.getClass();
                    companion.getClass();
                    iB = Companion.b(str3);
                }
                String str4 = this.f76926a;
                if (str4 != null) {
                    HttpUrl.f76918j.getClass();
                    if (iB != Companion.b(str4)) {
                        sb.append(':');
                        sb.append(iB);
                    }
                } else {
                    sb.append(':');
                    sb.append(iB);
                }
            }
            ArrayList arrayList = this.f76930f;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('/');
                sb.append((String) arrayList.get(i2));
            }
            if (this.g != null) {
                sb.append('?');
                Companion companion2 = HttpUrl.f76918j;
                ArrayList arrayList2 = this.g;
                arrayList2.getClass();
                Companion.a(companion2, arrayList2, sb);
            }
            if (this.f76931h != null) {
                sb.append('#');
                sb.append(this.f76931h);
            }
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/HttpUrl$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final void a(Companion companion, List list, StringBuilder sb) {
            companion.getClass();
            IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, list.size()), 2);
            int i2 = intProgressionI.f71951b;
            int i3 = intProgressionI.f71952c;
            int i4 = intProgressionI.d;
            if ((i4 <= 0 || i2 > i3) && (i4 >= 0 || i3 > i2)) {
                return;
            }
            while (true) {
                String str = (String) list.get(i2);
                String str2 = (String) list.get(i2 + 1);
                if (i2 > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (i2 == i3) {
                    return;
                } else {
                    i2 += i4;
                }
            }
        }

        public static int b(String str) {
            str.getClass();
            if (str.equals(SecurityConstants.SECURITY_NONE)) {
                return 80;
            }
            return str.equals(SecurityConstants.SECURITY_HTTPS) ? 443 : -1;
        }

        public static HttpUrl c(String str) {
            str.getClass();
            Builder builder = new Builder();
            builder.d(null, str);
            return builder.c();
        }

        public static HttpUrl d(String str) {
            str.getClass();
            try {
                return c(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i2, List list, List list2, String str5, String str6, DefaultConstructorMarker defaultConstructorMarker) {
        this.f76919a = str;
        this.f76920b = str2;
        this.f76921c = str3;
        this.d = str4;
        this.f76922e = i2;
        this.f76923f = list;
        this.g = list2;
        this.f76924h = str5;
        this.f76925i = str6;
    }

    public final String a() {
        if (this.f76921c.length() == 0) {
            return "";
        }
        int length = this.f76919a.length() + 3;
        String str = this.f76925i;
        return str.substring(StringsKt.u(str, ':', length, 4) + 1, StringsKt.u(str, AnnotationParser.AnnotationInstruction, 0, 6));
    }

    public final String b() {
        int length = this.f76919a.length() + 3;
        String str = this.f76925i;
        int iU = StringsKt.u(str, '/', length, 4);
        return str.substring(iU, _UtilCommonKt.e(iU, str.length(), str, "?#"));
    }

    public final ArrayList c() {
        int length = this.f76919a.length() + 3;
        String str = this.f76925i;
        int iU = StringsKt.u(str, '/', length, 4);
        int iE = _UtilCommonKt.e(iU, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (iU < iE) {
            int i2 = iU + 1;
            int iF = _UtilCommonKt.f(str, i2, iE, '/');
            arrayList.add(str.substring(i2, iF));
            iU = iF;
        }
        return arrayList;
    }

    public final String d() {
        if (this.g == null) {
            return null;
        }
        String str = this.f76925i;
        int iU = StringsKt.u(str, '?', 0, 6) + 1;
        return str.substring(iU, _UtilCommonKt.f(str, iU, str.length(), '#'));
    }

    public final String e() {
        if (this.f76920b.length() == 0) {
            return "";
        }
        int length = this.f76919a.length() + 3;
        String str = this.f76925i;
        return str.substring(length, _UtilCommonKt.e(length, str.length(), str, ":@"));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && Intrinsics.c(((HttpUrl) obj).f76925i, this.f76925i);
    }

    public final boolean f() {
        return Intrinsics.c(this.f76919a, SecurityConstants.SECURITY_HTTPS);
    }

    public final Builder g() {
        Builder builder = new Builder();
        String str = this.f76919a;
        builder.f76926a = str;
        builder.f76927b = e();
        builder.f76928c = a();
        builder.d = this.d;
        f76918j.getClass();
        int iB = Companion.b(str);
        int i2 = this.f76922e;
        if (i2 == iB) {
            i2 = -1;
        }
        builder.f76929e = i2;
        ArrayList arrayList = builder.f76930f;
        arrayList.clear();
        arrayList.addAll(c());
        String strD = d();
        String strSubstring = null;
        builder.g = strD != null ? Builder.g(_UrlKt.a(strD, 0, true, " \"'<>#", 0, 83)) : null;
        if (this.f76924h != null) {
            String str2 = this.f76925i;
            strSubstring = str2.substring(StringsKt.u(str2, '#', 0, 6) + 1);
        }
        builder.f76931h = strSubstring;
        return builder;
    }

    public final String h() {
        Builder builder;
        try {
            builder = new Builder();
            builder.d(this, "/...");
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        builder.getClass();
        builder.f76927b = _UrlKt.a("", 0, false, " \"':;<=>@[]^`{}|/\\?#", 0, 123);
        builder.f76928c = _UrlKt.a("", 0, false, " \"':;<=>@[]^`{}|/\\?#", 0, 123);
        return builder.c().f76925i;
    }

    public final int hashCode() {
        return this.f76925i.hashCode();
    }

    public final HttpUrl i(String str) {
        Builder builder;
        str.getClass();
        try {
            builder = new Builder();
            builder.d(this, str);
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        if (builder != null) {
            return builder.c();
        }
        return null;
    }

    public final URI j() {
        Builder builderG = g();
        ArrayList arrayList = builderG.f76930f;
        String str = builderG.d;
        builderG.d = str != null ? new Regex("[\"<>^`{|}]").replace(str, "") : null;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.set(i2, _UrlKt.a((String) arrayList.get(i2), 0, true, "[]", 0, 99));
        }
        ArrayList arrayList2 = builderG.g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                String str2 = (String) arrayList2.get(i3);
                arrayList2.set(i3, str2 != null ? _UrlKt.a(str2, 0, true, "\\^`{|}", 0, 67) : null);
            }
        }
        String str3 = builderG.f76931h;
        builderG.f76931h = str3 != null ? _UrlKt.a(str3, 0, true, " \"#<>\\^`{|}", 0, 35) : null;
        String string = builderG.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e2) {
            try {
                URI uriCreate = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(string, ""));
                uriCreate.getClass();
                return uriCreate;
            } catch (Exception unused) {
                x1.m(e2);
                return null;
            }
        }
    }

    public final URL k() {
        try {
            return new URL(this.f76925i);
        } catch (MalformedURLException e2) {
            x1.m(e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF76925i() {
        return this.f76925i;
    }
}
