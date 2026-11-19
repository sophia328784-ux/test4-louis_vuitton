package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.authentication.social.SocialLoginBody;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {452, 456, 467}, m = "socialLogin-BWLJW6A", v = 2)
final class TwistAuthRepositoryImpl$socialLogin$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f48147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f48148c;
    public SocialLoginBody d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48150f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f48151h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48152i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f48153j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$socialLogin$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48152i = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48151h = obj;
        this.f48153j |= Integer.MIN_VALUE;
        Object objK = this.f48152i.k(null, null, null, this);
        return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : new Result(objK);
    }
}
