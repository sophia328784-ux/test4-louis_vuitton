package com.vuitton.android.domain.usecase.dispatch;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dispatch.SaveUserInAppDispatchUseCase", f = "SaveUserInAppDispatchUseCase.kt", l = {13}, m = "run-gIAlu-s", v = 2)
final class SaveUserInAppDispatchUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InAppDispatch f49915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49916c;
    public final /* synthetic */ SaveUserInAppDispatchUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49917e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveUserInAppDispatchUseCase$run$1(SaveUserInAppDispatchUseCase saveUserInAppDispatchUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = saveUserInAppDispatchUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49916c = obj;
        this.f49917e |= Integer.MIN_VALUE;
        Object objA = this.d.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
