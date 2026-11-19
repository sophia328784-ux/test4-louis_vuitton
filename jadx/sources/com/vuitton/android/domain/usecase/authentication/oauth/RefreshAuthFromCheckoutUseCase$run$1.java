package com.vuitton.android.domain.usecase.authentication.oauth;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase", f = "RefreshAuthFromCheckoutUseCase.kt", l = {32, 37, 41, 46, EACTags.PIN_USAGE_POLICY}, m = "run-gIAlu-s", v = 2)
final class RefreshAuthFromCheckoutUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f49401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RefreshAuthFromCheckoutUseCase f49402c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49404f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RefreshAuthFromCheckoutUseCase f49405h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f49406i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefreshAuthFromCheckoutUseCase$run$1(RefreshAuthFromCheckoutUseCase refreshAuthFromCheckoutUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49405h = refreshAuthFromCheckoutUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f49406i |= Integer.MIN_VALUE;
        Object objA = this.f49405h.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
