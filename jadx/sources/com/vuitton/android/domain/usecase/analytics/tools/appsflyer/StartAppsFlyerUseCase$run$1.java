package com.vuitton.android.domain.usecase.analytics.tools.appsflyer;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StartAppsFlyerUseCase", f = "StartAppsFlyerUseCase.kt", l = {22}, m = "run", v = 2)
final class StartAppsFlyerUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StartAppsFlyerUseCase f49227c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartAppsFlyerUseCase$run$1(StartAppsFlyerUseCase startAppsFlyerUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49227c = startAppsFlyerUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49226b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49227c.a(this);
    }
}
