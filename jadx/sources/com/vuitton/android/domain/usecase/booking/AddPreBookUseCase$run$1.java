package com.vuitton.android.domain.usecase.booking;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.booking.AddPreBookUseCase", f = "AddPreBookUseCase.kt", l = {9}, m = "run-gIAlu-s", v = 2)
final class AddPreBookUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddPreBookUseCase f49463c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddPreBookUseCase$run$1(AddPreBookUseCase addPreBookUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49463c = addPreBookUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49462b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49463c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
