package com.vuitton.android.data.repository;

import android.content.Context;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.p;
import java.util.Iterator;
import java.util.ListIterator;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000fBK\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "Lcom/vuitton/foundation/logger/Logger;", "lvLogger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/repository/AnalyticsRepository;", "firebaseAnalyticsRepository", "sensorDataAnalyticsRepository", "crashlyticsAnalyticsRepository", "loggerAnalyticsRepository", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsWrapperRepositoryImpl implements AnalyticsWrapperRepository {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f47213i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f47215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsRepository f47216c;
    public final AnalyticsRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsRepository f47217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticsRepository f47218f;
    public final BuildConfigProvider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ListBuilder f47219h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "INITIALIZATION_ERROR_MSG", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AnalyticsWrapperRepositoryImpl(Logger logger, @ApplicationContext Context context, AnalyticsRepository analyticsRepository, AnalyticsRepository analyticsRepository2, AnalyticsRepository analyticsRepository3, AnalyticsRepository analyticsRepository4, BuildConfigProvider buildConfigProvider) {
        logger.getClass();
        context.getClass();
        analyticsRepository.getClass();
        analyticsRepository2.getClass();
        analyticsRepository3.getClass();
        analyticsRepository4.getClass();
        buildConfigProvider.getClass();
        this.f47214a = logger;
        this.f47215b = context;
        this.f47216c = analyticsRepository;
        this.d = analyticsRepository2;
        this.f47217e = analyticsRepository3;
        this.f47218f = analyticsRepository4;
        this.g = buildConfigProvider;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsWrapperRepository
    public final boolean a() {
        return this.f47219h != null;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsWrapperRepository
    public final void b(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        if (!a()) {
            this.g.getClass();
            return;
        }
        ListBuilder listBuilder = this.f47219h;
        if (listBuilder == null) {
            Intrinsics.h("repositories");
            throw null;
        }
        ListIterator listIterator = listBuilder.listIterator(0);
        while (listIterator.hasNext()) {
            ((AnalyticsRepository) listIterator.next()).b(inAppDispatch, hit);
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsWrapperRepository
    public final void c() {
        if (!a()) {
            this.g.getClass();
            return;
        }
        ListBuilder listBuilder = this.f47219h;
        if (listBuilder == null) {
            Intrinsics.h("repositories");
            throw null;
        }
        ListIterator listIterator = listBuilder.listIterator(0);
        while (listIterator.hasNext()) {
            ((AnalyticsRepository) listIterator.next()).c();
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsWrapperRepository
    public final void d(UserProperty.WebViewUserProperty webViewUserProperty) {
        if (!a()) {
            this.g.getClass();
            return;
        }
        ListBuilder listBuilder = this.f47219h;
        if (listBuilder == null) {
            Intrinsics.h("repositories");
            throw null;
        }
        ListIterator listIterator = listBuilder.listIterator(0);
        while (listIterator.hasNext()) {
            ((AnalyticsRepository) listIterator.next()).d(webViewUserProperty);
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsWrapperRepository
    public final void e(InAppDispatch inAppDispatch, AppConfig appConfig, boolean z, boolean z2) {
        inAppDispatch.getClass();
        appConfig.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        if (!InAppDispatchExtKt.c(inAppDispatch)) {
            if (z2) {
                listBuilderV.add(this.f47216c);
            }
            listBuilderV.add(this.f47217e);
        } else if (z) {
            listBuilderV.add(this.d);
        }
        listBuilderV.add(this.f47218f);
        ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
        this.f47219h = listBuilderR;
        if (listBuilderR == null) {
            Intrinsics.h("repositories");
            throw null;
        }
        Iterator<E> it = listBuilderR.iterator();
        while (it.hasNext()) {
            ((AnalyticsRepository) it.next()).a(inAppDispatch);
        }
        InAppDispatch.Id.a(inAppDispatch.f67476a);
        ListBuilder listBuilder = this.f47219h;
        if (listBuilder == null) {
            Intrinsics.h("repositories");
            throw null;
        }
        CollectionsKt.K(listBuilder, null, null, null, new p(23), 31);
        this.f47214a.getClass();
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsWrapperRepository
    public final Object f(ContinuationImpl continuationImpl) {
        Object next;
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(continuationImpl));
        if (a()) {
            ListBuilder listBuilder = this.f47219h;
            if (listBuilder == null) {
                Intrinsics.h("repositories");
                throw null;
            }
            ListIterator listIterator = listBuilder.listIterator(0);
            do {
                if (!listIterator.hasNext()) {
                    next = null;
                    break;
                }
                next = listIterator.next();
            } while (!(((AnalyticsRepository) next) instanceof FirebaseAnalyticsRepositoryImpl));
            if (((AnalyticsRepository) next) != null) {
                FirebaseAnalytics.getInstance(this.f47215b).a().addOnCompleteListener(new OnCompleteListener() { // from class: com.vuitton.android.data.repository.AnalyticsWrapperRepositoryImpl$getAppInstanceId$2$2$1
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        task.getClass();
                        boolean zIsSuccessful = task.isSuccessful();
                        SafeContinuation safeContinuation2 = safeContinuation;
                        if (zIsSuccessful) {
                            Result.Companion companion = Result.INSTANCE;
                            safeContinuation2.resumeWith(task.getResult());
                        } else {
                            Result.Companion companion2 = Result.INSTANCE;
                            safeContinuation2.resumeWith(null);
                        }
                    }
                });
            } else {
                Result.Companion companion = Result.INSTANCE;
                safeContinuation.resumeWith(null);
            }
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            safeContinuation.resumeWith(null);
        }
        Object objA = safeContinuation.a();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }
}
