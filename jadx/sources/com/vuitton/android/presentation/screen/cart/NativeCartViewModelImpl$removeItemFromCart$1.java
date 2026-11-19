package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$removeItemFromCart$1", f = "NativeCartViewModelImpl.kt", l = {565, 567, 593, 601, 611, 612}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$removeItemFromCart$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f54921c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f54922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f54923f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f54924h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f54925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f54926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54927k;
    public final /* synthetic */ CartItemUiModel l;
    public final /* synthetic */ boolean m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$removeItemFromCart$1(NativeCartViewModelImpl nativeCartViewModelImpl, CartItemUiModel cartItemUiModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f54927k = nativeCartViewModelImpl;
        this.l = cartItemUiModel;
        this.m = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$removeItemFromCart$1(this.f54927k, this.l, this.m, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$removeItemFromCart$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:57:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:60:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:63:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:68:0x020c  */
    /* JADX WARN: Code duplicated, block: B:71:0x022c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0244  */
    /* JADX WARN: Code duplicated, block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ec, code lost:
    
        if (r1 == r9) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$removeItemFromCart$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
