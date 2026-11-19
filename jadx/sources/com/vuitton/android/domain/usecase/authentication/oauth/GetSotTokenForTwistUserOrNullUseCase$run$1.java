package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.foundation.model.domain.model.authentication.SotToken;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.oauth.GetSotTokenForTwistUserOrNullUseCase", f = "GetSotTokenForTwistUserOrNullUseCase.kt", l = {9}, m = "run--e5AF7I", v = 2)
final class GetSotTokenForTwistUserOrNullUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetSotTokenForTwistUserOrNullUseCase f49379c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSotTokenForTwistUserOrNullUseCase$run$1(GetSotTokenForTwistUserOrNullUseCase getSotTokenForTwistUserOrNullUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49379c = getSotTokenForTwistUserOrNullUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49378b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49379c.a(this);
        if (objA == CoroutineSingletons.COROUTINE_SUSPENDED) {
            return objA;
        }
        String str = (String) objA;
        if (str != null) {
            return new SotToken(str);
        }
        return null;
    }
}
