package com.vuitton.android.presentation.link.parsing;

import android.net.Uri;
import com.linkplay.network.SecurityConstants;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.extensions.UriExtKt;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AppLinkPatterns {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f51698a = CollectionsKt.P("mon-profil", "profile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f51699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f51700c;
    public static final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ArrayList f51701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List f51702f;
    public static final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f51703h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f51704i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f51705j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f51706k;
    public static final Pattern l;
    public static final Pattern m;
    public static final ArrayList n;
    public static final ArrayList o;
    public static final ArrayList p;

    static {
        List listP = CollectionsKt.P(Product.TYPE, "productos", "produits", "produtos", "produkte", "prodotti", "produkty");
        f51699b = listP;
        f51700c = fc.h("/(", CollectionsKt.K(listP, "|", null, null, null, 62), ")/.*/([A-Z0-9]+)(?:\\?|$)");
        List listP2 = CollectionsKt.P("recommendations", "suggestions", "vorschlage", "sugerencias", "recomendacoes", "recomendaciones", "suggerimenti", "rekomendacje");
        d = listP2;
        List list = listP2;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add("/" + ((String) it.next()) + "/([^/]+)");
        }
        f51701e = arrayList;
        List listP3 = CollectionsKt.P("stories", "histoires", "historias", "geschichten", "momenti-lv", "reportagens", "historie");
        f51702f = listP3;
        List list2 = listP3;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add("/" + ((String) it2.next()) + "/([^/]+)");
        }
        g = CollectionsKt.P("/legal-mentions", "/mentions-legales", "/legal-mentions-general");
        f51703h = Pattern.compile("/homepage");
        Pattern patternCompile = Pattern.compile("/_/N-([a-zA-Z0-9-]+)");
        patternCompile.getClass();
        f51704i = patternCompile;
        Pattern patternCompile2 = Pattern.compile(f51700c);
        patternCompile2.getClass();
        f51705j = patternCompile2;
        f51706k = Pattern.compile("/wishlist(?:/|\\?|$)");
        l = Pattern.compile("/storemode/([^/]+)/([^/]+)");
        m = Pattern.compile("/app/myappointments/create");
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Pattern.compile((String) it3.next()));
        }
        n = arrayList3;
        ArrayList arrayList4 = f51701e;
        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(arrayList4, 10));
        Iterator it4 = arrayList4.iterator();
        while (it4.hasNext()) {
            arrayList5.add(Pattern.compile((String) it4.next()));
        }
        o = arrayList5;
        List list3 = f51698a;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it5 = list3.iterator();
        while (it5.hasNext()) {
            arrayList6.add(Pattern.compile("/" + ((String) it5.next()) + "(?:/|\\?|$)"));
        }
        p = arrayList6;
    }

    public static boolean a(String str) {
        str.getClass();
        Uri uri = Uri.parse(str);
        return Intrinsics.c(uri.getScheme(), SecurityConstants.SECURITY_HTTPS) && Intrinsics.c(UriExtKt.d(uri), "videocall");
    }
}
