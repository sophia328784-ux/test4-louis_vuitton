package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "authenticateCodeExchange-gIAlu-s", v = 2)
final class TwistAuthRepositoryImpl$authenticateCodeExchange$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48089c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$authenticateCodeExchange$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48089c = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48088b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objG = this.f48089c.g(null, this);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : new Result(objG);
    }
}
