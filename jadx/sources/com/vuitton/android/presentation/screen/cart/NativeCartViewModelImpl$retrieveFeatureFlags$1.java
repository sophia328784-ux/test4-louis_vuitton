package com.vuitton.android.presentation.screen.cart;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", f = "NativeCartViewModelImpl.kt", l = {274}, m = "retrieveFeatureFlags", v = 2)
final class NativeCartViewModelImpl$retrieveFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f54936c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f54937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54938f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$retrieveFeatureFlags$1(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54938f = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54937e = obj;
        this.g |= Integer.MIN_VALUE;
        return NativeCartViewModelImpl.Ac(this.f54938f, this);
    }
}
