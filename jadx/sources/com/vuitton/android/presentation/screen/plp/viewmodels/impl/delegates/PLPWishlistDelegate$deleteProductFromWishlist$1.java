package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate", f = "PLPWishlistDelegate.kt", l = {271}, m = "deleteProductFromWishlist", v = 2)
final class PLPWishlistDelegate$deleteProductFromWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableState f63157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f63158c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPWishlistDelegate f63159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f63160f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPWishlistDelegate$deleteProductFromWishlist$1(PLPWishlistDelegate pLPWishlistDelegate, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f63159e = pLPWishlistDelegate;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f63160f |= Integer.MIN_VALUE;
        return PLPWishlistDelegate.b(this.f63159e, null, null, this);
    }
}
