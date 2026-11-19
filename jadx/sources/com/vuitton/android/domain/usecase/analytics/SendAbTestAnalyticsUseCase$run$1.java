package com.vuitton.android.domain.usecase.analytics;

import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.analytics.SendAbTestAnalyticsUseCase", f = "SendAbTestAnalyticsUseCase.kt", l = {27}, m = "run", v = 2)
final class SendAbTestAnalyticsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InAppDispatch f49187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f49188c;
    public AbTest d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f49190f;
    public final /* synthetic */ SendAbTestAnalyticsUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f49191h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendAbTestAnalyticsUseCase$run$1(SendAbTestAnalyticsUseCase sendAbTestAnalyticsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = sendAbTestAnalyticsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49190f = obj;
        this.f49191h |= Integer.MIN_VALUE;
        return this.g.a(this);
    }
}
