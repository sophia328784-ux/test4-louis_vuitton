package com.networkbench.agent.impl.util;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestAdapter;
import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.instrumentation.NBSJavaScriptBridge;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.session.screen.NBSBitmapBean;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import defpackage.pq0;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class ai extends HarvestAdapter {
    private static final String g = "TasTaskQueuek";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f38321h = 1000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f38322i = 2000;
    private static Future<?> p;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ScheduledExecutorService f38323j = Executors.newSingleThreadScheduledExecutor(new com.networkbench.agent.impl.util.c.d("Tingyun-TaskQueue"));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final ConcurrentLinkedQueue<Object> f38324k = new ConcurrentLinkedQueue<>();
    private static Set<NBSTransactionState> l = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap<String, com.networkbench.agent.impl.data.l> f38316a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap<String, Integer> f38317b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Set<NBSTransactionState> f38318c = Collections.synchronizedSet(new HashSet());
    private static ConcurrentLinkedQueue<ActionData> m = new ConcurrentLinkedQueue<>();
    public static final ConcurrentHashMap<List<String>, String> d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List<String> f38319e = pq0.v();
    private static com.networkbench.agent.impl.c.e n = com.networkbench.agent.impl.c.f.a();
    private static final Runnable o = new Runnable() { // from class: com.networkbench.agent.impl.util.ai.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                ai.p();
                ai.o();
                ai.q();
                ai.l();
                ai.m();
            } catch (Throwable th) {
                z81.k(new StringBuilder("TaskQueue  dequeueTask has an error : "), th);
            }
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f38320f = 0;

    public static int a(String str) {
        if (!TextUtils.isEmpty(str)) {
            ConcurrentHashMap<String, com.networkbench.agent.impl.data.l> concurrentHashMap = f38316a;
            if (concurrentHashMap.get(str) != null && !concurrentHashMap.get(str).l()) {
                concurrentHashMap.get(str).d(true);
                if (concurrentHashMap.get(str) == null) {
                    return -1;
                }
                return concurrentHashMap.get(str).g();
            }
        }
        return -1;
    }

    public static int b(String str) {
        if (!TextUtils.isEmpty(str)) {
            ConcurrentHashMap<String, com.networkbench.agent.impl.data.l> concurrentHashMap = f38316a;
            if (concurrentHashMap.get(str) == null || concurrentHashMap.get(str) == null || concurrentHashMap.get(str).g() == -1) {
                return 0;
            }
            return concurrentHashMap.get(str).g();
        }
        return 0;
    }

    public static String c(String str) {
        if (!ak.r(str)) {
            ConcurrentHashMap<String, com.networkbench.agent.impl.data.l> concurrentHashMap = f38316a;
            return (concurrentHashMap.get(str) == null || concurrentHashMap.get(str) == null) ? "" : concurrentHashMap.get(str).e();
        }
        return "";
    }

    public static int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        for (Map.Entry<String, com.networkbench.agent.impl.data.l> entry : f38316a.entrySet()) {
            if (!entry.getValue().l() && str.contains(entry.getKey().toString())) {
                entry.getValue().d(true);
                return entry.getValue().g();
            }
        }
        return -1;
    }

    public static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (Map.Entry<String, com.networkbench.agent.impl.data.l> entry : f38316a.entrySet()) {
            if (str.contains(entry.getKey().toString())) {
                return entry.getValue().e();
            }
        }
        return "";
    }

    public static void f() {
        f38324k.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        com.networkbench.agent.impl.asyncaction.a.b.f36406a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
        com.networkbench.agent.impl.asyncaction.r.g();
    }

    private static void n() {
        f38323j = Executors.newSingleThreadScheduledExecutor(new com.networkbench.agent.impl.util.c.d("Tingyun-TaskQueue"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o() {
        ArrayList arrayList = new ArrayList();
        for (NBSTransactionState nBSTransactionState : f38318c) {
            if (nBSTransactionState instanceof NBSTransactionState) {
                NBSTransactionState nBSTransactionState2 = nBSTransactionState;
                if (System.currentTimeMillis() - nBSTransactionState2.getEndTime() > 10000) {
                    arrayList.add(nBSTransactionState);
                    nBSTransactionState2.end().a(nBSTransactionState2);
                    a(new com.networkbench.agent.impl.d.b.c(nBSTransactionState2));
                }
            } else {
                n.e("error queueOkNetwork object is not NBSTransactionState");
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        f38318c.removeAll(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p() {
        if (f38324k.size() == 0) {
            return;
        }
        com.networkbench.agent.impl.d.g.a(false);
        while (true) {
            ConcurrentLinkedQueue<Object> concurrentLinkedQueue = f38324k;
            boolean zG = true;
            if (concurrentLinkedQueue.isEmpty()) {
                break;
            }
            try {
                Object objRemove = concurrentLinkedQueue.remove();
                if (objRemove instanceof com.networkbench.agent.impl.d.b.a) {
                    com.networkbench.agent.impl.d.g.a((com.networkbench.agent.impl.d.b.a) objRemove);
                } else if (objRemove instanceof com.networkbench.agent.impl.d.b.c) {
                    com.networkbench.agent.impl.d.g.a((com.networkbench.agent.impl.d.b.c) objRemove);
                } else if (objRemove instanceof NBSJavaScriptBridge.NBSWebViewResult) {
                    NBSJavaScriptBridge.NBSWebViewResult nBSWebViewResult = (NBSJavaScriptBridge.NBSWebViewResult) objRemove;
                    if (nBSWebViewResult.resultType.equals("ajax_metric")) {
                        com.networkbench.agent.impl.webview.m.a(nBSWebViewResult.resultData);
                    } else if (nBSWebViewResult.resultType.equals("pageInfo")) {
                        com.networkbench.agent.impl.webview.m.d(nBSWebViewResult.resultData);
                    } else if (nBSWebViewResult.resultType.equals("browserData")) {
                        com.networkbench.agent.impl.webview.m.g(nBSWebViewResult.resultData);
                    }
                } else if (objRemove instanceof com.networkbench.agent.impl.webview.l) {
                    ((com.networkbench.agent.impl.webview.l) objRemove).c();
                } else if (objRemove instanceof com.networkbench.agent.impl.b.k) {
                    if (com.networkbench.agent.impl.b.h.b()) {
                        ((com.networkbench.agent.impl.b.k) objRemove).h();
                        zG = ((com.networkbench.agent.impl.b.k) objRemove).g();
                    }
                    if (zG) {
                        com.networkbench.agent.impl.b.m.a().a((com.networkbench.agent.impl.b.k) objRemove);
                    } else {
                        n.e("error block stackTrace is empty, please check");
                    }
                } else if (objRemove instanceof com.networkbench.agent.impl.plugin.h) {
                    com.networkbench.agent.impl.data.c.b bVar = new com.networkbench.agent.impl.data.c.b((com.networkbench.agent.impl.plugin.h) objRemove);
                    Harvest.getInstance().getHarvestData();
                    HarvestData.getPluginData().a(bVar);
                } else if (objRemove instanceof ActionData) {
                    if (m.size() < 2000) {
                        m.add((ActionData) objRemove);
                    }
                } else if ((objRemove instanceof NBSBitmapBean) && r.u().l()) {
                    NBSBitmapBeansControl.getInstance().addBitmapBean((NBSBitmapBean) objRemove);
                    n.a("add bitmapBean to NBSBitmapBeansControl bitmapBeans");
                }
            } catch (Throwable th) {
                n.a("error happened in TaskQueue dequeue e:", th);
            }
        }
        com.networkbench.agent.impl.d.g.c();
        com.networkbench.agent.impl.d.g.a(true);
        while (!m.isEmpty()) {
            Harvest.addHttpTransactionForScene(m.remove());
        }
        com.networkbench.agent.impl.asyncaction.j.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q() {
        if (f38320f == 5) {
            ArrayList arrayList = new ArrayList();
            for (NBSTransactionState nBSTransactionState : l) {
                if (nBSTransactionState instanceof NBSTransactionState) {
                    NBSTransactionState nBSTransactionState2 = nBSTransactionState;
                    if (nBSTransactionState2.isComplete()) {
                        arrayList.add(nBSTransactionState);
                    } else if (nBSTransactionState2.isError()) {
                        nBSTransactionState2.newend().c(true);
                        if (nBSTransactionState2.isError()) {
                            nBSTransactionState2.setErrorDataInfo("", new HashMap(), "");
                        }
                        a(new com.networkbench.agent.impl.d.b.c(nBSTransactionState2));
                    } else if (System.currentTimeMillis() - nBSTransactionState2.getStartTime() >= 10000) {
                        nBSTransactionState2.newend().c(true);
                        if (nBSTransactionState2.isError()) {
                            nBSTransactionState2.setErrorDataInfo("", new HashMap(), "");
                        }
                        a(new com.networkbench.agent.impl.d.b.c(nBSTransactionState2));
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                l.removeAll(arrayList);
            }
            f38320f = 0;
        }
        f38320f++;
    }

    public static void c(NBSTransactionState nBSTransactionState) {
        l.remove(nBSTransactionState);
    }

    public static void c() {
        if (p != null) {
            return;
        }
        ScheduledExecutorService scheduledExecutorService = f38323j;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            n();
        }
        p = f38323j.scheduleWithFixedDelay(o, 0L, 1000L, TimeUnit.MILLISECONDS);
    }

    public static void b(NBSTransactionState nBSTransactionState) {
        if (f38318c.size() < 2000) {
            f38318c.add(nBSTransactionState);
        }
    }

    public static void b() {
        ScheduledExecutorService scheduledExecutorService = f38323j;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            return;
        }
        try {
            f38323j.submit(o).get();
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e3) {
            e3.printStackTrace();
        }
    }

    public static void a(NBSTransactionState nBSTransactionState) {
        if (l.size() < 2000) {
            l.add(nBSTransactionState);
        }
    }

    public static int e() {
        return f38324k.size();
    }

    public static void a(Object obj) {
        ConcurrentLinkedQueue<Object> concurrentLinkedQueue = f38324k;
        if (concurrentLinkedQueue.size() < 2000) {
            concurrentLinkedQueue.add(obj);
        }
    }

    public static void a(com.networkbench.agent.impl.data.l lVar) {
        ConcurrentHashMap<String, com.networkbench.agent.impl.data.l> concurrentHashMap = f38316a;
        if (concurrentHashMap.size() < 2000) {
            concurrentHashMap.put(lVar.d(), lVar);
        }
    }

    public static void a() {
        com.networkbench.agent.impl.data.l value;
        for (Map.Entry<String, com.networkbench.agent.impl.data.l> entry : f38316a.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !value.b() && !value.c()) {
                Harvest.addSocketDatasInfo(value);
            }
        }
    }

    public static void a(String str, int i2) {
        ConcurrentHashMap<String, Integer> concurrentHashMap = f38317b;
        if (concurrentHashMap.size() < 2000) {
            concurrentHashMap.put(str, Integer.valueOf(i2));
        }
    }

    public static void d() {
        Future<?> future = p;
        if (future != null) {
            future.cancel(true);
            p = null;
        }
        ScheduledExecutorService scheduledExecutorService = f38323j;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            return;
        }
        f38323j.shutdown();
    }
}
