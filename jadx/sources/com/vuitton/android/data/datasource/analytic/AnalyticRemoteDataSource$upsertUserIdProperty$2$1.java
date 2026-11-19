package com.vuitton.android.data.datasource.analytic;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource$upsertUserIdProperty$2$1", f = "AnalyticRemoteDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AnalyticRemoteDataSource$upsertUserIdProperty$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnalyticRemoteDataSource f43761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f43762c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticRemoteDataSource$upsertUserIdProperty$2$1(AnalyticRemoteDataSource analyticRemoteDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43761b = analyticRemoteDataSource;
        this.f43762c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AnalyticRemoteDataSource$upsertUserIdProperty$2$1(this.f43761b, this.f43762c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AnalyticRemoteDataSource$upsertUserIdProperty$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AnalyticRemoteDataSource analyticRemoteDataSource = this.f43761b;
        analyticRemoteDataSource.f43757a.getClass();
        FirebaseAnalytics firebaseAnalytics = analyticRemoteDataSource.f43758b;
        String str = this.f43762c;
        firebaseAnalytics.f34361a.p(null, "sf_id", StringKtExtKt.h(StringKtExtKt.k(36, str)), false);
        firebaseAnalytics.f34361a.t(str);
        return Unit.f71739a;
    }
}
