package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AvatarRepositoryImpl", f = "AvatarRepositoryImpl.kt", l = {64}, m = "getSelectedAvatar-gIAlu-s", v = 2)
final class AvatarRepositoryImpl$getSelectedAvatar$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AvatarRepositoryImpl f47354c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarRepositoryImpl$getSelectedAvatar$1(AvatarRepositoryImpl avatarRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47354c = avatarRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47353b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47354c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
