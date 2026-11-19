package com.vuitton.android.domain.usecase.analytics;

import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.analytics.InitAnalyticsUseCase", f = "InitAnalyticsUseCase.kt", l = {26, 27}, m = "run", v = 2)
final class InitAnalyticsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnalyticsWrapperRepository f49179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppDispatch f49180c;
    public AppConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f49181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f49182f;
    public final /* synthetic */ InitAnalyticsUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f49183h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitAnalyticsUseCase$run$1(InitAnalyticsUseCase initAnalyticsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = initAnalyticsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49182f = obj;
        this.f49183h |= Integer.MIN_VALUE;
        return this.g.a(this);
    }
}
