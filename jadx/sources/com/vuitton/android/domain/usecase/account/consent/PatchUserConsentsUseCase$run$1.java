package com.vuitton.android.domain.usecase.account.consent;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.consent.PatchUserConsentsUseCase", f = "PatchUserConsentsUseCase.kt", l = {20}, m = "run-0E7RQCE", v = 2)
final class PatchUserConsentsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PatchUserConsentsUseCase f49100c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PatchUserConsentsUseCase$run$1(PatchUserConsentsUseCase patchUserConsentsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49100c = patchUserConsentsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49099b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49100c.a(null, false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
