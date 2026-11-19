package com.lightup.sdk.device.features;

import defpackage.et;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class FeatureStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f35978a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f35979b = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorService f35980c = Executors.newSingleThreadExecutor();

    public FeatureStore() {
        Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new et(this, 9), 1L, 3L, TimeUnit.MINUTES);
    }

    public final boolean a(int i2) {
        Iterator it = this.f35978a.iterator();
        while (it.hasNext()) {
            if (((Feature) it.next()).uniqueId == i2) {
                return true;
            }
        }
        return false;
    }
}
