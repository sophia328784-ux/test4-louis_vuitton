package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.v40;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NavigableSet;
import java.util.Set;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1wSDK {
    private final ExecutorService AFKeystoreWrapper;
    private final Timer AFLogger;
    private final Set<AFe1zSDK> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final NavigableSet<AFe1ySDK<?>> f22631e;
    private final Set<AFe1zSDK> force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final NavigableSet<AFe1ySDK<?>> f22632i;
    private Executor registerClient;
    public final List<AFe1vSDK> unregisterClient;
    private final List<AFe1ySDK<?>> v;
    private final Set<AFe1ySDK<?>> w;

    public /* synthetic */ class AFa1uSDK {
        public static final /* synthetic */ int[] AFKeystoreWrapper;

        static {
            int[] iArr = new int[AFa1ySDK.values().length];
            try {
                iArr[AFa1ySDK.Duplicate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFa1ySDK.Skipped.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFa1ySDK.Admitted.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            AFKeystoreWrapper = iArr;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.appsflyer.internal.AFe1wSDK$AFa1ySDK[], still in use, count: 1, list:
      (r0v1 com.appsflyer.internal.AFe1wSDK$AFa1ySDK[]) from 0x0024: INVOKE (r0v1 com.appsflyer.internal.AFe1wSDK$AFa1ySDK[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006"}, d2 = {"Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;", "", "<init>", "(Ljava/lang/String;I)V", "AFKeystoreWrapper", "registerClient", NBSSpanMetricUnit.Day}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AFa1ySDK {
        Admitted,
        Duplicate,
        Skipped;

        static {
            EnumEntriesKt.a(aFa1ySDKArr);
        }

        private AFa1ySDK() {
            super(str, i);
        }

        public static AFa1ySDK valueOf(String str) {
            return (AFa1ySDK) Enum.valueOf(AFa1ySDK.class, str);
        }

        public static AFa1ySDK[] values() {
            return (AFa1ySDK[]) AFLogger.clone();
        }
    }

    public AFe1wSDK(ExecutorService executorService) {
        executorService.getClass();
        this.AFKeystoreWrapper = executorService;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        executorServiceNewSingleThreadExecutor.getClass();
        this.registerClient = executorServiceNewSingleThreadExecutor;
        this.AFLogger = new Timer(true);
        this.unregisterClient = new CopyOnWriteArrayList();
        this.d = new CopyOnWriteArraySet();
        Set<AFe1zSDK> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        setNewSetFromMap.getClass();
        this.force = setNewSetFromMap;
        this.f22632i = new ConcurrentSkipListSet();
        this.f22631e = new ConcurrentSkipListSet();
        this.v = new ArrayList();
        Set<AFe1ySDK<?>> setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
        setNewSetFromMap2.getClass();
        this.w = setNewSetFromMap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AFKeystoreWrapper(AFe1wSDK aFe1wSDK, AFe1ySDK aFe1ySDK) {
        Iterator<AFe1vSDK> it = aFe1wSDK.unregisterClient.iterator();
        while (it.hasNext()) {
            it.next().registerClient(aFe1ySDK);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AFLogger(AFe1wSDK aFe1wSDK) {
        synchronized (aFe1wSDK.f22632i) {
            AFe1ySDK<?> aFe1ySDKPollFirst = aFe1wSDK.f22632i.pollFirst();
            if (aFe1ySDKPollFirst == null) {
                return;
            }
            aFe1wSDK.w.add(aFe1ySDKPollFirst);
            long jD = aFe1ySDKPollFirst.d();
            Thread threadCurrentThread = Thread.currentThread();
            threadCurrentThread.getClass();
            AFe1sSDK aFe1sSDK = new AFe1sSDK(threadCurrentThread);
            if (jD > 0) {
                aFe1wSDK.AFLogger.schedule(aFe1sSDK, jD);
            }
            aFe1wSDK.registerClient.execute(new o(aFe1wSDK, aFe1ySDKPollFirst, 1));
            if (!aFe1wSDK.f22632i.isEmpty()) {
                aFe1wSDK.AFKeystoreWrapper.submit(new g(aFe1wSDK, 3));
            }
            int i2 = 0;
            try {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "starting task execution: " + aFe1ySDKPollFirst, false, 4, null);
                AFd1cSDK aFd1cSDKCall = aFe1ySDKPollFirst.call();
                aFe1sSDK.cancel();
                aFe1wSDK.registerClient.execute(new p(aFe1ySDKPollFirst, aFd1cSDKCall, aFe1wSDK, i2));
            } catch (InterruptedIOException unused) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "task was interrupted: " + aFe1ySDKPollFirst, false, 4, null);
                AFd1cSDK aFd1cSDK = AFd1cSDK.TIMEOUT;
                aFe1ySDKPollFirst.e = aFd1cSDK;
                aFe1wSDK.registerClient.execute(new p(aFe1ySDKPollFirst, aFd1cSDK, aFe1wSDK, i2));
            } catch (InterruptedException unused2) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "task was interrupted: " + aFe1ySDKPollFirst, false, 4, null);
                AFd1cSDK aFd1cSDK2 = AFd1cSDK.TIMEOUT;
                aFe1ySDKPollFirst.e = aFd1cSDK2;
                aFe1wSDK.registerClient.execute(new p(aFe1ySDKPollFirst, aFd1cSDK2, aFe1wSDK, i2));
            } catch (Throwable unused3) {
                aFe1sSDK.cancel();
                aFe1wSDK.registerClient.execute(new p(aFe1ySDKPollFirst, AFd1cSDK.FAILURE, aFe1wSDK, i2));
            }
        }
    }

    private final void d(NavigableSet<AFe1ySDK<?>> navigableSet) {
        AFe1ySDK<?> aFe1ySDKPollFirst = navigableSet.pollFirst();
        if (aFe1ySDKPollFirst == null) {
            return;
        }
        this.d.add(aFe1ySDKPollFirst.unregisterClient);
        Iterator<AFe1vSDK> it = this.unregisterClient.iterator();
        while (it.hasNext()) {
            it.next().unregisterClient(aFe1ySDKPollFirst);
        }
    }

    private final AFa1ySDK registerClient(AFe1ySDK<?> aFe1ySDK) {
        boolean zAdd;
        AFa1ySDK aFa1ySDK;
        synchronized (this.f22632i) {
            if (this.w.contains(aFe1ySDK)) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "tried to add already running task: " + aFe1ySDK, false, 4, null);
                return AFa1ySDK.Duplicate;
            }
            if (!this.f22632i.contains(aFe1ySDK) && !this.f22631e.contains(aFe1ySDK)) {
                for (AFe1zSDK aFe1zSDK : aFe1ySDK.AFKeystoreWrapper) {
                    if (this.force.contains(aFe1zSDK)) {
                        aFe1zSDK.getClass();
                        aFe1ySDK.AFLogger.add(aFe1zSDK);
                    }
                }
                if (this.d.containsAll(aFe1ySDK.AFLogger)) {
                    zAdd = this.f22632i.add(aFe1ySDK);
                } else {
                    zAdd = this.f22631e.add(aFe1ySDK);
                    if (zAdd) {
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "new task was blocked: " + aFe1ySDK, false, 4, null);
                        aFe1ySDK.w();
                    }
                }
                if (zAdd) {
                    this.f22632i.addAll(this.v);
                    this.v.clear();
                    aFa1ySDK = AFa1ySDK.Admitted;
                } else {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "task not added, it's already in the queue: " + aFe1ySDK, false, 4, null);
                    aFa1ySDK = AFa1ySDK.Skipped;
                }
                return aFa1ySDK;
            }
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "tried to add already scheduled task: " + aFe1ySDK, false, 4, null);
            return AFa1ySDK.Duplicate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unregisterClient(AFe1wSDK aFe1wSDK, AFe1ySDK aFe1ySDK) {
        int i2 = AFa1uSDK.AFKeystoreWrapper[aFe1wSDK.registerClient(aFe1ySDK).ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.QUEUE, "QUEUE: tried to add already pending task: " + aFe1ySDK, false, 4, null);
                return;
            }
            int i3 = 3;
            if (i2 != 3) {
                v40.g();
                return;
            }
            aFe1wSDK.force.add(aFe1ySDK.unregisterClient);
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "new task added: " + aFe1ySDK, false, 4, null);
            Iterator<AFe1vSDK> it = aFe1wSDK.unregisterClient.iterator();
            while (it.hasNext()) {
                it.next().d(aFe1ySDK);
            }
            aFe1wSDK.AFKeystoreWrapper.submit(new g(aFe1wSDK, i3));
            synchronized (aFe1wSDK.f22632i) {
                try {
                    for (int size = (aFe1wSDK.f22632i.size() + aFe1wSDK.f22631e.size()) - 40; size > 0; size--) {
                        boolean zIsEmpty = aFe1wSDK.f22631e.isEmpty();
                        boolean zIsEmpty2 = aFe1wSDK.f22632i.isEmpty();
                        if (!zIsEmpty2 && !zIsEmpty) {
                            AFe1ySDK<?> aFe1ySDKFirst = aFe1wSDK.f22632i.first();
                            AFe1ySDK<?> aFe1ySDKFirst2 = aFe1wSDK.f22631e.first();
                            aFe1ySDKFirst2.getClass();
                            if (aFe1ySDKFirst.compareTo(aFe1ySDKFirst2) > 0) {
                                aFe1wSDK.d(aFe1wSDK.f22632i);
                            } else {
                                aFe1wSDK.d(aFe1wSDK.f22631e);
                            }
                        } else if (!zIsEmpty2) {
                            aFe1wSDK.d(aFe1wSDK.f22632i);
                        } else if (!zIsEmpty) {
                            aFe1wSDK.d(aFe1wSDK.f22631e);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void d(AFe1ySDK<?> aFe1ySDK) {
        aFe1ySDK.getClass();
        this.registerClient.execute(new o(this, aFe1ySDK, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unregisterClient(AFe1ySDK aFe1ySDK, AFd1cSDK aFd1cSDK, AFe1wSDK aFe1wSDK) {
        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.QUEUE, "execution finished for " + aFe1ySDK + ", result: " + aFd1cSDK, false, 4, null);
        aFe1wSDK.w.remove(aFe1ySDK);
        Iterator<AFe1vSDK> it = aFe1wSDK.unregisterClient.iterator();
        while (it.hasNext()) {
            it.next().AFKeystoreWrapper(aFe1ySDK, aFd1cSDK);
        }
        if (aFd1cSDK == AFd1cSDK.SUCCESS) {
            aFe1wSDK.d.add(aFe1ySDK.unregisterClient);
            aFe1wSDK.unregisterClient();
            return;
        }
        if (aFe1ySDK.AFLogger()) {
            if ((aFe1ySDK instanceof AFf1sSDK) && ((AFf1sSDK) aFe1ySDK).unregisterClient == AFd1bSDK.ARS_VALIDATE) {
                return;
            }
            synchronized (aFe1wSDK.f22632i) {
                aFe1wSDK.v.add(aFe1ySDK);
                Iterator<AFe1vSDK> it2 = aFe1wSDK.unregisterClient.iterator();
                while (it2.hasNext()) {
                    it2.next().d(aFe1ySDK);
                }
            }
            return;
        }
        aFe1wSDK.d.add(aFe1ySDK.unregisterClient);
        aFe1wSDK.unregisterClient();
    }

    private final void unregisterClient() {
        synchronized (this.f22632i) {
            try {
                Iterator<AFe1ySDK<?>> it = this.f22631e.iterator();
                it.getClass();
                boolean z = false;
                while (it.hasNext()) {
                    AFe1ySDK<?> next = it.next();
                    next.getClass();
                    if (this.d.containsAll(next.AFLogger)) {
                        it.remove();
                        this.f22632i.add(next);
                        z = true;
                    }
                }
                if (z) {
                    this.AFKeystoreWrapper.submit(new g(this, 3));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
