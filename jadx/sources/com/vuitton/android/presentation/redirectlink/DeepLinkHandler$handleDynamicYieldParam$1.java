package com.vuitton.android.presentation.redirectlink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkHandler", f = "DeepLinkHandler.kt", l = {94}, m = "handleDynamicYieldParam", v = 2)
final class DeepLinkHandler$handleDynamicYieldParam$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkHandler f51937c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkHandler$handleDynamicYieldParam$1(DeepLinkHandler deepLinkHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51937c = deepLinkHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51936b = obj;
        this.d |= Integer.MIN_VALUE;
        String str = DeepLinkHandler.m;
        return this.f51937c.a(null, this);
    }
}
