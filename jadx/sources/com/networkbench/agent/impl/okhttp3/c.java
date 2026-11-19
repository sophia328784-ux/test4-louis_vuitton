package com.networkbench.agent.impl.okhttp3;

import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
import okhttp3.Dns;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Dns {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37575c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dns f37576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NBSTransactionState f37577b;

    public c(Dns dns, NBSTransactionState nBSTransactionState) {
        this.f37576a = dns;
        this.f37577b = nBSTransactionState;
    }

    public static void a(OkHttpClient okHttpClient, NBSTransactionState nBSTransactionState) {
        Dns dns;
        if (okHttpClient == null) {
            return;
        }
        try {
            if (!r.u().V() || (dns = okHttpClient.dns) == null) {
                return;
            }
            if (dns instanceof c) {
                ((c) dns).a(nBSTransactionState);
            } else {
                ad.a(OkHttpClient.class.getDeclaredField(com.batch.android.b.b.d), okHttpClient, new c(okHttpClient.dns, nBSTransactionState));
            }
        } catch (Throwable th) {
            f37575c.a("replaceDefaultDns failed:", th);
        }
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        NBSTransactionState nBSTransactionState = this.f37577b;
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<InetAddress> listLookup = this.f37576a.lookup(str);
        try {
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
            f37575c.a("okhttp3 dns time:" + iCurrentTimeMillis + ", hostname:" + str + ", pre dns:" + nBSTransactionState.getDnsElapse());
            if (nBSTransactionState.getUrl().contains(str) && nBSTransactionState.getDnsElapse() <= 0) {
                if (!v.b(iCurrentTimeMillis)) {
                    iCurrentTimeMillis = -1;
                }
                nBSTransactionState.setDnsElapse(iCurrentTimeMillis);
            }
            if (listLookup.size() > 0) {
                Map<String, String> map = com.networkbench.agent.impl.socket.r.f38219c;
                if (!map.containsKey(str)) {
                    String hostAddress = listLookup.get(0).getHostAddress();
                    nBSTransactionState.setIpAddress(hostAddress);
                    map.put(str, hostAddress);
                    return listLookup;
                }
                nBSTransactionState.setIpAddress(map.get(str));
            }
            return listLookup;
        } catch (Throwable unused) {
            f37575c.f("error happened in set dns time in ok3");
            return listLookup;
        }
    }

    public void a(NBSTransactionState nBSTransactionState) {
        this.f37577b = nBSTransactionState;
    }
}
