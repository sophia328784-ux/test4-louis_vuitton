package com.vuitton.android.domain.usecase.config;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase", f = "RequireCachedConnectedObjectsConfigUseCase.kt", l = {16}, m = "run", v = 2)
final class RequireCachedConnectedObjectsConfigUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RequireCachedConnectedObjectsConfigUseCase f49716c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequireCachedConnectedObjectsConfigUseCase$run$1(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49716c = requireCachedConnectedObjectsConfigUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49715b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49716c.a(this);
    }
}
