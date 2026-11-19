package okhttp3;

import defpackage.cj;
import defpackage.d21;
import defpackage.lc0;
import defpackage.md;
import defpackage.o60;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB/\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lokhttp3/MediaType;", "", "", "mediaType", "type", "subtype", "", "parameterNamesAndValues", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaType {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f76933e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Regex f76934f = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final Regex g = new Regex(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f76935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f76936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f76937c;
    public final String[] d;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lokhttp3/MediaType$Companion;", "", "", "TOKEN", "Ljava/lang/String;", "QUOTED", "Lkotlin/text/Regex;", "TYPE_SUBTYPE", "Lkotlin/text/Regex;", "PARAMETER", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static MediaType a(String str) {
            str.getClass();
            MatchResult matchResultD = MediaType.f76934f.d(0, str);
            if (matchResultD == null) {
                md.n(d21.d('\"', "No subtype found for: \"", str));
                return null;
            }
            String str2 = (String) matchResultD.c().get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            String lowerCase2 = ((String) matchResultD.c().get(2)).toLowerCase(locale);
            lowerCase2.getClass();
            ArrayList arrayList = new ArrayList();
            int i2 = matchResultD.d().f71952c;
            while (true) {
                int i3 = i2 + 1;
                if (i3 >= str.length()) {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                }
                MatchResult matchResultD2 = MediaType.g.d(i3, str);
                if (matchResultD2 == null) {
                    lc0.p("Parameter is not formatted correctly: \"", str.substring(i3), "\" for: \"", str, 34);
                    return null;
                }
                MatchGroup matchGroupH = matchResultD2.getF74548c().h(1);
                String str3 = matchGroupH != null ? matchGroupH.f74543a : null;
                if (str3 == null) {
                    i2 = matchResultD2.d().f71952c;
                } else {
                    MatchGroup matchGroupH2 = matchResultD2.getF74548c().h(2);
                    String strG = matchGroupH2 != null ? matchGroupH2.f74543a : null;
                    if (strG == null) {
                        MatchGroup matchGroupH3 = matchResultD2.getF74548c().h(3);
                        matchGroupH3.getClass();
                        strG = matchGroupH3.f74543a;
                    } else if (StringsKt.N(strG, '\'', false) && StringsKt.q(strG, '\'') && strG.length() > 2) {
                        strG = o60.g(1, 1, strG);
                    }
                    arrayList.add(str3);
                    arrayList.add(strG);
                    i2 = matchResultD2.d().f71952c;
                }
            }
        }
    }

    public MediaType(String str, String str2, String str3, String[] strArr) {
        cj.z(str, str2, str3);
        strArr.getClass();
        this.f76935a = str;
        this.f76936b = str2;
        this.f76937c = str3;
        this.d = strArr;
    }

    public final Charset a(Charset charset) {
        String str;
        String[] strArr = this.d;
        int i2 = 0;
        int iA = ProgressionUtilKt.a(0, strArr.length - 1, 2);
        if (iA < 0) {
            str = null;
            break;
        }
        while (true) {
            if (!StringsKt.s(strArr[i2], "charset", true)) {
                if (i2 == iA) {
                    str = null;
                    break;
                }
                i2 += 2;
            } else {
                str = strArr[i2 + 1];
                break;
            }
        }
        if (str == null) {
            return charset;
        }
        try {
            return Charset.forName(str);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof MediaType) && Intrinsics.c(((MediaType) obj).f76935a, this.f76935a);
    }

    public final int hashCode() {
        return this.f76935a.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF76935a() {
        return this.f76935a;
    }
}
