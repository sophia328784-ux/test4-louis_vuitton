package com.appsflyer.internal;

import android.content.Intent;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.SessionReadyListener;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1xSDK implements AFj1wSDK {
    private final AFc1dSDK<AFa1qSDK> AFKeystoreWrapper;
    private final AFc1dSDK<AFc1iSDK> AFLogger;
    private volatile SessionReadyListener d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicBoolean f22668i;
    private final AFj1zSDK registerClient;
    private final List<AFj1uSDK> unregisterClient;
    private final AtomicBoolean w;

    public AFj1xSDK(AFc1dSDK<AFc1iSDK> aFc1dSDK, AFc1dSDK<AFa1qSDK> aFc1dSDK2) {
        aFc1dSDK.getClass();
        aFc1dSDK2.getClass();
        this.AFLogger = aFc1dSDK;
        this.AFKeystoreWrapper = aFc1dSDK2;
        this.registerClient = new AFj1zSDK();
        this.unregisterClient = new ArrayList();
        this.w = new AtomicBoolean(false);
        this.f22668i = new AtomicBoolean(false);
    }

    private final void e() {
        SessionReadyListener sessionReadyListener = this.d;
        if (sessionReadyListener != null) {
            try {
                sessionReadyListener.onSessionReady();
            } catch (Throwable th) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Error in onSessionReady callback", th, false, false, false, false, 120, null);
            }
        }
    }

    private final void unregisterClient() {
        Object next;
        if (this.f22668i.get()) {
            return;
        }
        List<AFj1uSDK> list = this.unregisterClient;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((AFj1uSDK) it.next()).unregisterClient()) {
                    Iterator<T> it2 = this.unregisterClient.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (((AFj1uSDK) next).unregisterClient());
                    AFj1uSDK aFj1uSDK = (AFj1uSDK) next;
                    if (aFj1uSDK != null) {
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, tr.g("Condition not satisfied: ", aFj1uSDK.d()), false, 4, null);
                        return;
                    }
                    return;
                }
            }
        }
        if (this.d == null) {
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "All conditions satisfied but no listener registered yet", false, 4, null);
        } else if (this.f22668i.compareAndSet(false, true)) {
            AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "All session readiness conditions satisfied, triggering callback", false, 4, null);
            e();
        }
    }

    @Override // com.appsflyer.internal.AFj1wSDK
    public final boolean AFKeystoreWrapper() {
        synchronized (this.unregisterClient) {
            try {
                boolean z = false;
                if (!this.w.get()) {
                    return false;
                }
                List<AFj1uSDK> list = this.unregisterClient;
                if ((list instanceof Collection) && list.isEmpty()) {
                    z = true;
                } else {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (!((AFj1uSDK) it.next()).unregisterClient()) {
                        }
                    }
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.appsflyer.internal.AFj1wSDK
    public final boolean AFLogger() {
        return this.d != null;
    }

    @Override // com.appsflyer.internal.AFj1wSDK
    public final void R_(Intent intent) {
        intent.getClass();
        synchronized (this.unregisterClient) {
            try {
                this.w.set(true);
                this.f22668i.set(false);
                int iAFLogger = ((AFc1iSDK) this.AFLogger.AFKeystoreWrapper.mo47invoke()).AFKeystoreWrapper.AFLogger("appsFlyerCount", 0);
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.SDK_LIFECYCLE;
                AFLoggerBase.d$default(aFLogger, logTag, "Starting session readiness evaluation for launch counter: " + iAFLogger, false, 4, null);
                if (iAFLogger == 0) {
                    AFLoggerBase.d$default(aFLogger, logTag, "Conversion event: no additional conditions required", false, 4, null);
                } else if (((AFa1qSDK) this.AFKeystoreWrapper.AFKeystoreWrapper.mo47invoke()).e_(intent)) {
                    this.unregisterClient.add(this.registerClient);
                    AFLoggerBase.d$default(aFLogger, logTag, "Added deeplink condition for launch event (has deeplink)", false, 4, null);
                } else {
                    AFLoggerBase.d$default(aFLogger, logTag, "Deeplink condition not needed for launch event (no deeplink)", false, 4, null);
                }
                unregisterClient();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.appsflyer.internal.AFj1wSDK
    public final void d() {
        if (this.registerClient.AFLogger) {
            return;
        }
        synchronized (this.unregisterClient) {
            try {
                AFj1zSDK aFj1zSDK = this.registerClient;
                if (!aFj1zSDK.AFLogger) {
                    aFj1zSDK.AFLogger = true;
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Deeplink processed condition satisfied", false, 4, null);
                }
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.SDK_LIFECYCLE;
                AFLoggerBase.d$default(aFLogger, logTag, "Deeplink condition satisfied", false, 4, null);
                if (!this.w.get()) {
                    AFLoggerBase.d$default(aFLogger, logTag, "Evaluation not started yet, condition will be checked when evaluation begins", false, 4, null);
                } else if (this.unregisterClient.contains(this.registerClient)) {
                    unregisterClient();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.appsflyer.internal.AFj1wSDK
    public final void registerClient() {
        synchronized (this.unregisterClient) {
            try {
                this.registerClient.AFLogger = false;
                Iterator<T> it = this.unregisterClient.iterator();
                while (it.hasNext()) {
                    ((AFj1uSDK) it.next()).registerClient();
                }
                this.unregisterClient.clear();
                this.w.set(false);
                this.f22668i.set(false);
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Session readiness evaluation finished", false, 4, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.appsflyer.internal.AFj1wSDK
    public final void d(SessionReadyListener sessionReadyListener) {
        synchronized (this.unregisterClient) {
            try {
                this.d = sessionReadyListener;
                if (sessionReadyListener == null) {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Session ready listener unregistered", false, 4, null);
                } else {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Session ready listener registered", false, 4, null);
                    if (this.w.get() && !this.f22668i.get()) {
                        unregisterClient();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
