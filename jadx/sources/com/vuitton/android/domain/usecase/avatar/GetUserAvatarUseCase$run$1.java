package com.vuitton.android.domain.usecase.avatar;

import com.vuitton.foundation.model.domain.model.avatar.AvatarResponse;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase", f = "GetUserAvatarUseCase.kt", l = {18, 18, 21, 23}, m = "run-IoAF18A", v = 2)
final class GetUserAvatarUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AvatarResponse f49447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f49448c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f49449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GetUserAvatarUseCase f49450f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetUserAvatarUseCase$run$1(GetUserAvatarUseCase getUserAvatarUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49450f = getUserAvatarUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49449e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f49450f.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
