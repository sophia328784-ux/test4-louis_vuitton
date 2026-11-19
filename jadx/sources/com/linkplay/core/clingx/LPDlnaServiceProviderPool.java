package com.linkplay.core.clingx;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class LPDlnaServiceProviderPool {

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private static LPDlnaServiceProviderPool f36295me = new LPDlnaServiceProviderPool();
    LinkedHashMap<String, LPDlnaServiceProvider> servicePool = new LinkedHashMap<>();

    private LPDlnaServiceProviderPool() {
    }

    public static LPDlnaServiceProviderPool me() {
        return f36295me;
    }

    public synchronized void addDlnaHelper(String str, LPDlnaServiceProvider lPDlnaServiceProvider) {
        try {
            if (this.servicePool.get(str) != null) {
                this.servicePool.get(str).stop();
            }
            this.servicePool.put(str, lPDlnaServiceProvider);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void clearPool() {
        try {
            Iterator<LPDlnaServiceProvider> it = this.servicePool.values().iterator();
            while (it.hasNext()) {
                it.next().stop();
            }
            this.servicePool.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized LPDlnaServiceProvider getDlanHelper(String str) {
        return this.servicePool.get(str);
    }

    public synchronized void initPool() {
    }

    public synchronized void removeDlnaHelper(String str) {
        LPDlnaServiceProvider lPDlnaServiceProviderRemove;
        if (this.servicePool.containsKey(str) && (lPDlnaServiceProviderRemove = this.servicePool.remove(str)) != null) {
            lPDlnaServiceProviderRemove.stop();
        }
    }
}
