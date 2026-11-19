package com.vuitton.android.data.net.cookiejar;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.URI;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "Ljava/net/CookieManager;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Ljava/net/CookiePolicy;", "cookiePolicy", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Ljava/net/CookiePolicy;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebkitCookieManagerProxy extends CookieManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.webkit.CookieManager f47048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f47049c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebkitCookieManagerProxy(Logger logger, CookiePolicy cookiePolicy) {
        super(null, cookiePolicy);
        logger.getClass();
        this.f47047a = logger;
        this.f47048b = android.webkit.CookieManager.getInstance();
        this.f47049c = Collections.synchronizedSet(new LinkedHashSet());
    }

    public static String b(MapBuilder mapBuilder, String str) {
        String str2;
        List listSplit$default;
        Object next;
        List listSplit$default2;
        List list = (List) mapBuilder.get(LVConstants.COOKIE_HEADER);
        if (list != null && (str2 = (String) CollectionsKt.firstOrNull(list)) != null && (listSplit$default = StringsKt__StringsKt.split$default(str2, new String[]{"; "}, false, 0, 6, null)) != null) {
            Iterator it = listSplit$default.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!str.equals(CollectionsKt.firstOrNull(StringsKt__StringsKt.split$default((String) next, new String[]{"="}, false, 0, 6, null))));
            String str3 = (String) next;
            if (str3 != null && (listSplit$default2 = StringsKt__StringsKt.split$default(str3, new String[]{"="}, false, 0, 6, null)) != null) {
                return (String) listSplit$default2.get(1);
            }
        }
        return null;
    }

    public final void a() {
        this.f47048b.removeAllCookies(null);
        this.f47049c.clear();
        this.f47047a.d("WebkitCookieManagerProxy", "Cookies Cleared", null);
    }

    public final void c(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f47048b.setCookie(str, str2);
        Set set = this.f47049c;
        set.getClass();
        set.add(str);
        new URI(str).getHost();
        this.f47047a.getClass();
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public final Map get(URI uri, Map map) {
        if (uri == null) {
            md.n("Argument is null");
            return null;
        }
        String string = uri.toString();
        string.getClass();
        MapBuilder mapBuilder = new MapBuilder();
        String cookie = this.f47048b.getCookie(string);
        if (cookie != null) {
            mapBuilder.put(LVConstants.COOKIE_HEADER, CollectionsKt.O(cookie));
        }
        return mapBuilder.c();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a3  */
    @Override // java.net.CookieManager, java.net.CookieHandler
    public final void put(URI uri, Map map) {
        List listD;
        if (uri == null || map == null) {
            return;
        }
        String string = uri.toString();
        string.getClass();
        Set setEntrySet = map.entrySet();
        if (setEntrySet != null) {
            Set<Map.Entry> set = setEntrySet;
            int iG = MapsKt.g(CollectionsKt.t(set, 10));
            if (iG < 16) {
                iG = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
            for (Map.Entry entry : set) {
                String str = (String) entry.getKey();
                if (str == null) {
                    str = "";
                }
                Object obj = (List) entry.getValue();
                if (obj == null) {
                    obj = EmptyList.f71768b;
                }
                Pair pair = new Pair(str, obj);
                linkedHashMap.put(pair.f71705b, pair.f71706c);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                if (StringsKt.s(str2, "Set-Cookie", true) || StringsKt.s(str2, "Set-Cookie2", true)) {
                    linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                }
            }
            Collection collectionValues = linkedHashMap2.values();
            if (collectionValues != null) {
                listD = CollectionsKt.D(collectionValues);
            } else {
                listD = EmptyList.f71768b;
            }
        } else {
            listD = EmptyList.f71768b;
        }
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            this.f47048b.setCookie(string, (String) it.next());
        }
        if (!listD.isEmpty()) {
            Set set2 = this.f47049c;
            set2.getClass();
            set2.add(string);
        }
        listD.size();
        uri.getHost();
        this.f47047a.getClass();
    }
}
