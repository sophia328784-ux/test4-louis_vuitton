package com.vuitton.android.domain.usecase.authentication.oauth;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.oauth.NativeLoginUseCase", f = "NativeLoginUseCase.kt", l = {9}, m = "run-gIAlu-s", v = 2)
final class NativeLoginUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeLoginUseCase f49395c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLoginUseCase$run$1(NativeLoginUseCase nativeLoginUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49395c = nativeLoginUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49394b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49395c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
