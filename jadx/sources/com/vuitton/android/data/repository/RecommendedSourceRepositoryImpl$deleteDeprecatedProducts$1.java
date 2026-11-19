package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl", f = "RecommendedSourceRepositoryImpl.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE, 70}, m = "deleteDeprecatedProducts", v = 2)
final class RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecommendedSourceRepositoryImpl f47931c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1(RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47931c = recommendedSourceRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47930b = obj;
        this.d |= Integer.MIN_VALUE;
        return RecommendedSourceRepositoryImpl.c(this.f47931c, this);
    }
}
