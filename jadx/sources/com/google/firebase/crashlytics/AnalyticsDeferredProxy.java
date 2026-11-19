package com.google.firebase.crashlytics;

import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.BlockingAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.BreadcrumbAnalyticsEventReceiver;
import com.google.firebase.crashlytics.internal.analytics.CrashlyticsOriginAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.UnavailableAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import com.google.firebase.crashlytics.internal.breadcrumbs.DisabledBreadcrumbSource;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class AnalyticsDeferredProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Deferred f34466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile AnalyticsEventLogger f34467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile BreadcrumbSource f34468c;
    public final ArrayList d;

    public AnalyticsDeferredProxy(Deferred<AnalyticsConnector> deferred, BreadcrumbSource breadcrumbSource, AnalyticsEventLogger analyticsEventLogger) {
        this.f34466a = deferred;
        this.f34468c = breadcrumbSource;
        this.d = new ArrayList();
        this.f34467b = analyticsEventLogger;
        deferred.a(new Deferred.DeferredHandler() { // from class: com.google.firebase.crashlytics.a
            @Override // com.google.firebase.inject.Deferred.DeferredHandler
            public final void g(Provider provider) {
                AnalyticsDeferredProxy analyticsDeferredProxy = this.f34475b;
                Logger logger = Logger.f34483b;
                logger.a(3);
                AnalyticsConnector analyticsConnector = (AnalyticsConnector) provider.get();
                CrashlyticsOriginAnalyticsEventLogger crashlyticsOriginAnalyticsEventLogger = new CrashlyticsOriginAnalyticsEventLogger(analyticsConnector);
                CrashlyticsAnalyticsListener crashlyticsAnalyticsListener = new CrashlyticsAnalyticsListener();
                AnalyticsConnector.AnalyticsConnectorHandle analyticsConnectorHandleC = analyticsConnector.c("clx", crashlyticsAnalyticsListener);
                if (analyticsConnectorHandleC == null) {
                    logger.a(3);
                    analyticsConnectorHandleC = analyticsConnector.c("crash", crashlyticsAnalyticsListener);
                    if (analyticsConnectorHandleC != null) {
                        logger.a(5);
                    }
                }
                if (analyticsConnectorHandleC == null) {
                    logger.a(5);
                    return;
                }
                logger.a(3);
                BreadcrumbAnalyticsEventReceiver breadcrumbAnalyticsEventReceiver = new BreadcrumbAnalyticsEventReceiver();
                BlockingAnalyticsEventLogger blockingAnalyticsEventLogger = new BlockingAnalyticsEventLogger(crashlyticsOriginAnalyticsEventLogger, 500, TimeUnit.MILLISECONDS);
                synchronized (analyticsDeferredProxy) {
                    try {
                        Iterator it = analyticsDeferredProxy.d.iterator();
                        while (it.hasNext()) {
                            breadcrumbAnalyticsEventReceiver.a((BreadcrumbHandler) it.next());
                        }
                        crashlyticsAnalyticsListener.f34470b = breadcrumbAnalyticsEventReceiver;
                        crashlyticsAnalyticsListener.f34469a = blockingAnalyticsEventLogger;
                        analyticsDeferredProxy.f34468c = breadcrumbAnalyticsEventReceiver;
                        analyticsDeferredProxy.f34467b = blockingAnalyticsEventLogger;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    public AnalyticsDeferredProxy(Deferred<AnalyticsConnector> deferred) {
        this(deferred, new DisabledBreadcrumbSource(), new UnavailableAnalyticsEventLogger());
    }
}
