package com.vuitton.android.data.repository;

import android.app.Application;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.BotProtectionRepository;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;", "Lcom/vuitton/android/domain/repository/BotProtectionRepository;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BotProtectionRepositoryImpl implements BotProtectionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f47420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f47421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f47422c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public BotProtectionRepositoryImpl(Application application, EnvironmentProvider environmentProvider, Logger logger) {
        application.getClass();
        environmentProvider.getClass();
        logger.getClass();
        this.f47420a = application;
        this.f47421b = environmentProvider;
        this.f47422c = logger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BotProtectionRepository
    public final Object a(ContinuationImpl continuationImpl) {
        BotProtectionRepositoryImpl$initialize$1 botProtectionRepositoryImpl$initialize$1;
        if (continuationImpl instanceof BotProtectionRepositoryImpl$initialize$1) {
            botProtectionRepositoryImpl$initialize$1 = (BotProtectionRepositoryImpl$initialize$1) continuationImpl;
            int i2 = botProtectionRepositoryImpl$initialize$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                botProtectionRepositoryImpl$initialize$1.d = i2 - Integer.MIN_VALUE;
            } else {
                botProtectionRepositoryImpl$initialize$1 = new BotProtectionRepositoryImpl$initialize$1(this, continuationImpl);
            }
        } else {
            botProtectionRepositoryImpl$initialize$1 = new BotProtectionRepositoryImpl$initialize$1(this, continuationImpl);
        }
        Object objF = botProtectionRepositoryImpl$initialize$1.f47423b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = botProtectionRepositoryImpl$initialize$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
            BotProtectionRepositoryImpl$initialize$2 botProtectionRepositoryImpl$initialize$2 = new BotProtectionRepositoryImpl$initialize$2(this, null);
            botProtectionRepositoryImpl$initialize$1.d = 1;
            objF = BuildersKt.f(mainCoroutineDispatcher, botProtectionRepositoryImpl$initialize$2, botProtectionRepositoryImpl$initialize$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
