package com.networkbench.agent.impl.background;

import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.data.d.d;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.instrumentation.NBSFragmentSession;
import com.networkbench.agent.impl.m.c;
import com.networkbench.agent.impl.n.g;
import com.networkbench.agent.impl.performance.coulometry.CoulometryModuleWrapper;
import com.networkbench.agent.impl.plugin.f.h;
import com.networkbench.agent.impl.session.Event;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class NBSApplicationStateMonitor implements Runnable {
    public static final int ALTERNATEPERIOD = 30000;
    private static final String g = "InversionScreen#";
    private static NBSApplicationStateMonitor m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f36543c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f36544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Thread f36545f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f36546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayList<b> f36547i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36548j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Object f36549k;
    private g l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f36541a = f.a();
    private static final Collection<g> n = new ConcurrentLinkedQueue();

    public NBSApplicationStateMonitor(int i2, int i3, TimeUnit timeUnit, int i4) {
        this.f36542b = true;
        this.f36543c = 0L;
        this.d = 0L;
        this.f36544e = new Object();
        this.f36545f = new c();
        this.f36547i = new ArrayList<>();
        this.f36548j = true;
        this.f36549k = new Object();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.networkbench.agent.impl.background.NBSApplicationStateMonitor.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "Tingyun-Monitor");
            }
        });
        this.f36546h = i4;
        scheduledThreadPoolExecutor.scheduleWithFixedDelay(this, i2, i3, timeUnit);
    }

    private void addFragmentInfo() {
        Collection<g> collection = n;
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Iterator<g> it = collection.iterator();
        while (it.hasNext()) {
            Harvest.mSessionInfo.a(it.next());
        }
        n.clear();
        NBSFragmentSession.getFragmentPageSpans().clear();
    }

    private synchronized void addPageSpanStart(String str) {
        try {
            if (!Harvest.isUser_action_enabled()) {
                return;
            }
            com.networkbench.agent.impl.c.g.l("useraction  addPageSpanStart gather begin!!");
            g gVar = this.l;
            if (gVar != null) {
                gVar.b(System.currentTimeMillis());
                Harvest.mSessionInfo.a(new g(this.l));
                addFragmentInfo();
                this.l.e();
            } else {
                this.l = new g();
            }
            this.l.a(str);
            this.l.a(System.currentTimeMillis());
        } catch (Throwable unused) {
        }
    }

    private synchronized void addPageSpanStop() {
        try {
            if (!Harvest.isUser_action_enabled()) {
                return;
            }
            com.networkbench.agent.impl.c.g.l("Useraction addPageSpanStop gather  begin !!");
            g gVar = this.l;
            if (gVar != null) {
                gVar.b(System.currentTimeMillis() - 30000);
                Harvest.mSessionInfo.a(this.l);
                addFragmentInfo();
                this.l = null;
            }
        } catch (Throwable th) {
            f36541a.e("addPageSpanStop error!" + th.getMessage());
        }
    }

    private void executePluginLogicOnBackground() {
        if (h.f38057c) {
            com.networkbench.agent.impl.plugin.f.g gVar = new com.networkbench.agent.impl.plugin.f.g(com.networkbench.agent.impl.plugin.e.on_background);
            h.a(gVar);
            gVar.d();
        }
    }

    private void executePluginLogicOnForeground() {
        if (h.d) {
            com.networkbench.agent.impl.plugin.f.g gVar = new com.networkbench.agent.impl.plugin.f.g(com.networkbench.agent.impl.plugin.e.on_background);
            h.a(gVar);
            gVar.d();
        }
    }

    public static NBSApplicationStateMonitor getInstance() {
        if (m == null) {
            m = new NBSApplicationStateMonitor();
        }
        return m;
    }

    public static Collection<g> getPageSpanStack() {
        return n;
    }

    private long getSnoozeTime() {
        synchronized (this.f36549k) {
            synchronized (this.f36544e) {
                if (this.d == 0) {
                    return 0L;
                }
                return System.currentTimeMillis() - this.d;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyApplicationInBackground() {
        ArrayList arrayList;
        addPageSpanStop();
        synchronized (this.f36547i) {
            arrayList = new ArrayList(this.f36547i);
        }
        CoulometryModuleWrapper.getInstance().setApplicationBackgrounded(true);
        a aVar = new a(this);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((b) it.next()).b(aVar);
        }
    }

    private void notifyApplicationInForeground() {
        ArrayList arrayList;
        synchronized (this.f36547i) {
            arrayList = new ArrayList(this.f36547i);
        }
        a aVar = new a(this);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(aVar);
        }
    }

    private void setFeatureFunction() {
        if (r.u().ai()) {
            boolean zB = com.networkbench.agent.impl.crash.b.b(r.u().J());
            if (r.u().s() == zB) {
                com.networkbench.agent.impl.data.d.b.a().b(new d("ApplicationInForeground", ContentTree.ROOT_ID, "", -1));
            } else {
                com.networkbench.agent.impl.data.d.b.a().a(new d(g.concat(zB ? "vertical" : "horizontal"), ContentTree.ROOT_ID, "", -1));
            }
            r.u().g(com.networkbench.agent.impl.crash.b.b(r.u().J()));
        }
    }

    public void addApplicationStateListener(b bVar) {
        synchronized (this.f36547i) {
            this.f36547i.add(bVar);
        }
    }

    public long getCount() {
        return this.f36543c;
    }

    public boolean isForegrounded() {
        return this.f36548j;
    }

    public boolean onActivityStartMonitor(String str) {
        boolean z = false;
        try {
            Harvest.currentActivity = str;
            addPageSpanStart(str);
            synchronized (this.f36549k) {
                try {
                    synchronized (this.f36544e) {
                        try {
                            long j2 = this.f36543c + 1;
                            this.f36543c = j2;
                            if (j2 == 1) {
                                this.d = 0L;
                                if (!this.f36542b) {
                                    Harvest.addActionAndInteraction(ScreenNameManager.getCurrentScreenName(), "ApplicationInForeground", null, null);
                                    if (r.p == 0) {
                                        HarvestData.getSpanDatas().addEvent(new Event("applicationWillEnterForeground", 1, null, NBSBitmapBeansControl.getInstance().getSessionIdRefresh()));
                                    }
                                    executePluginLogicOnForeground();
                                }
                                this.f36542b = false;
                                z = true;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (!this.f36548j) {
                        notifyApplicationInForeground();
                        this.f36548j = true;
                        return true;
                    }
                    com.networkbench.agent.impl.c.g.q("onActivityStartMonitor cont :  " + this.f36543c);
                    return z;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable unused) {
            return z;
        }
    }

    public boolean onActivityStopMonitor(String str) {
        try {
            synchronized (this.f36549k) {
                synchronized (this.f36544e) {
                    try {
                        long j2 = this.f36543c - 1;
                        this.f36543c = j2;
                        if (j2 == 0) {
                            try {
                                if (r.u().X() && r.p == 0) {
                                    com.networkbench.agent.impl.b.b.a().e();
                                }
                            } catch (Throwable unused) {
                                f36541a.e("anrtracer cancel failed");
                            }
                            com.networkbench.agent.impl.data.type.f.f36952a.a(com.networkbench.agent.impl.data.type.f.a.BACKGROUND);
                            Harvest.addActionAndInteraction(ScreenNameManager.getCurrentScreenName(), "ApplicationInBackground", null, null);
                            if (r.p == 0) {
                                HarvestData.getSpanDatas().addEvent(new Event("applicationDidEnterBackground", 1, null, NBSBitmapBeansControl.getInstance().getSessionIdRefresh()));
                                ScreenNameManager.clearCurrentFragmentName();
                            }
                            executePluginLogicOnBackground();
                            this.d = System.currentTimeMillis();
                            getInstance().saveSDKData();
                            com.networkbench.agent.impl.c.g.q("  count : " + this.f36543c);
                            setFeatureFunction();
                        }
                        if (this.f36543c < 0) {
                            this.f36543c = 0L;
                        }
                        com.networkbench.agent.impl.c.g.q("onActivityStopMonitor  count : " + this.f36543c);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return this.f36543c == 0;
    }

    public void removeApplicationStateListener(b bVar) {
        synchronized (this.f36547i) {
            this.f36547i.remove(bVar);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f36549k) {
            try {
                if (getSnoozeTime() >= this.f36546h && this.f36548j) {
                    com.networkbench.agent.impl.util.c.c.a().a(new y() { // from class: com.networkbench.agent.impl.background.NBSApplicationStateMonitor.2
                        @Override // com.networkbench.agent.impl.util.y
                        public void tryCatchRun() {
                            NBSApplicationStateMonitor.this.notifyApplicationInBackground();
                        }
                    });
                    this.f36548j = false;
                }
            } catch (Throwable th) {
                com.networkbench.agent.impl.c.g.p("NBSApplicationStateMonitor run har an error : " + th.getMessage());
            }
        }
    }

    public void saveSDKData() {
        if (this.f36545f.isAlive()) {
            return;
        }
        com.networkbench.agent.impl.util.c.c.a().a(this.f36545f);
    }

    @Deprecated
    public void a() {
    }

    private NBSApplicationStateMonitor() {
        this(5, 5, TimeUnit.SECONDS, ALTERNATEPERIOD);
    }
}
