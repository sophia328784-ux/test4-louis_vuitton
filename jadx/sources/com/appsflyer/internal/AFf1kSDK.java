package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0015\u0010\u000b\u001a\u00020\u00138FX\u0087\u0084\u0002¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014R\u0015\u0010\u0015\u001a\u00020\u00138FX\u0087\u0084\u0002¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014"}, d2 = {"Lcom/appsflyer/internal/AFf1kSDK;", "", "Lcom/appsflyer/internal/AFc1iSDK;", "p0", "Lcom/appsflyer/internal/AFf1jSDK;", "p1", "Lcom/appsflyer/internal/AFc1eSDK;", "p2", "<init>", "(Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFf1jSDK;Lcom/appsflyer/internal/AFc1eSDK;)V", "", "AFKeystoreWrapper", "()J", "AFLogger", "Lcom/appsflyer/internal/AFc1iSDK;", "unregisterClient", "Lcom/appsflyer/internal/AFf1jSDK;", NBSSpanMetricUnit.Day, "Lcom/appsflyer/internal/AFc1eSDK;", "", "Lkotlin/Lazy;", "registerClient", "AFa1uSDK"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFf1kSDK {
    private static final long force = 86400;
    public final Lazy AFKeystoreWrapper;
    private final AFc1iSDK AFLogger;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public final AFc1eSDK unregisterClient;
    public final Lazy registerClient;

    /* JADX INFO: renamed from: unregisterClient, reason: from kotlin metadata */
    public final AFf1jSDK d;

    public AFf1kSDK(AFc1iSDK aFc1iSDK, AFf1jSDK aFf1jSDK, AFc1eSDK aFc1eSDK) {
        aFc1iSDK.getClass();
        aFf1jSDK.getClass();
        aFc1eSDK.getClass();
        this.AFLogger = aFc1iSDK;
        this.d = aFf1jSDK;
        this.unregisterClient = aFc1eSDK;
        final int i2 = 0;
        this.AFKeystoreWrapper = LazyKt.b(new Function0(this) { // from class: com.appsflyer.internal.q

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AFf1kSDK f22702c;

            {
                this.f22702c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                boolean zD;
                int i3 = i2;
                AFf1kSDK aFf1kSDK = this.f22702c;
                switch (i3) {
                    case 0:
                        zD = AFf1kSDK.d(aFf1kSDK);
                        break;
                    default:
                        zD = AFf1kSDK.AFLogger(aFf1kSDK);
                        break;
                }
                return Boolean.valueOf(zD);
            }
        });
        final int i3 = 1;
        this.registerClient = LazyKt.b(new Function0(this) { // from class: com.appsflyer.internal.q

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AFf1kSDK f22702c;

            {
                this.f22702c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                boolean zD;
                int i4 = i3;
                AFf1kSDK aFf1kSDK = this.f22702c;
                switch (i4) {
                    case 0:
                        zD = AFf1kSDK.d(aFf1kSDK);
                        break;
                    default:
                        zD = AFf1kSDK.AFLogger(aFf1kSDK);
                        break;
                }
                return Boolean.valueOf(zD);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean AFLogger(AFf1kSDK aFf1kSDK) {
        return Boolean.parseBoolean(aFf1kSDK.AFLogger.AFLogger("com.appsflyer.rc.staging"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(AFf1kSDK aFf1kSDK) {
        return Boolean.parseBoolean(aFf1kSDK.AFLogger.AFLogger("com.appsflyer.rc.sandbox"));
    }

    public final long AFKeystoreWrapper() {
        Object failure;
        String strAFLogger = this.AFLogger.AFLogger("com.appsflyer.rc.cache.max-age-fallback");
        if (strAFLogger == null) {
            return force;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = Long.valueOf(Long.parseLong(strAFLogger));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.REMOTE_CONTROL;
            String message = thA.getMessage();
            if (message == null) {
                message = "unknown error";
            }
            AFLoggerBase.e$default(aFLogger, logTag, "Can't read maxAgeFallback from Manifest: ".concat(message), thA, false, false, false, false, 120, null);
            failure = Long.valueOf(force);
        }
        return ((Number) failure).longValue();
    }
}
