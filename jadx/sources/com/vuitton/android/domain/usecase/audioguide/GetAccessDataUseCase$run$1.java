package com.vuitton.android.domain.usecase.audioguide;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase", f = "GetAccessDataUseCase.kt", l = {12, 16}, m = "run-IoAF18A", v = 2)
final class GetAccessDataUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f49305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49306c;
    public final /* synthetic */ GetAccessDataUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49307e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAccessDataUseCase$run$1(GetAccessDataUseCase getAccessDataUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getAccessDataUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49306c = obj;
        this.f49307e |= Integer.MIN_VALUE;
        Object objA = this.d.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
