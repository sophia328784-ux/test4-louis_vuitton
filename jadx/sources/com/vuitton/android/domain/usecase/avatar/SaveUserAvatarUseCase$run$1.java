package com.vuitton.android.domain.usecase.avatar;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase", f = "SaveUserAvatarUseCase.kt", l = {18, 21}, m = "run-gIAlu-s", v = 2)
final class SaveUserAvatarUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f49456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f49457c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f49459f;
    public final /* synthetic */ SaveUserAvatarUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f49460h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveUserAvatarUseCase$run$1(SaveUserAvatarUseCase saveUserAvatarUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = saveUserAvatarUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49459f = obj;
        this.f49460h |= Integer.MIN_VALUE;
        Object objA = this.g.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
