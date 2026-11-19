package com.vuitton.android.domain.usecase.pdp;

import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.GetProductDetailUseCase", f = "GetProductDetailUseCase.kt", l = {37, 39, 32, EACTags.CURRENCY_CODE, EACTags.DATE_OF_BIRTH, EACTags.CARDHOLDER_NATIONALITY}, m = "run-SdvDIM8", v = 2)
final class GetProductDetailUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CustomizationId f50173c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f50174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f50175f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f50176h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f50177i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f50178j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ Object f50179k;
    public final /* synthetic */ GetProductDetailUseCase l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductDetailUseCase$run$1(GetProductDetailUseCase getProductDetailUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.l = getProductDetailUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50179k = obj;
        this.m |= Integer.MIN_VALUE;
        Object objA = this.l.a(null, false, null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
