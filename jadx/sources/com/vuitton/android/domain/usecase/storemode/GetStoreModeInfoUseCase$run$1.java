package com.vuitton.android.domain.usecase.storemode;

import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.storemode.GetStoreModeInfoUseCase", f = "GetStoreModeInfoUseCase.kt", l = {24, 24, 28}, m = "run-0E7RQCE", v = 2)
final class GetStoreModeInfoUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Profile f50399c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GetStoreModeInfoUseCase f50400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f50401f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetStoreModeInfoUseCase$run$1(GetStoreModeInfoUseCase getStoreModeInfoUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50400e = getStoreModeInfoUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f50401f |= Integer.MIN_VALUE;
        Object objA = this.f50400e.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
