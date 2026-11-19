package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.BestFormDispatchIdUseCase", f = "BestFormDispatchIdUseCase.kt", l = {60}, m = "run-0E7RQCE", v = 2)
final class BestFormDispatchIdUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50032c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f50033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BestFormDispatchIdUseCase f50034f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BestFormDispatchIdUseCase$run$1(BestFormDispatchIdUseCase bestFormDispatchIdUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50034f = bestFormDispatchIdUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50033e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objB = this.f50034f.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
