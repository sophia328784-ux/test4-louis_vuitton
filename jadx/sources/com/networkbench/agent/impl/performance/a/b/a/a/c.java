package com.networkbench.agent.impl.performance.a.b.a.a;

import android.os.Looper;
import android.os.Process;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.performance.a.c.g;
import com.networkbench.agent.impl.performance.a.e.f;
import com.networkbench.agent.impl.performance.a.e.h;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<Double> f37630c;
    List<g> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<g> f37631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f37632f;
    int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f37633h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.a.b f37634i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.networkbench.agent.impl.performance.a.b.c.a f37635j;

    public c(com.networkbench.agent.impl.performance.a.b.a.b bVar) {
        super(bVar);
        this.g = 0;
        this.f37632f = 0L;
        this.f37630c = new CopyOnWriteArrayList();
        this.d = new CopyOnWriteArrayList();
        this.f37631e = new CopyOnWriteArrayList();
        this.f37635j = new com.networkbench.agent.impl.performance.a.b.c.a(0L, f()) { // from class: com.networkbench.agent.impl.performance.a.b.a.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.g();
                    c.this.g++;
                    double dF = com.networkbench.agent.impl.performance.a.e.c.f();
                    c.this.f37630c.add(Double.valueOf(dF));
                    com.networkbench.agent.impl.c.g.p("currentCpuLoad: " + dF);
                    boolean zH = c.this.h();
                    c cVar = c.this;
                    if (zH) {
                        cVar.b();
                        c.this.e();
                        return;
                    }
                    boolean zA = com.networkbench.agent.impl.performance.a.b.a.a.a(cVar.f37634i, dF);
                    c cVar2 = c.this;
                    if (cVar2.g < 2 || zA) {
                        cVar2.d();
                    } else {
                        com.networkbench.agent.impl.c.g.z("ThreadDetectState executeCpuTask, count >= 2, resetAndSwitchToProcessDetectState");
                        c.this.e();
                    }
                } catch (Throwable th) {
                    com.networkbench.agent.impl.c.g.z("ThreadDetectState executeCpuTask has error: " + th.getMessage());
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.g == 0) {
            this.f37632f = System.currentTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return System.currentTimeMillis() - this.f37632f >= ((long) this.f37634i.f37616b) && !this.f37630c.isEmpty();
    }

    @Override // com.networkbench.agent.impl.performance.a.b.a.a.a, com.networkbench.agent.impl.performance.a.d.g
    public final void a(com.networkbench.agent.impl.performance.a.a.b bVar, String str) {
        super.a(bVar, str);
        if (this.f37627b) {
            return;
        }
        this.f37633h = str;
        this.f37634i = bVar;
        this.f37632f = System.currentTimeMillis();
        com.networkbench.agent.impl.performance.a.b.c.b.a().a(this.f37635j);
        this.f37627b = true;
        com.networkbench.agent.impl.c.g.z("ThreadDetectState startexceptionstate run----> Period :" + f());
    }

    public void b() {
        double d;
        double d2;
        Iterator<Double> it = this.f37630c.iterator();
        double d3 = 0.0d;
        double d4 = 0.0d;
        while (it.hasNext()) {
            double dDoubleValue = it.next().doubleValue();
            if (d4 < dDoubleValue) {
                d4 = dDoubleValue;
            }
            d3 += dDoubleValue;
        }
        com.networkbench.agent.impl.c.g.z("report exception data, exception thread size is: " + this.f37631e.size());
        double size = d3 / ((double) this.f37630c.size());
        if (size >= this.f37634i.d || (100.0d * size) / com.networkbench.agent.impl.performance.a.e.a.a() >= 80.0d) {
            com.networkbench.agent.impl.c.g.z("create ExceptionCpuData...");
            d();
            long jA = com.networkbench.agent.impl.performance.a.e.a.a();
            if (jA > 0) {
                double d5 = jA;
                d2 = d4 / d5;
                d = size / d5;
            } else {
                d = 0.0d;
                d2 = 0.0d;
            }
            if (this.f37631e.isEmpty()) {
                return;
            }
            com.networkbench.agent.impl.performance.a.c.b().d().a(new com.networkbench.agent.impl.performance.a.c.b(size, d4, d, d2, this.f37631e, ScreenNameManager.getCurrentActivityName()));
        }
    }

    public final void d() {
        ArrayList arrayList = new ArrayList();
        if (this.d.isEmpty()) {
            h.a(this.d);
            return;
        }
        h.a(arrayList);
        List<g> listA = h.a(Process.myPid(), this.d, this.f37634i.f37618e);
        if (!listA.isEmpty() && listA.size() <= 30) {
            ThreadGroup threadGroup = Looper.getMainLooper().getThread().getThreadGroup();
            int iActiveCount = threadGroup.activeCount();
            int i2 = (iActiveCount / 2) + iActiveCount;
            Thread[] threadArr = new Thread[i2];
            threadGroup.enumerate(threadArr);
            StringBuilder sb = new StringBuilder();
            f fVar = new f(20);
            com.networkbench.agent.impl.c.g.z("collectThreadExceptionData threadArr length: " + i2);
            for (g gVar : listA) {
                com.networkbench.agent.impl.c.g.z("collectThreadExceptionData for each  task Thread--->threadName: " + gVar.f37717b);
                if (gVar.f37717b.equals(Thread.currentThread().getName())) {
                    com.networkbench.agent.impl.c.g.z("collectThreadExceptionData skip current thread: " + gVar.f37717b);
                } else {
                    for (int i3 = 0; i3 < i2; i3++) {
                        Thread thread = threadArr[i3];
                        if (thread == null) {
                            break;
                        }
                        if (gVar.f37717b.equals(thread.getName()) || (thread.getName().length() > 15 && gVar.f37717b.equals(thread.getName().substring(0, 15)))) {
                            ArrayList<StackTraceElement> arrayList2 = new ArrayList(Arrays.asList(thread.getStackTrace()));
                            if (!arrayList2.isEmpty()) {
                                Collections.reverse(arrayList2);
                                int i4 = 0;
                                for (StackTraceElement stackTraceElement : arrayList2) {
                                    i4++;
                                    sb.append(stackTraceElement.getClassName());
                                    sb.append(FileUtils.HIDDEN_PREFIX);
                                    sb.append(stackTraceElement.getMethodName());
                                    sb.append("(");
                                    sb.append(stackTraceElement.getFileName());
                                    sb.append(":");
                                    sb.append(stackTraceElement.getLineNumber());
                                    sb.append(")\n");
                                    if (i4 >= this.f37634i.f37617c) {
                                        break;
                                    }
                                }
                                gVar.f37720f = sb.toString();
                                gVar.f37719e = String.format("%.2f", Double.valueOf(gVar.d / this.f37634i.f37618e));
                                fVar.add(gVar);
                                sb.setLength(0);
                                break;
                            }
                            com.networkbench.agent.impl.c.g.z("collectThreadExceptionData stackTraceElements is empty , continue");
                        }
                    }
                }
            }
            fVar.a();
            com.networkbench.agent.impl.c.g.z("collectThreadExceptionData limitArrayList size: " + fVar.size());
            this.f37631e.addAll(fVar);
            this.d = arrayList;
        }
    }

    public final void e() {
        this.f37630c.clear();
        this.f37631e.clear();
        this.d.clear();
        this.f37632f = 0L;
        this.g = 0;
        this.f37627b = false;
        com.networkbench.agent.impl.performance.a.b.c.b.a().b(this.f37635j);
    }

    public final long f() {
        return LiveTranslationEntity.DefaultSentenceTimeOut;
    }

    @Override // com.networkbench.agent.impl.performance.a.d.g
    public com.networkbench.agent.impl.performance.a.b.a.c c() {
        return com.networkbench.agent.impl.performance.a.b.a.c.THREAD_DETECT;
    }

    @Override // com.networkbench.agent.impl.performance.a.b.a.a.a, com.networkbench.agent.impl.performance.a.d.g
    public void a() {
        super.a();
        e();
    }
}
