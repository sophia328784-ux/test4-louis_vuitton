package com.vuitton.android.domain.usecase.pdp.customization;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.customization.SaveCustomizationUseCase", f = "SaveCustomizationUseCase.kt", l = {12}, m = "run-IiOnze8", v = 2)
final class SaveCustomizationUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SaveCustomizationUseCase f50195c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveCustomizationUseCase$run$1(SaveCustomizationUseCase saveCustomizationUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50195c = saveCustomizationUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50194b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50195c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
