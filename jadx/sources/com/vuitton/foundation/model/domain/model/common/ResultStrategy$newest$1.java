package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.foundation.model.domain.model.common.ResultStrategy", f = "ResultStrategy.kt", l = {EACTags.DISPLAY_IMAGE, EACTags.MESSAGE_REFERENCE}, m = "newest-IoAF18A$suspendImpl", v = 2)
final class ResultStrategy$newest$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResultStrategy f67129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f67130c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ResultStrategy f67131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f67132f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultStrategy$newest$1(ResultStrategy resultStrategy, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f67131e = resultStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f67132f |= Integer.MIN_VALUE;
        Object objE = ResultStrategy.e(this.f67131e, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
