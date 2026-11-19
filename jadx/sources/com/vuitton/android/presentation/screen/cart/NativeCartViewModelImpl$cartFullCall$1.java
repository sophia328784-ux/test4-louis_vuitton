package com.vuitton.android.presentation.screen.cart;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", f = "NativeCartViewModelImpl.kt", l = {304, 305}, m = "cartFullCall-IoAF18A", v = 2)
final class NativeCartViewModelImpl$cartFullCall$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f54893c;
    public final /* synthetic */ NativeCartViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f54894e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$cartFullCall$1(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54893c = obj;
        this.f54894e |= Integer.MIN_VALUE;
        Object objYc = NativeCartViewModelImpl.yc(this.d, this);
        return objYc == CoroutineSingletons.COROUTINE_SUSPENDED ? objYc : new Result(objYc);
    }
}
