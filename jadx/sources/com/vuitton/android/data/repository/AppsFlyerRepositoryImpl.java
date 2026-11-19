package com.vuitton.android.data.repository;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.share.deeplink.DeepLinkResult;
import com.google.firebase.messaging.FirebaseMessaging;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AppsFlyerRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.c1;
import defpackage.k8;
import defpackage.s3;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AppsFlyerRepository;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "<init>", "(Landroid/content/Context;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppsFlyerRepositoryImpl implements AppsFlyerRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f47302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f47303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f47304c;
    public final UserPreferencesRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BufferedChannel f47305e;

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47306a;

        static {
            int[] iArr = new int[DeepLinkResult.Status.values().length];
            try {
                iArr[DeepLinkResult.Status.FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeepLinkResult.Status.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeepLinkResult.Status.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f47306a = iArr;
        }
    }

    @Inject
    public AppsFlyerRepositoryImpl(@ApplicationContext Context context, Logger logger, UserSessionService userSessionService, UserPreferencesRepository userPreferencesRepository) {
        context.getClass();
        logger.getClass();
        userSessionService.getClass();
        userPreferencesRepository.getClass();
        this.f47302a = context;
        this.f47303b = logger;
        this.f47304c = userSessionService;
        this.d = userPreferencesRepository;
        this.f47305e = ChannelKt.a(-1, 6, null);
    }

    @Override // com.vuitton.android.domain.repository.AppsFlyerRepository
    public final void a() {
        boolean zIsStopped = AppsFlyerLib.getInstance().isStopped();
        Logger logger = this.f47303b;
        if (zIsStopped) {
            logger.getClass();
        } else {
            AppsFlyerLib.getInstance().stop(true, this.f47302a);
            logger.getClass();
        }
    }

    @Override // com.vuitton.android.domain.repository.AppsFlyerRepository
    public final void b(String str) {
        this.f47303b.getClass();
        AppsFlyerLib.getInstance().setCustomerUserId(str);
    }

    @Override // com.vuitton.android.domain.repository.AppsFlyerRepository
    public final Object c() {
        try {
            Result.Companion companion = Result.INSTANCE;
            FirebaseMessaging.c().e().e(new s3(new c1(this, 11), 2)).c(new k8(this));
            return Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    @Override // com.vuitton.android.domain.repository.AppsFlyerRepository
    public final Flow d() {
        return FlowKt.y(this.f47305e);
    }

    @Override // com.vuitton.android.domain.repository.AppsFlyerRepository
    public final void e() {
        AppsFlyerLib.getInstance().subscribeForDeepLink(new k8(this));
    }

    @Override // com.vuitton.android.domain.repository.AppsFlyerRepository
    public final void f(boolean z, boolean z2) {
        AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
        appsFlyerLib.getClass();
        appsFlyerLib.setDisableAdvertisingIdentifiers(!z2);
        appsFlyerLib.anonymizeUser(!z);
        appsFlyerLib.setCollectAndroidID(false);
        appsFlyerLib.setDisableNetworkData(false);
        if (this.f47304c.b()) {
            b(this.d.b());
        }
        appsFlyerLib.stop(false, this.f47302a);
        appsFlyerLib.addPushNotificationDeepLinkPath("af_push_link");
        appsFlyerLib.registerSessionReadyListener(new s3(appsFlyerLib, 1));
        this.f47303b.getClass();
    }
}
