package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.RecommendedSourceRepository;
import com.vuitton.foundation.logger.Logger;
import dagger.Lazy;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB)\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;", "Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RecommendedSourceRepositoryImpl implements RecommendedSourceRepository {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f47924e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f47925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f47926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f47927c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$1", f = "RecommendedSourceRepositoryImpl.kt", l = {32, 33}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f47928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f47929c;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return RecommendedSourceRepositoryImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0049  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            MutableStateFlow mutableStateFlow;
            EmptyList emptyList;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f47929c;
            RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl = RecommendedSourceRepositoryImpl.this;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f47929c = 1;
                if (RecommendedSourceRepositoryImpl.c(recommendedSourceRepositoryImpl, this) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                ResultKt.b(obj);
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow = (MutableStateFlow) this.f47928b;
                ResultKt.b(obj);
                obj2 = ((Result) obj).f71708b;
            }
            emptyList = EmptyList.f71768b;
            Result.Companion companion = Result.INSTANCE;
            if (obj2 instanceof Result.Failure) {
                obj2 = emptyList;
            }
            mutableStateFlow.setValue(obj2);
            return Unit.f71739a;
            MutableStateFlow mutableStateFlow2 = recommendedSourceRepositoryImpl.d;
            this.f47928b = mutableStateFlow2;
            this.f47929c = 2;
            Object objD = recommendedSourceRepositoryImpl.d(this);
            if (objD != coroutineSingletons) {
                obj2 = objD;
                mutableStateFlow = mutableStateFlow2;
                emptyList = EmptyList.f71768b;
                Result.Companion companion2 = Result.INSTANCE;
                if (obj2 instanceof Result.Failure) {
                    obj2 = emptyList;
                }
                mutableStateFlow.setValue(obj2);
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "RECOMMENDED_SOURCE", "", "REMEMBRANCE_DELAY_IN_DAYS", "J", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public RecommendedSourceRepositoryImpl(Lazy<SharedPreferences> lazy, Logger logger, Json json) {
        lazy.getClass();
        logger.getClass();
        json.getClass();
        this.f47925a = lazy;
        this.f47926b = logger;
        this.f47927c = json;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        ContextScope contextScopeA = CoroutineScopeKt.a(DefaultIoScheduler.f75161b);
        this.d = StateFlowKt.a(EmptyList.f71768b);
        BuildersKt.c(contextScopeA, null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
    
        if (r9.b(r10, r0) == r1) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1 r0 = (com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1 r0 = new com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.f47930b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r9 = r10.f71708b
            goto L91
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r3
        L35:
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.f71708b
            goto L49
        L3d:
            kotlin.ResultKt.b(r10)
            r0.d = r5
            java.lang.Object r10 = r9.d(r0)
            if (r10 != r1) goto L49
            goto L90
        L49:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r10 instanceof kotlin.Result.Failure
            if (r2 == 0) goto L50
            goto L51
        L50:
            r3 = r10
        L51:
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L93
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            java.util.Iterator r2 = r3.iterator()
        L60:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L88
            java.lang.Object r3 = r2.next()
            r6 = r3
            com.vuitton.foundation.model.domain.model.product.LastViewedProduct r6 = (com.vuitton.foundation.model.domain.model.product.LastViewedProduct) r6
            java.time.LocalDateTime r6 = r6.f67898c
            if (r6 == 0) goto L84
            r7 = 30
            java.time.LocalDateTime r6 = r6.plusDays(r7)
            if (r6 == 0) goto L84
            java.time.LocalDateTime r7 = java.time.LocalDateTime.now()
            boolean r6 = r6.isBefore(r7)
            if (r6 != r5) goto L84
            goto L60
        L84:
            r10.add(r3)
            goto L60
        L88:
            r0.d = r4
            java.lang.Object r9 = r9.b(r10, r0)
            if (r9 != r1) goto L91
        L90:
            return r1
        L91:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
        L93:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl.c(com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.domain.repository.RecommendedSourceRepository
    public final StateFlow a() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.RecommendedSourceRepository
    public final Object b(List list, ContinuationImpl continuationImpl) {
        RecommendedSourceRepositoryImpl$setRecommendedSource$1 recommendedSourceRepositoryImpl$setRecommendedSource$1;
        if (continuationImpl instanceof RecommendedSourceRepositoryImpl$setRecommendedSource$1) {
            recommendedSourceRepositoryImpl$setRecommendedSource$1 = (RecommendedSourceRepositoryImpl$setRecommendedSource$1) continuationImpl;
            int i2 = recommendedSourceRepositoryImpl$setRecommendedSource$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                recommendedSourceRepositoryImpl$setRecommendedSource$1.d = i2 - Integer.MIN_VALUE;
            } else {
                recommendedSourceRepositoryImpl$setRecommendedSource$1 = new RecommendedSourceRepositoryImpl$setRecommendedSource$1(this, continuationImpl);
            }
        } else {
            recommendedSourceRepositoryImpl$setRecommendedSource$1 = new RecommendedSourceRepositoryImpl$setRecommendedSource$1(this, continuationImpl);
        }
        Object objF = recommendedSourceRepositoryImpl$setRecommendedSource$1.f47935b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = recommendedSourceRepositoryImpl$setRecommendedSource$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            RecommendedSourceRepositoryImpl$setRecommendedSource$2 recommendedSourceRepositoryImpl$setRecommendedSource$2 = new RecommendedSourceRepositoryImpl$setRecommendedSource$2(list, this, null);
            recommendedSourceRepositoryImpl$setRecommendedSource$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, recommendedSourceRepositoryImpl$setRecommendedSource$2, recommendedSourceRepositoryImpl$setRecommendedSource$1);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ContinuationImpl continuationImpl) {
        RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1 recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;
        if (continuationImpl instanceof RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1) {
            recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1 = (RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1) continuationImpl;
            int i2 = recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1.d = i2 - Integer.MIN_VALUE;
            } else {
                recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1 = new RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1(this, continuationImpl);
            }
        } else {
            recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1 = new RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1(this, continuationImpl);
        }
        Object objF = recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1.f47932b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2 recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2 = new RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2(this, null);
            recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2, recommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1);
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
