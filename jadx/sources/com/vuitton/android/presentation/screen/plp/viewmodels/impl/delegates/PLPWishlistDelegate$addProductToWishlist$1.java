package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate", f = "PLPWishlistDelegate.kt", l = {Sink.ORIENTATION_180, 197}, m = "addProductToWishlist", v = 2)
final class PLPWishlistDelegate$addProductToWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ProductForWishlist f63152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutableState f63153c;
    public MonitorAction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f63154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f63155f;
    public final /* synthetic */ PLPWishlistDelegate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f63156h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPWishlistDelegate$addProductToWishlist$1(PLPWishlistDelegate pLPWishlistDelegate, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = pLPWishlistDelegate;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f63155f = obj;
        this.f63156h |= Integer.MIN_VALUE;
        return PLPWishlistDelegate.a(this.g, null, null, this);
    }
}
