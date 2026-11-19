package com.vuitton.android.data.datasource.auth;

import com.vuitton.foundation.model.domain.model.authentication.SotToken;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl", f = "TwistTokenDataSourceImpl.kt", l = {122}, m = "getSotToken-mJUy9pU", v = 2)
final class TwistTokenDataSourceImpl$getSotToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistTokenDataSourceImpl f43846c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistTokenDataSourceImpl$getSotToken$1(TwistTokenDataSourceImpl twistTokenDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43846c = twistTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43845b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objJ = this.f43846c.j(this);
        return objJ == CoroutineSingletons.COROUTINE_SUSPENDED ? objJ : new SotToken((String) objJ);
    }
}
