package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeLogin;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {128, 132, 139}, m = "nativeLogin-0E7RQCE", v = 2)
final class TwistAuthRepositoryImpl$nativeLogin$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NativeLogin f48116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48117c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f48119f;
    public final /* synthetic */ TwistAuthRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f48120h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$nativeLogin$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48119f = obj;
        this.f48120h |= Integer.MIN_VALUE;
        Object objE = this.g.e(null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
