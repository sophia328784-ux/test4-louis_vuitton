package com.vuitton.android.domain.usecase.analytics.tools;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.analytics.tools.InitializeNotificationsManagerUseCase", f = "InitializeNotificationsManagerUseCase.kt", l = {16}, m = "run", v = 2)
final class InitializeNotificationsManagerUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InitializeNotificationsManagerUseCase f49207c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeNotificationsManagerUseCase$run$1(InitializeNotificationsManagerUseCase initializeNotificationsManagerUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49207c = initializeNotificationsManagerUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49206b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49207c.a(this);
    }
}
