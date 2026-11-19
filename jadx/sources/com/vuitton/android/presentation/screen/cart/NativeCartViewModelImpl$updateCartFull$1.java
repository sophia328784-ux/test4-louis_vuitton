package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.foundation.model.domain.model.cart.Cart;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", f = "NativeCartViewModelImpl.kt", l = {308, 311, 318}, m = "updateCartFull", v = 2)
final class NativeCartViewModelImpl$updateCartFull$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Cart f54955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CartUiModel f54956c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CartItemUiModel f54957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f54958f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f54959h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f54960i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f54961j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54962k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$updateCartFull$1(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54962k = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54961j = obj;
        this.l |= Integer.MIN_VALUE;
        return this.f54962k.Dc(null, this);
    }
}
