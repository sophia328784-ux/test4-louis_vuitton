package com.vuitton.android.domain.usecase.account.profile;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.profile.UpdatePasswordUseCase", f = "UpdatePasswordUseCase.kt", l = {13}, m = "run-gIAlu-s", v = 2)
final class UpdatePasswordUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UpdatePasswordUseCase f49137c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatePasswordUseCase$run$1(UpdatePasswordUseCase updatePasswordUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49137c = updatePasswordUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49136b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49137c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
