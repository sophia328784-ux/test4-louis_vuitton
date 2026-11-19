package com.vuitton.android.domain.usecase.applink;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.applink.UpdateLocaleUseCase", f = "UpdateLocaleUseCase.kt", l = {18, 20}, m = "run-7UcRSlk", v = 2)
final class UpdateLocaleUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UpdateLocaleUseCase f49276c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateLocaleUseCase$run$1(UpdateLocaleUseCase updateLocaleUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49276c = updateLocaleUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49275b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49276c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
