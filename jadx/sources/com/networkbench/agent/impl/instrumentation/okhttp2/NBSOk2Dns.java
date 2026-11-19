package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.squareup.okhttp.Dns;
import com.squareup.okhttp.OkHttpClient;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOk2Dns implements Dns {
    private static final e log = f.a();
    private Dns impl;
    private NBSTransactionState transactionState;

    private NBSOk2Dns(Dns dns, NBSTransactionState nBSTransactionState) {
        this.impl = dns;
        this.transactionState = nBSTransactionState;
    }

    public static void replaceDefaultDns(OkHttpClient okHttpClient, NBSTransactionState nBSTransactionState) {
        if (okHttpClient == null) {
            return;
        }
        try {
            if (r.u().V()) {
                if (okHttpClient.getDns() == null) {
                    okHttpClient.setDns(Dns.SYSTEM);
                }
                if (okHttpClient.getDns() != null) {
                    if (okHttpClient.getDns() instanceof NBSOk2Dns) {
                        ((NBSOk2Dns) okHttpClient.getDns()).setTransactionState(nBSTransactionState);
                    } else {
                        okHttpClient.setDns(new NBSOk2Dns(okHttpClient.getDns(), nBSTransactionState));
                    }
                }
            }
        } catch (Throwable th) {
            log.a("replaceDefaultDns failed:", th);
        }
    }

    public List<InetAddress> lookup(String str) throws UnknownHostException {
        NBSTransactionState nBSTransactionState = this.transactionState;
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<InetAddress> listLookup = this.impl.lookup(str);
        try {
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
            log.a("okhttp2 dns time:" + iCurrentTimeMillis + ", hostname:" + str + ", pre dns:" + nBSTransactionState.getDnsElapse());
            if (nBSTransactionState.getUrl().contains(str) && nBSTransactionState.getDnsElapse() <= 0) {
                if (!v.b(iCurrentTimeMillis)) {
                    iCurrentTimeMillis = -1;
                }
                nBSTransactionState.setDnsElapse(iCurrentTimeMillis);
            }
        } catch (Throwable unused) {
        }
        return listLookup;
    }

    public void setTransactionState(NBSTransactionState nBSTransactionState) {
        this.transactionState = nBSTransactionState;
    }
}
