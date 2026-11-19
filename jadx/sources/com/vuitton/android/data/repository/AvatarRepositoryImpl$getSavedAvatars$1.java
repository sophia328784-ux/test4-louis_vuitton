package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AvatarRepositoryImpl", f = "AvatarRepositoryImpl.kt", l = {46}, m = "getSavedAvatars-IoAF18A", v = 2)
final class AvatarRepositoryImpl$getSavedAvatars$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AvatarRepositoryImpl f47351c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarRepositoryImpl$getSavedAvatars$1(AvatarRepositoryImpl avatarRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47351c = avatarRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47350b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47351c.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
