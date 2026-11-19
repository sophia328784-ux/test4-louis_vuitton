package com.vuitton.android.data.datasource.avatar;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.avatar.AvatarRemoteDataSource", f = "AvatarRemoteDataSource.kt", l = {13}, m = "getAvatars-IoAF18A", v = 2)
final class AvatarRemoteDataSource$getAvatars$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AvatarRemoteDataSource f43863c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarRemoteDataSource$getAvatars$1(AvatarRemoteDataSource avatarRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43863c = avatarRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43862b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43863c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
