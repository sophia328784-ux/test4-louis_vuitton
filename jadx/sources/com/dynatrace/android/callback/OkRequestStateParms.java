package com.dynatrace.android.callback;

import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.WebRequestUtils;
import com.dynatrace.android.agent.util.Utility;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
class OkRequestStateParms extends WebReqStateParms {
    public final Request m;
    public Response n;
    public WebContext o;

    static {
        boolean z = Global.f27307a;
    }

    public OkRequestStateParms(Request request, CbConstants$WrMethod cbConstants$WrMethod, CbConstants$WrStates cbConstants$WrStates) {
        super(cbConstants$WrMethod, cbConstants$WrStates);
        this.o = null;
        this.m = request;
    }

    public static long i(TreeMap treeMap) {
        long length = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            long length2 = ((String) entry.getKey()).length() + 4;
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                length += ((long) ((String) it.next()).length()) + length2;
            }
            if ("Content-Length".equalsIgnoreCase((String) entry.getKey()) && ((List) entry.getValue()).size() > 0) {
                try {
                    length += Long.parseLong((String) ((List) entry.getValue()).get(0));
                } catch (NumberFormatException unused) {
                    if (Global.f27307a) {
                        Utility.g();
                    }
                }
            }
        }
        return length;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String b() {
        return this.m != null ? "Request" : "NA";
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String c() {
        return Utility.l(WebRequestUtils.a(this.m.f76969a.f76925i).f27319b);
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String d() {
        return this.m.f76969a.d;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String e() {
        return this.m.f76970b;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final URL f() {
        return this.m.f76969a.k();
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final WebContext g() {
        return this.o;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final boolean h() {
        return true;
    }

    public final void j(Response response) {
        this.n = response;
        Response response2 = response.f76990j;
        if (response2 != null) {
            try {
                Request request = response2.f76984b;
                long length = response2.f76985c.getProtocol().length();
                this.g = ((long) (request.f76970b.length() + request.f76969a.k().getFile().length())) + length + 4 + i(request.f76971c.i()) + 2;
                this.f27619h = length + ((long) String.valueOf(response2.f76986e).length()) + ((long) response2.d.length()) + 4 + i(response2.g.i()) + 2;
            } catch (Exception e2) {
                if (Global.f27307a) {
                    e2.getMessage();
                    Utility.g();
                }
                this.g = -1L;
                this.f27619h = -1L;
            }
        }
    }
}
