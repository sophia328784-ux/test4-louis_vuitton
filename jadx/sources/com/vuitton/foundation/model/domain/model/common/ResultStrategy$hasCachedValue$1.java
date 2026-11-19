package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.foundation.model.domain.model.common.ResultStrategy", f = "ResultStrategy.kt", l = {EACTags.SEX}, m = "hasCachedValue$suspendImpl", v = 2)
final class ResultStrategy$hasCachedValue$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f67127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ResultStrategy f67128c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultStrategy$hasCachedValue$1(ResultStrategy resultStrategy, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f67128c = resultStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f67127b = obj;
        this.d |= Integer.MIN_VALUE;
        return ResultStrategy.f(this.f67128c, this);
    }
}
