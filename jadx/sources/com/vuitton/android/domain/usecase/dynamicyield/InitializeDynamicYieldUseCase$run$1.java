package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.InitializeDynamicYieldUseCase", f = "InitializeDynamicYieldUseCase.kt", l = {36, EACTags.CURRENCY_CODE, EACTags.CURRENCY_CODE, EACTags.CARDHOLDER_NATIONALITY}, m = "run-IoAF18A", v = 2)
final class InitializeDynamicYieldUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f49943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f49944c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49946f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f49947h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f49948i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ InitializeDynamicYieldUseCase f49949j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f49950k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeDynamicYieldUseCase$run$1(InitializeDynamicYieldUseCase initializeDynamicYieldUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49949j = initializeDynamicYieldUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49948i = obj;
        this.f49950k |= Integer.MIN_VALUE;
        Object objA = this.f49949j.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
