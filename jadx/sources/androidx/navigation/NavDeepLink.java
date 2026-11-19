package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.NavDeepLink;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.b21;
import defpackage.d21;
import defpackage.eg0;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0004\n\u000b\f\rB'\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\t¨\u0006\u000e"}, d2 = {"Landroidx/navigation/NavDeepLink;", "", "", "uriPattern", "action", "mimeType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "uri", "(Ljava/lang/String;)V", "ParamQuery", "MimeType", "Builder", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavDeepLink {
    public static final Regex q;
    public static final Regex r;
    public static final Regex s;
    public static final Regex t;
    public static final Regex u;
    public static final Regex v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f18133c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f18134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f18135f;
    public final Lazy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f18136h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18137i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f18138j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f18139k;
    public final Lazy l;
    public final Lazy m;
    public final String n;
    public final Lazy o;
    public final boolean p;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0017¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/navigation/NavDeepLink$Builder;", "", "<init>", "()V", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f18140a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f18141b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f18142c;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/navigation/NavDeepLink$Builder$Companion;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/navigation/NavDeepLink$Companion;", "", "Lkotlin/text/Regex;", "SCHEME_PATTERN", "Lkotlin/text/Regex;", "FILL_IN_PATTERN", "SCHEME_REGEX", "WILDCARD_REGEX", "PATH_REGEX", "QUERY_PATTERN", "", "ANY_SYMBOLS_IN_THE_TAIL", "Ljava/lang/String;", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavDeepLink$MimeType;", "", "", "mimeType", "<init>", "(Ljava/lang/String;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class MimeType implements Comparable<MimeType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f18143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f18144c;

        public MimeType(String str) {
            List listQ0;
            str.getClass();
            List listG = new Regex("/").g(str);
            if (listG.isEmpty()) {
                listQ0 = EmptyList.f71768b;
            } else {
                ListIterator listIterator = listG.listIterator(listG.size());
                while (listIterator.hasPrevious()) {
                    if (((String) listIterator.previous()).length() != 0) {
                        listQ0 = CollectionsKt.q0(listG, listIterator.nextIndex() + 1);
                    }
                }
                listQ0 = EmptyList.f71768b;
            }
            this.f18143b = (String) listQ0.get(0);
            this.f18144c = (String) listQ0.get(1);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final int compareTo(MimeType mimeType) {
            mimeType.getClass();
            int i2 = Intrinsics.c(this.f18143b, mimeType.f18143b) ? 2 : 0;
            return Intrinsics.c(this.f18144c, mimeType.f18144c) ? i2 + 1 : i2;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/NavDeepLink$ParamQuery;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ParamQuery {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f18145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f18146b = new ArrayList();
    }

    static {
        new Companion(null);
        q = new Regex("^[a-zA-Z]+[+\\w\\-.]*:");
        r = new Regex("\\{(.+?)\\}");
        s = new Regex("http[s]?://");
        t = new Regex(".*");
        u = new Regex("([^/]*?|)");
        v = new Regex("^[^?#]+\\?([^#]*).*");
    }

    public NavDeepLink(String str, String str2, String str3) {
        this.f18131a = str;
        this.f18132b = str2;
        this.f18133c = str3;
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        boolean z = false;
        z = false;
        final int i2 = z ? 1 : 0;
        this.f18135f = LazyKt.b(new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i3 = i2;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i3) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        final int i3 = 1;
        this.g = LazyKt.b(new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i4 = i3;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i4) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f18136h = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: androidx.navigation.a
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                NavDeepLink navDeepLink = this.f18220b;
                String str4 = navDeepLink.f18131a;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (((Boolean) navDeepLink.g.getF71699b()).booleanValue()) {
                    str4.getClass();
                    Uri uri = Uri.parse(str4);
                    uri.getClass();
                    for (String str5 : uri.getQueryParameterNames()) {
                        StringBuilder sb = new StringBuilder();
                        List<String> queryParameters = uri.getQueryParameters(str5);
                        if (queryParameters.size() > 1) {
                            b21.n(d21.l("Query parameter ", str5, " must only be present once in ", str4, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                            return null;
                        }
                        String str6 = (String) CollectionsKt.firstOrNull(queryParameters);
                        if (str6 == null) {
                            navDeepLink.f18137i = true;
                            str6 = str5;
                        }
                        NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                        int i4 = 0;
                        for (MatchResult matchResultB = NavDeepLink.r.b(str6); matchResultB != null; matchResultB = matchResultB.next()) {
                            MatchGroup matchGroupH = matchResultB.getF74548c().h(1);
                            matchGroupH.getClass();
                            String str7 = matchGroupH.f74543a;
                            str7.getClass();
                            paramQuery.f18146b.add(str7);
                            if (matchResultB.d().f71951b > i4) {
                                String strSubstring = str6.substring(i4, matchResultB.d().f71951b);
                                Regex.INSTANCE.getClass();
                                String strQuote = Pattern.quote(strSubstring);
                                strQuote.getClass();
                                sb.append(strQuote);
                            }
                            sb.append("([\\s\\S]+?)?");
                            i4 = matchResultB.d().f71952c + 1;
                        }
                        if (i4 < str6.length()) {
                            Regex.Companion companion = Regex.INSTANCE;
                            String strSubstring2 = str6.substring(i4);
                            companion.getClass();
                            String strQuote2 = Pattern.quote(strSubstring2);
                            strQuote2.getClass();
                            sb.append(strQuote2);
                        }
                        sb.append("$");
                        paramQuery.f18145a = NavDeepLink.h(sb.toString());
                        linkedHashMap.put(str5, paramQuery);
                    }
                }
                return linkedHashMap;
            }
        });
        final int i4 = 2;
        this.f18138j = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i5 = i4;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i5) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        final int i5 = 3;
        this.f18139k = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i6 = i5;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i6) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        final int i6 = 4;
        this.l = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i7 = i6;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i7) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        final int i7 = 5;
        this.m = LazyKt.b(new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i8 = i7;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i8) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        final int i8 = 6;
        this.o = LazyKt.b(new Function0(this) { // from class: dg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NavDeepLink f68579c;

            {
                this.f68579c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list;
                int i9 = i8;
                NavDeepLink navDeepLink = this.f68579c;
                switch (i9) {
                    case 0:
                        String str4 = navDeepLink.f18134e;
                        if (str4 != null) {
                            return new Regex(str4, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.f18131a;
                        return Boolean.valueOf(str5 != null && NavDeepLink.v.f(str5));
                    case 2:
                        String str6 = navDeepLink.f18131a;
                        if (str6 == null) {
                            return null;
                        }
                        Uri uri = Uri.parse(str6);
                        uri.getClass();
                        if (uri.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri uri2 = Uri.parse(str6);
                        uri2.getClass();
                        String fragment = uri2.getFragment();
                        StringBuilder sb = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.a(fragment, arrayList2, sb);
                        return new Pair(arrayList2, sb.toString());
                    case 3:
                        Regex regex = NavDeepLink.q;
                        Pair pair = (Pair) navDeepLink.f18138j.getF71699b();
                        return (pair == null || (list = (List) pair.f71705b) == null) ? new ArrayList() : list;
                    case 4:
                        Regex regex2 = NavDeepLink.q;
                        Pair pair2 = (Pair) navDeepLink.f18138j.getF71699b();
                        if (pair2 != null) {
                            return (String) pair2.f71706c;
                        }
                        return null;
                    case 5:
                        String str7 = (String) navDeepLink.l.getF71699b();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        String str8 = navDeepLink.n;
                        if (str8 != null) {
                            return new Regex(str8);
                        }
                        return null;
                }
            }
        });
        if (str != null) {
            StringBuilder sb = new StringBuilder("^");
            if (!q.a(str)) {
                String strPattern = s.f74552b.pattern();
                strPattern.getClass();
                sb.append(strPattern);
            }
            MatchResult matchResultB = new Regex("(\\?|#|$)").b(str);
            if (matchResultB != null) {
                a(str.substring(0, matchResultB.d().f71951b), arrayList, sb);
                if (!t.a(sb) && !u.a(sb)) {
                    z = true;
                }
                this.p = z;
                sb.append("($|(\\?(.)*)|(#(.)*))");
            }
            this.f18134e = h(sb.toString());
        }
        if (str3 == null) {
            return;
        }
        if (!new Regex("^[\\s\\S]+/[\\s\\S]+$").f(str3)) {
            b21.n(fc.h("The given mimeType ", str3, " does not match to required \"type/subtype\" format"));
            throw null;
        }
        MimeType mimeType = new MimeType(str3);
        this.n = StringsKt.J("^(" + mimeType.f18143b + "|[*]+)/(" + mimeType.f18144c + "|[*]+)$", "*|[*]", "[\\s\\S]");
    }

    public static void a(String str, ArrayList arrayList, StringBuilder sb) {
        int i2 = 0;
        for (MatchResult matchResultB = r.b(str); matchResultB != null; matchResultB = matchResultB.next()) {
            MatchGroup matchGroupH = matchResultB.getF74548c().h(1);
            matchGroupH.getClass();
            arrayList.add(matchGroupH.f74543a);
            if (matchResultB.d().f71951b > i2) {
                Regex.Companion companion = Regex.INSTANCE;
                String strSubstring = str.substring(i2, matchResultB.d().f71951b);
                companion.getClass();
                String strQuote = Pattern.quote(strSubstring);
                strQuote.getClass();
                sb.append(strQuote);
            }
            String strPattern = u.f74552b.pattern();
            strPattern.getClass();
            sb.append(strPattern);
            i2 = matchResultB.d().f71952c + 1;
        }
        if (i2 < str.length()) {
            Regex.Companion companion2 = Regex.INSTANCE;
            String strSubstring2 = str.substring(i2);
            companion2.getClass();
            String strQuote2 = Pattern.quote(strSubstring2);
            strQuote2.getClass();
            sb.append(strQuote2);
        }
    }

    public static void g(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument == null) {
            SavedStateWriter.d(str, str2, bundle);
            return;
        }
        NavType navType = navArgument.f18102a;
        str.getClass();
        navType.e(bundle, str, navType.h(str2));
    }

    public static String h(String str) {
        if (StringsKt.k(str, "\\Q", false) && StringsKt.k(str, "\\E", false)) {
            return StringsKt.J(str, ".*", "\\E.*\\Q");
        }
        return StringsKt.k(str, "\\.\\*", false) ? StringsKt.J(str, "\\.\\*", ".*") : str;
    }

    public final int b(Uri uri) {
        String str;
        if (uri == null || (str = this.f18131a) == null) {
            return 0;
        }
        List<String> pathSegments = uri.getPathSegments();
        Uri uri2 = Uri.parse(str);
        uri2.getClass();
        return CollectionsKt.I(pathSegments, uri2.getPathSegments()).size();
    }

    public final ArrayList c() {
        Collection collectionValues = ((Map) this.f18136h.getF71699b()).values();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((ParamQuery) it.next()).f18146b);
        }
        return CollectionsKt.Y(CollectionsKt.Y(this.d, arrayList), (List) this.f18139k.getF71699b());
    }

    public final Bundle d(Uri uri, LinkedHashMap linkedHashMap) {
        MatchResult matchResultE;
        MatchResult matchResultE2;
        String strDecode;
        String str;
        uri.getClass();
        linkedHashMap.getClass();
        Regex regex = (Regex) this.f18135f.getF71699b();
        if (regex != null && (matchResultE = regex.e(uri.toString())) != null) {
            MapsKt.c();
            Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            if (e(matchResultE, bundleA, linkedHashMap) && (!((Boolean) this.g.getF71699b()).booleanValue() || f(uri, bundleA, linkedHashMap))) {
                String fragment = uri.getFragment();
                Regex regex2 = (Regex) this.m.getF71699b();
                if (regex2 != null && (matchResultE2 = regex2.e(String.valueOf(fragment))) != null) {
                    List list = (List) this.f18139k.getF71699b();
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    int i2 = 0;
                    for (Object obj : list) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        String str2 = (String) obj;
                        MatchGroup matchGroupH = matchResultE2.getF74548c().h(i3);
                        if (matchGroupH == null || (str = matchGroupH.f74543a) == null) {
                            strDecode = null;
                        } else {
                            strDecode = Uri.decode(str);
                            strDecode.getClass();
                        }
                        if (strDecode == null) {
                            strDecode = "";
                        }
                        try {
                            g(bundleA, str2, strDecode, (NavArgument) linkedHashMap.get(str2));
                            arrayList.add(Unit.f71739a);
                            i2 = i3;
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                }
                if (NavArgumentKt.a(linkedHashMap, new eg0(0, bundleA)).isEmpty()) {
                    return bundleA;
                }
            }
        }
        return null;
    }

    public final boolean e(MatchResult matchResult, Bundle bundle, Map map) {
        String str;
        ArrayList arrayList = this.d;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        int i2 = 0;
        for (Object obj : arrayList) {
            int i3 = i2 + 1;
            String strDecode = null;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            String str2 = (String) obj;
            MatchGroup matchGroupH = matchResult.getF74548c().h(i3);
            if (matchGroupH != null && (str = matchGroupH.f74543a) != null) {
                strDecode = Uri.decode(str);
                strDecode.getClass();
            }
            if (strDecode == null) {
                strDecode = "";
            }
            try {
                g(bundle, str2, strDecode, (NavArgument) map.get(str2));
                arrayList2.add(Unit.f71739a);
                i2 = i3;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof NavDeepLink)) {
            NavDeepLink navDeepLink = (NavDeepLink) obj;
            if (Intrinsics.c(this.f18131a, navDeepLink.f18131a) && Intrinsics.c(this.f18132b, navDeepLink.f18132b) && Intrinsics.c(this.f18133c, navDeepLink.f18133c)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [int] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r22v0, types: [java.util.Map] */
    public final boolean f(Uri uri, Bundle bundle, Map map) {
        Object objValueOf;
        boolean z;
        String query;
        for (Map.Entry entry : ((Map) this.f18136h.getF71699b()).entrySet()) {
            String str = (String) entry.getKey();
            ParamQuery paramQuery = (ParamQuery) entry.getValue();
            List<String> queryParameters = uri.getQueryParameters(str);
            if (this.f18137i && (query = uri.getQuery()) != null && !query.equals(uri.toString())) {
                queryParameters = CollectionsKt.O(query);
            }
            MapsKt.c();
            boolean z2 = false;
            Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            Iterator it = paramQuery.f18146b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str2 = (String) it.next();
                NavArgument navArgument = (NavArgument) map.get(str2);
                NavType navType = navArgument != null ? navArgument.f18102a : null;
                if ((navType instanceof CollectionNavType) && !navArgument.f18104c) {
                    CollectionNavType collectionNavType = (CollectionNavType) navType;
                    collectionNavType.e(bundleA, str2, collectionNavType.h());
                }
            }
            for (String str3 : queryParameters) {
                String str4 = paramQuery.f18145a;
                MatchResult matchResultE = str4 != null ? new Regex(str4).e(str3) : null;
                if (matchResultE == null) {
                    return z2;
                }
                ArrayList arrayList = paramQuery.f18146b;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                ?? r13 = z2;
                for (Object obj : arrayList) {
                    int i2 = r13 + 1;
                    if (r13 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    String str5 = (String) obj;
                    MatchGroup matchGroupH = matchResultE.getF74548c().h(i2);
                    String str6 = matchGroupH != null ? matchGroupH.f74543a : null;
                    if (str6 == null) {
                        str6 = "";
                    }
                    NavArgument navArgument2 = (NavArgument) map.get(str5);
                    try {
                        if (SavedStateReader.a(str5, bundleA)) {
                            if (bundleA.containsKey(str5)) {
                                if (navArgument2 != null) {
                                    NavType navType2 = navArgument2.f18102a;
                                    Object objA = navType2.a(str5, bundleA);
                                    if (!bundleA.containsKey(str5)) {
                                        throw new IllegalArgumentException("There is no previous value in this savedState.");
                                    }
                                    navType2.e(bundleA, str5, navType2.c(objA, str6));
                                }
                                z = false;
                            } else {
                                z = true;
                            }
                            objValueOf = Boolean.valueOf(z);
                        } else {
                            g(bundleA, str5, str6, navArgument2);
                            objValueOf = Unit.f71739a;
                        }
                    } catch (IllegalArgumentException unused) {
                        objValueOf = Unit.f71739a;
                    }
                    arrayList2.add(objValueOf);
                    r13 = i2;
                    z2 = false;
                }
            }
            bundle.putAll(bundleA);
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f18131a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f18132b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f18133c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLink(String str) {
        this(str, null, null);
        str.getClass();
    }
}
