package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.NBSRunnableInspect;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List<NBSRunnableInspect> f36422a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f36423b = 5000;

    public static void a() {
        ArrayList arrayList = new ArrayList();
        for (NBSRunnableInspect nBSRunnableInspect : f36422a) {
            if (nBSRunnableInspect.isOverTime()) {
                nBSRunnableInspect.releaseHandler();
                arrayList.add(nBSRunnableInspect);
            }
        }
        f36422a.removeAll(arrayList);
    }

    public static void b(NBSRunnableInspect nBSRunnableInspect) {
        if (nBSRunnableInspect == null || !f36422a.contains(nBSRunnableInspect)) {
            return;
        }
        f36422a.remove(nBSRunnableInspect);
    }

    public static void a(NBSRunnableInspect nBSRunnableInspect) {
        NBSRunnableInspect nBSRunnableInspectRemove;
        if (nBSRunnableInspect != null) {
            if (f36422a.size() > 5000 && (nBSRunnableInspectRemove = f36422a.remove(0)) != null) {
                nBSRunnableInspectRemove.releaseHandler();
            }
            f36422a.add(nBSRunnableInspect);
        }
    }
}
