package com.vuitton.android.data.repository;

import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {484, 486, 490}, m = "onLogout-IoAF18A", v = 2)
final class TwistAuthRepositoryImpl$onLogout$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48124c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$onLogout$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48124c = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48123b = obj;
        this.d |= Integer.MIN_VALUE;
        Set set = TwistAuthRepositoryImpl.f48080j;
        Object objS = this.f48124c.s(this);
        return objS == CoroutineSingletons.COROUTINE_SUSPENDED ? objS : new Result(objS);
    }
}
