package com.vuitton.android.domain.usecase.exclusivesales;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.exclusivesales.GetUserExclusiveSalesUseCase", f = "GetUserExclusiveSalesUseCase.kt", l = {13, 14}, m = "run-IoAF18A", v = 2)
final class GetUserExclusiveSalesUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetUserExclusiveSalesUseCase f49999c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetUserExclusiveSalesUseCase$run$1(GetUserExclusiveSalesUseCase getUserExclusiveSalesUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49999c = getUserExclusiveSalesUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49998b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49999c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
