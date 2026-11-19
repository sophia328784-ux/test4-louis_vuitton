package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import com.google.firebase.crashlytics.internal.Logger;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class BlockingAnalyticsEventLogger implements AnalyticsEventReceiver, AnalyticsEventLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsOriginAnalyticsEventLogger f34487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeUnit f34489c;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CountDownLatch f34490e;

    public BlockingAnalyticsEventLogger(CrashlyticsOriginAnalyticsEventLogger crashlyticsOriginAnalyticsEventLogger, int i2, TimeUnit timeUnit) {
        this.f34487a = crashlyticsOriginAnalyticsEventLogger;
        this.f34488b = i2;
        this.f34489c = timeUnit;
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
    public final void b(Bundle bundle) {
        synchronized (this.d) {
            try {
                Logger logger = Logger.f34483b;
                Objects.toString(bundle);
                logger.a(2);
                this.f34490e = new CountDownLatch(1);
                this.f34487a.b(bundle);
                logger.a(2);
                try {
                    if (this.f34490e.await(this.f34488b, this.f34489c)) {
                        logger.a(2);
                    } else {
                        logger.a(5);
                    }
                } catch (InterruptedException unused) {
                    Logger.f34483b.b();
                }
                this.f34490e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver
    public final void onEvent(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f34490e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
