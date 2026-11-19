package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {EACTags.HISTORICAL_BYTES, 93}, m = "authenticateGuest-IoAF18A", v = 2)
final class TwistAuthRepositoryImpl$authenticateGuest$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48091c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AuthToken.Twist.Guest f48092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f48093f;
    public final /* synthetic */ TwistAuthRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f48094h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$authenticateGuest$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48093f = obj;
        this.f48094h |= Integer.MIN_VALUE;
        Object objD = this.g.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
