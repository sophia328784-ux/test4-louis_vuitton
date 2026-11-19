package com.vuitton.android.domain.usecase.audioguide;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.audioguide.SaveAccessDataUseCase", f = "SaveAccessDataUseCase.kt", l = {8}, m = "run-gIAlu-s", v = 2)
final class SaveAccessDataUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SaveAccessDataUseCase f49317c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveAccessDataUseCase$run$1(SaveAccessDataUseCase saveAccessDataUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49317c = saveAccessDataUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49316b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49317c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
