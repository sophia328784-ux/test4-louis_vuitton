package com.vuitton.android.data.datasource.profile;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource", f = "ProfileLocalDataSource.kt", l = {60}, m = "saveProfile-gIAlu-s", v = 2)
final class ProfileLocalDataSource$saveProfile$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProfileLocalDataSource f44257c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileLocalDataSource$saveProfile$1(ProfileLocalDataSource profileLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44257c = profileLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44256b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f44257c.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
