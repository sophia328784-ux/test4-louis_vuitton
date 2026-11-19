package com.dynatrace.android.callback;

import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.WebRequestUtils;
import com.dynatrace.android.agent.util.Utility;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class ConnStateParms extends WebReqStateParms {
    public static final HashMap n;
    public static final int o;
    public final HttpURLConnection m;

    static {
        boolean z = Global.f27307a;
        o = 49;
        HashMap map = new HashMap();
        n = map;
        String property = System.getProperty("http.agent");
        if (property == null) {
            property = "Java/" + System.getProperty("java.version");
        }
        map.put("User-Agent", Integer.valueOf(property.length() + 12));
        map.put("Connection", 22);
        map.put("Accept-Encoding", 21);
        HashMap map2 = new HashMap();
        String property2 = System.getProperty("http.agent");
        if (property2 == null) {
            property2 = "Java/" + System.getProperty("java.version");
        }
        map2.put("User-Agent", Collections.singletonList(property2));
        map2.put("Connection", Collections.singletonList("keep-alive"));
        map2.put("Accept-Encoding", Collections.singletonList("gzip"));
    }

    public ConnStateParms(HttpURLConnection httpURLConnection, CbConstants$WrMethod cbConstants$WrMethod, CbConstants$WrStates cbConstants$WrStates) {
        super(cbConstants$WrMethod, cbConstants$WrStates);
        this.m = httpURLConnection;
    }

    public static long i(Map map) {
        long length;
        long length2 = 0;
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() == null) {
                if (((List) entry.getValue()).size() > 0) {
                    length = ((String) ((List) entry.getValue()).get(0)).length() + 2;
                    length2 += length;
                }
            } else if (!((String) entry.getKey()).startsWith("X-Android")) {
                long length3 = ((String) entry.getKey()).length() + 4;
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    length2 += ((long) ((String) it.next()).length()) + length3;
                }
                if ("Content-Length".equalsIgnoreCase((String) entry.getKey()) && ((List) entry.getValue()).size() > 0) {
                    try {
                        length = Long.parseLong((String) ((List) entry.getValue()).get(0));
                        length2 += length;
                    } catch (NumberFormatException unused) {
                        if (Global.f27307a) {
                            Utility.g();
                        }
                    }
                }
            }
        }
        return length2;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String b() {
        HttpURLConnection httpURLConnection = this.m;
        return httpURLConnection != null ? httpURLConnection.getClass().getSimpleName() : "NA";
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String c() {
        String str = this.f27614a;
        if (str != null) {
            return str;
        }
        this.f27614a = "NA";
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection != null) {
            this.f27614a = Utility.l(WebRequestUtils.a(httpURLConnection.getURL().toString()).f27319b);
        }
        return this.f27614a;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String d() {
        HttpURLConnection httpURLConnection = this.m;
        return httpURLConnection != null ? httpURLConnection.getURL().getHost() : "NA";
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String e() {
        HttpURLConnection httpURLConnection = this.m;
        return httpURLConnection != null ? httpURLConnection.getRequestMethod() : "NA";
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final URL f() {
        HttpURLConnection httpURLConnection = this.m;
        if (httpURLConnection != null) {
            return httpURLConnection.getURL();
        }
        return null;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final WebContext g() {
        return null;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final boolean h() {
        return true;
    }
}
