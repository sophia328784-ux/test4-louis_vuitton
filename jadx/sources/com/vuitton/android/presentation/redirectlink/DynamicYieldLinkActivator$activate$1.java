package com.vuitton.android.presentation.redirectlink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator", f = "DynamicYieldLinkActivator.kt", l = {22, 24}, m = "activate", v = 2)
final class DynamicYieldLinkActivator$activate$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldLinkActivator f51958c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldLinkActivator$activate$1(DynamicYieldLinkActivator dynamicYieldLinkActivator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51958c = dynamicYieldLinkActivator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51957b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f51958c.a(this);
    }
}
