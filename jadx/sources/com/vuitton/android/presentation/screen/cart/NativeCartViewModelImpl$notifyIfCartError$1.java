package com.vuitton.android.presentation.screen.cart;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", f = "NativeCartViewModelImpl.kt", l = {985}, m = "notifyIfCartError", v = 2)
final class NativeCartViewModelImpl$notifyIfCartError$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f54908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54909c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$notifyIfCartError$1(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54909c = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54908b = obj;
        this.d |= Integer.MIN_VALUE;
        return NativeCartViewModelImpl.zc(this.f54909c, null, this);
    }
}
