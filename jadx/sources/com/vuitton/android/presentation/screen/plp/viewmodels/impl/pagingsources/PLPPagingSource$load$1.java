package com.vuitton.android.presentation.screen.plp.viewmodels.impl.pagingsources;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.pagingsources.PLPPagingSource", f = "PLPPagingSource.kt", l = {32}, m = "load", v = 2)
final class PLPPagingSource$load$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f63235c;
    public final /* synthetic */ PLPPagingSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f63236e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPPagingSource$load$1(PLPPagingSource pLPPagingSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = pLPPagingSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f63235c = obj;
        this.f63236e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
