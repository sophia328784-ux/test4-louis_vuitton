package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.samsung.android.game.cloudgame.dev.sdk.CloudDevCallback;
import com.samsung.android.game.cloudgame.dev.sdk.CloudDevSdk;
import defpackage.o60;
import defpackage.tr;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\b\u0007\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0010¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0017¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u000f\u0010\u0013J\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u000b\u0010\u0013J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u000eH\u0003¢\u0006\u0004\b\b\u0010\u0014J\u001d\u0010\u000f\u001a\u00020\u0016*\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u000f\u0010\u0017R\u0014\u0010\u000b\u001a\u00020\u00188\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\b\u001a\u00020\u001b8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u000f\u001a\u00020\u001e8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0015\u0010'\u001a\u00020$8BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b%\u0010&R\u0015\u0010\u0019\u001a\u00020\u00078BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b(\u0010&R\u0014\u0010\u001c\u001a\u00020\u00078CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\t"}, d2 = {"Lcom/appsflyer/internal/AFe1iSDK;", "Lcom/appsflyer/internal/AFe1ySDK;", "Lcom/appsflyer/internal/AFh1qSDK;", "Lcom/appsflyer/internal/AFc1bSDK;", "p0", "<init>", "(Lcom/appsflyer/internal/AFc1bSDK;)V", "", "AFLogger", "()Z", "Lcom/appsflyer/internal/AFd1cSDK;", "registerClient", "()Lcom/appsflyer/internal/AFd1cSDK;", "Landroid/content/Context;", "", NBSSpanMetricUnit.Day, "(Landroid/content/Context;)I", "Lcom/appsflyer/internal/AFe1iSDK$AFa1tSDK;", "p1", "(Landroid/content/Context;Lcom/appsflyer/internal/AFe1iSDK$AFa1tSDK;)Z", "(I)Z", "", "", "(Lcom/appsflyer/internal/AFh1qSDK;Ljava/lang/String;)V", "Lcom/appsflyer/internal/AFd1zSDK;", "i", "Lcom/appsflyer/internal/AFd1zSDK;", "Lcom/appsflyer/internal/AFc1iSDK;", "v", "Lcom/appsflyer/internal/AFc1iSDK;", "Lcom/appsflyer/internal/AFc1eSDK;", "e", "Lcom/appsflyer/internal/AFc1eSDK;", "force", "Lcom/appsflyer/internal/AFh1qSDK;", "unregisterClient", "", "afErrorLog", "Lkotlin/Lazy;", "AFKeystoreWrapper", "afInfoLog", "AFa1vSDK", "AFa1tSDK"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFe1iSDK extends AFe1ySDK<AFh1qSDK> {

    /* JADX INFO: renamed from: afErrorLog, reason: from kotlin metadata */
    private final Lazy AFKeystoreWrapper;

    /* JADX INFO: renamed from: afInfoLog, reason: from kotlin metadata */
    private final Lazy i;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final AFc1eSDK d;

    /* JADX INFO: renamed from: force, reason: from kotlin metadata */
    private final AFh1qSDK unregisterClient;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final AFd1zSDK registerClient;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final AFc1iSDK AFLogger;

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\bH\u0016¨\u0006\t"}, d2 = {"com/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask$fetchGaidUsingSamsungSdk$1", "Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevCallback;", "onError", "", "reason", "", "onSuccess", "kinds", "", "sdk_main_prodRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AFa1zSDK implements CloudDevCallback {
        final /* synthetic */ AFa1tSDK $fetchGaidData;
        final /* synthetic */ CountDownLatch $latch;

        public AFa1zSDK(AFa1tSDK aFa1tSDK, CountDownLatch countDownLatch) {
            this.$fetchGaidData = aFa1tSDK;
            this.$latch = countDownLatch;
        }

        public final void onError(String reason) {
            reason.getClass();
            AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, tr.g("Could not fetch GAID using CloudDevSdk: ", reason), false, 4, null);
            StringBuilder gaidError = this.$fetchGaidData.getGaidError();
            gaidError.append(reason);
            gaidError.append(" |");
            this.$latch.countDown();
        }

        public final void onSuccess(Map<String, String> kinds) {
            kinds.getClass();
            AFLoggerBase.v$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, "CloudDevCallback received onSuccess", false, 4, null);
            this.$fetchGaidData.setAdvertisingId(kinds.get("gaid"));
            this.$latch.countDown();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1iSDK(AFc1bSDK aFc1bSDK) {
        super(AFd1bSDK.FETCH_ADVERTISING_ID, new AFe1zSDK[0], "FetchAdvertisingIdTask");
        aFc1bSDK.getClass();
        final int i2 = 0;
        AFd1zSDK aFd1zSDKValueOf = aFc1bSDK.valueOf();
        aFd1zSDKValueOf.getClass();
        this.registerClient = aFd1zSDKValueOf;
        AFc1iSDK aFc1iSDKAFLogger = aFc1bSDK.AFLogger();
        aFc1iSDKAFLogger.getClass();
        this.AFLogger = aFc1iSDKAFLogger;
        AFc1eSDK androidIdData = aFc1bSDK.setAndroidIdData();
        androidIdData.getClass();
        this.d = androidIdData;
        this.unregisterClient = new AFh1qSDK(null, null, null, null, null, null, null, null, 255, null);
        this.AFKeystoreWrapper = LazyKt.b(new Function0(this) { // from class: com.appsflyer.internal.n

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AFe1iSDK f22695c;

            {
                this.f22695c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                AFe1iSDK aFe1iSDK = this.f22695c;
                switch (i3) {
                    case 0:
                        return Long.valueOf(AFe1iSDK.registerClient(aFe1iSDK));
                    default:
                        return Boolean.valueOf(AFe1iSDK.d(aFe1iSDK));
                }
            }
        });
        final int i3 = 1;
        this.i = LazyKt.b(new Function0(this) { // from class: com.appsflyer.internal.n

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AFe1iSDK f22695c;

            {
                this.f22695c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                AFe1iSDK aFe1iSDK = this.f22695c;
                switch (i4) {
                    case 0:
                        return Long.valueOf(AFe1iSDK.registerClient(aFe1iSDK));
                    default:
                        return Boolean.valueOf(AFe1iSDK.d(aFe1iSDK));
                }
            }
        });
    }

    private final boolean AFLogger(int p0) {
        String str;
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.ADVERTISING_ID;
        AFLoggerBase.i$default(aFLogger, logTag, "Trying to fetch GAID using Samsung Cloud Dev...", false, 4, null);
        if (e()) {
            CloudDevSdk cloudDevSdk = CloudDevSdk.INSTANCE;
            Context context = this.registerClient.d;
            context.getClass();
            if (cloudDevSdk.isCloudEnvironment(context)) {
                AFa1tSDK aFa1tSDK = new AFa1tSDK(null, null, false, null, 15, null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                try {
                    CloudDevSdk cloudDevSdk2 = CloudDevSdk.INSTANCE;
                    Context context2 = this.registerClient.d;
                    context2.getClass();
                    cloudDevSdk2.request(context2, CollectionsKt.O("gaid"), new AFa1zSDK(aFa1tSDK, countDownLatch));
                    countDownLatch.await(((Number) this.AFKeystoreWrapper.getF71699b()).longValue(), TimeUnit.MILLISECONDS);
                    if (aFa1tSDK.getGaidError().length() > 0) {
                        d(this.unregisterClient, aFa1tSDK.getGaidError().toString());
                    }
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            str = "Fetch GAID using Samsung Cloud Dev interrupted or reached to timeout";
                        } else if (th instanceof ClassNotFoundException) {
                            str = "CloudDevSdk not found";
                        } else {
                            str = "Unexpected exception while fetching GAID using Samsung Cloud Dev " + th.getMessage();
                        }
                        AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, str, th, true, false, false, false, 112, null);
                        StringBuilder gaidError = aFa1tSDK.getGaidError();
                        gaidError.append(th.getClass().getSimpleName());
                        gaidError.append(" |");
                        if (aFa1tSDK.getGaidError().length() > 0) {
                        }
                    } catch (Throwable th2) {
                        if (aFa1tSDK.getGaidError().length() > 0) {
                            d(this.unregisterClient, aFa1tSDK.getGaidError().toString());
                        }
                        throw th2;
                    }
                }
                String advertisingId = aFa1tSDK.getAdvertisingId();
                if (advertisingId == null || advertisingId.length() == 0) {
                    return false;
                }
                AFh1qSDK aFh1qSDK = this.unregisterClient;
                aFh1qSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String = aFa1tSDK.getAdvertisingId();
                Boolean bool = Boolean.FALSE;
                aFh1qSDK.registerClient = bool;
                Boolean bool2 = Boolean.TRUE;
                aFh1qSDK.unregisterClient = bool2;
                aFh1qSDK.AFLogger = bool;
                aFh1qSDK.AFKeystoreWrapper = bool2;
                aFh1qSDK.i = Boolean.valueOf(p0 != 2);
                return true;
            }
        }
        AFLoggerBase.i$default(aFLogger, logTag, "Not running in Samsung Cloud Environment. Try using GMS...", false, 4, null);
        return false;
    }

    private static boolean d(Context p0, AFa1tSDK p1) throws IllegalStateException {
        try {
            AFb1kSDK.AFa1tSDK aFa1tSDKRegisterClient = AFb1kSDK.registerClient(p0);
            p1.setAdvertisingId(aFa1tSDKRegisterClient.d);
            p1.setLimitAdTrackingEnabled(Boolean.valueOf(aFa1tSDKRegisterClient.AFLogger));
            String advertisingId = p1.getAdvertisingId();
            if (advertisingId != null && advertisingId.length() != 0) {
                return true;
            }
            p1.getGaidError().append("emptyOrNull (bypass) |");
            return true;
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.ADVERTISING_ID;
            AFLoggerBase.e$default(aFLogger, logTag, tr.g("Failed to fetch GAID: ", th.getMessage()), th, true, false, false, false, 64, null);
            StringBuilder gaidError = p1.getGaidError();
            gaidError.append(th.getClass().getSimpleName());
            gaidError.append(" |");
            String localizedMessage = th.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = th.toString();
            }
            AFLoggerBase.i$default(aFLogger, logTag, localizedMessage, false, 4, null);
            return false;
        }
    }

    private static boolean e() {
        try {
            Class.forName("com.samsung.android.game.cloudgame.dev.sdk.CloudDevSdk");
            return true;
        } catch (Throwable th) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, th instanceof ClassNotFoundException ? "CloudDevSdk not found" : tr.g("Unexpected exception while checking if running in cloud environment: ", th.getMessage()), th, true, false, false, false, 112, null);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:42:0x0129 A[LOOP:0: B:7:0x001f->B:42:0x0129, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x012d A[EDGE_INSN: B:50:0x012d->B:43:0x012d BREAK  A[LOOP:0: B:7:0x001f->B:42:0x0129], SYNTHETIC] */
    @Override // com.appsflyer.internal.AFe1ySDK
    public final AFd1cSDK registerClient() {
        boolean z;
        if (this.d.setAndroidIdData) {
            AFLoggerBase.v$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, "QUEUE: Advertising ID collection is disabled. Skipping fetching... ", false, 4, null);
            return AFd1cSDK.FAILURE;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = 2;
        boolean z2 = false;
        while (i2 > 0) {
            if (((Boolean) this.i.getF71699b()).booleanValue() && AFLogger(i2)) {
                AFLoggerBase.v$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, "GAID fetched using Samsung Cloud dev SDK", false, 4, null);
            } else {
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.ADVERTISING_ID;
                AFLoggerBase.i$default(aFLogger, logTag, "Trying to fetch GAID...", false, 4, null);
                AFa1tSDK aFa1tSDK = new AFa1tSDK(null, null, false, null, 15, null);
                Context context = this.registerClient.d;
                context.getClass();
                int iD = d(context);
                Context context2 = this.registerClient.d;
                context2.getClass();
                if (!registerClient(context2, aFa1tSDK)) {
                    String strAFLogger = this.AFLogger.AFLogger("AF_ENABLE_GP_SERVICE_FALLBACK");
                    if (strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : true) {
                        Context context3 = this.registerClient.d;
                        context3.getClass();
                        if (d(context3, aFa1tSDK)) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    String string = aFa1tSDK.getGaidError().toString();
                    if (!StringsKt.w(string)) {
                        string = iD + ": " + StringsKt.a0(string).toString();
                    }
                    d(this.unregisterClient, string);
                    if (!z) {
                        AFLoggerBase.v$default(aFLogger, logTag, "Failed to fetch GAID", false, 4, null);
                        z2 = false;
                    }
                    if (!z2) {
                        break;
                    }
                    i2--;
                }
                AFh1qSDK aFh1qSDK = this.unregisterClient;
                aFh1qSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String = aFa1tSDK.getAdvertisingId();
                aFh1qSDK.registerClient = aFa1tSDK.isLimitAdTrackingEnabled();
                Boolean boolIsLimitAdTrackingEnabled = aFa1tSDK.isLimitAdTrackingEnabled();
                aFh1qSDK.unregisterClient = boolIsLimitAdTrackingEnabled != null ? Boolean.valueOf(!boolIsLimitAdTrackingEnabled.booleanValue()) : null;
                aFh1qSDK.AFLogger = Boolean.valueOf(aFa1tSDK.getAdvertisingIdWithGps());
                aFh1qSDK.AFKeystoreWrapper = Boolean.FALSE;
                aFh1qSDK.i = Boolean.valueOf(i2 != 2);
                AFLoggerBase.v$default(aFLogger, logTag, "GAID fetched using GMS", false, 4, null);
            }
            z2 = true;
            if (!z2) {
                break;
                break;
            }
            i2--;
        }
        this.d.updateServerUninstallToken = this.unregisterClient;
        Boolean boolValueOf = Boolean.valueOf(z2);
        Boolean bool = Boolean.FALSE;
        AFd1cSDK aFd1cSDK = CollectionsKt.P(boolValueOf, bool, bool).contains(Boolean.TRUE) ? AFd1cSDK.SUCCESS : AFd1cSDK.FAILURE;
        AFc1eSDK aFc1eSDK = this.d;
        AFd1nSDK aFd1nSDK = new AFd1nSDK(System.currentTimeMillis() - jCurrentTimeMillis);
        AFLoggerBase.v$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, o60.i(aFd1nSDK.registerClient, "QUEUE: FetchAdvertisingIdTask: took ", NBSSpanMetricUnit.Millisecond), false, 4, null);
        aFc1eSDK.registerClient(aFd1nSDK);
        return aFd1cSDK;
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0010\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\f\b\u0002\u0010\t\u001a\u00060\u0007j\u0002`\b¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0012\u001a\u00060\u0007j\u0002`\bHÇ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J@\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\f\b\u0002\u0010\t\u001a\u00060\u0007j\u0002`\bHÇ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u001c\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010 R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010!\u001a\u0004\b\u0005\u0010\u000f\"\u0004\b\"\u0010#R\"\u0010\u0006\u001a\u00020\u00048\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010$\u001a\u0004\b%\u0010\u0011\"\u0004\b&\u0010'R\u001e\u0010\t\u001a\u00060\u0007j\u0002`\b8\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010(\u001a\u0004\b)\u0010\u0013"}, d2 = {"Lcom/appsflyer/internal/AFe1iSDK$AFa1tSDK;", "", "", "advertisingId", "", "isLimitAdTrackingEnabled", "advertisingIdWithGps", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "gaidError", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Boolean;", "component3", "()Z", "component4", "()Ljava/lang/StringBuilder;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;)Lcom/appsflyer/internal/AFe1iSDK$AFa1tSDK;", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Ljava/lang/String;", "getAdvertisingId", "setAdvertisingId", "(Ljava/lang/String;)V", "Ljava/lang/Boolean;", "setLimitAdTrackingEnabled", "(Ljava/lang/Boolean;)V", "Z", "getAdvertisingIdWithGps", "setAdvertisingIdWithGps", "(Z)V", "Ljava/lang/StringBuilder;", "getGaidError"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class AFa1tSDK {
        private String advertisingId;
        private boolean advertisingIdWithGps;
        private final StringBuilder gaidError;
        private Boolean isLimitAdTrackingEnabled;

        public /* synthetic */ AFa1tSDK(String str, Boolean bool, boolean z, StringBuilder sb, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : bool, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? new StringBuilder() : sb);
        }

        public static /* synthetic */ AFa1tSDK copy$default(AFa1tSDK aFa1tSDK, String str, Boolean bool, boolean z, StringBuilder sb, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = aFa1tSDK.advertisingId;
            }
            if ((i2 & 2) != 0) {
                bool = aFa1tSDK.isLimitAdTrackingEnabled;
            }
            if ((i2 & 4) != 0) {
                z = aFa1tSDK.advertisingIdWithGps;
            }
            if ((i2 & 8) != 0) {
                sb = aFa1tSDK.gaidError;
            }
            return aFa1tSDK.copy(str, bool, z, sb);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Boolean getIsLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getAdvertisingIdWithGps() {
            return this.advertisingIdWithGps;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final StringBuilder getGaidError() {
            return this.gaidError;
        }

        public final AFa1tSDK copy(String advertisingId, Boolean isLimitAdTrackingEnabled, boolean advertisingIdWithGps, StringBuilder gaidError) {
            gaidError.getClass();
            return new AFa1tSDK(advertisingId, isLimitAdTrackingEnabled, advertisingIdWithGps, gaidError);
        }

        public final boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AFa1tSDK)) {
                return false;
            }
            AFa1tSDK aFa1tSDK = (AFa1tSDK) other;
            return Intrinsics.c(this.advertisingId, aFa1tSDK.advertisingId) && Intrinsics.c(this.isLimitAdTrackingEnabled, aFa1tSDK.isLimitAdTrackingEnabled) && this.advertisingIdWithGps == aFa1tSDK.advertisingIdWithGps && Intrinsics.c(this.gaidError, aFa1tSDK.gaidError);
        }

        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        public final boolean getAdvertisingIdWithGps() {
            return this.advertisingIdWithGps;
        }

        public final StringBuilder getGaidError() {
            return this.gaidError;
        }

        public final int hashCode() {
            String str = this.advertisingId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Boolean bool = this.isLimitAdTrackingEnabled;
            return this.gaidError.hashCode() + o60.b((iHashCode + (bool != null ? bool.hashCode() : 0)) * 31, 31, this.advertisingIdWithGps);
        }

        public final Boolean isLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        public final void setAdvertisingId(String str) {
            this.advertisingId = str;
        }

        public final void setAdvertisingIdWithGps(boolean z) {
            this.advertisingIdWithGps = z;
        }

        public final void setLimitAdTrackingEnabled(Boolean bool) {
            this.isLimitAdTrackingEnabled = bool;
        }

        public final String toString() {
            return "FetchGaidData(advertisingId=" + this.advertisingId + ", isLimitAdTrackingEnabled=" + this.isLimitAdTrackingEnabled + ", advertisingIdWithGps=" + this.advertisingIdWithGps + ", gaidError=" + ((Object) this.gaidError) + ")";
        }

        public AFa1tSDK(String str, Boolean bool, boolean z, StringBuilder sb) {
            sb.getClass();
            this.advertisingId = str;
            this.isLimitAdTrackingEnabled = bool;
            this.advertisingIdWithGps = z;
            this.gaidError = sb;
        }

        public AFa1tSDK() {
            this(null, null, false, null, 15, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(AFe1iSDK aFe1iSDK) {
        return Boolean.parseBoolean(aFe1iSDK.AFLogger.AFLogger("com.appsflyer.enable_instant_plays"));
    }

    private static int d(Context p0) {
        try {
            return GoogleApiAvailability.f28961e.b(p0, GoogleApiAvailabilityLight.f28963a);
        } catch (Throwable th) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, "isGooglePlayServicesAvailable error", th, false, false, false, false, 96, null);
            return -1;
        }
    }

    private static void d(AFh1qSDK aFh1qSDK, String str) {
        if (str == null) {
            return;
        }
        String str2 = aFh1qSDK.v;
        if (str2 != null) {
            str = tr.h(str2, " | ", str);
        }
        aFh1qSDK.v = str;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final /* synthetic */ long d() {
        return ((Number) this.AFKeystoreWrapper.getF71699b()).longValue();
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long registerClient(AFe1iSDK aFe1iSDK) {
        Long lZ;
        String strAFLogger = aFe1iSDK.AFLogger.AFLogger("com.appsflyer.fetch_ids.timeout");
        if (strAFLogger == null || (lZ = StringsKt.Z(strAFLogger)) == null) {
            return 1000L;
        }
        return lZ.longValue();
    }

    private final boolean registerClient(Context p0, AFa1tSDK p1) throws IllegalStateException {
        try {
            AdvertisingIdClient.Info infoA = AdvertisingIdClient.a(p0);
            p1.setAdvertisingId(infoA.f28679a);
            p1.setLimitAdTrackingEnabled(Boolean.valueOf(infoA.f28680b));
            p1.setAdvertisingIdWithGps(true);
            String advertisingId = p1.getAdvertisingId();
            if (advertisingId == null || advertisingId.length() == 0) {
                p1.getGaidError().append("emptyOrNull |");
            }
            return true;
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.ADVERTISING_ID;
            AFLoggerBase.e$default(aFLogger, logTag, tr.g("Google Play Services is missing ", th.getMessage()), th, false, false, false, false, 88, null);
            StringBuilder gaidError = p1.getGaidError();
            gaidError.append(th.getClass().getSimpleName());
            gaidError.append(" |");
            AFLoggerBase.i$default(aFLogger, logTag, "WARNING: Google Play Services is missing.", false, 4, null);
            return false;
        }
    }
}
