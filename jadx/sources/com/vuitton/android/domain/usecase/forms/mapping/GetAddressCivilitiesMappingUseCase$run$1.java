package com.vuitton.android.domain.usecase.forms.mapping;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase", f = "GetAddressCivilitiesMappingUseCase.kt", l = {21}, m = "run-G3ZMdxE", v = 2)
final class GetAddressCivilitiesMappingUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetAddressCivilitiesMappingUseCase f50084c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAddressCivilitiesMappingUseCase$run$1(GetAddressCivilitiesMappingUseCase getAddressCivilitiesMappingUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50084c = getAddressCivilitiesMappingUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50083b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50084c.a(null, false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
