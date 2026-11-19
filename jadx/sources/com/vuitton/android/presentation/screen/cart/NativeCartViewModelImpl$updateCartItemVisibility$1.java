package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", f = "NativeCartViewModelImpl.kt", l = {689}, m = "updateCartItemVisibility", v = 2)
final class NativeCartViewModelImpl$updateCartItemVisibility$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CartItemUiModel f54965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CartItemUiModel f54966c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f54967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54968f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$updateCartItemVisibility$1(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54968f = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54967e = obj;
        this.g |= Integer.MIN_VALUE;
        return NativeCartViewModelImpl.Bc(this.f54968f, null, false, this);
    }
}
