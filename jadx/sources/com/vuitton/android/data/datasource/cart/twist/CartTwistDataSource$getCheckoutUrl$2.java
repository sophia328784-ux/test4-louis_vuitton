package com.vuitton.android.data.datasource.cart.twist;

import com.vuitton.android.data.datasource.cart.bff.CheckoutUrlWithCookies;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource$getCheckoutUrl$2", f = "CartTwistDataSource.kt", l = {31, 39, EACTags.DATE_OF_BIRTH}, m = "invokeSuspend", v = 2)
final class CartTwistDataSource$getCheckoutUrl$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends CheckoutUrlWithCookies>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CartTwistDataSource f43950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43951c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43953f;
    public final /* synthetic */ CartTwistDataSource g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartTwistDataSource$getCheckoutUrl$2(CartTwistDataSource cartTwistDataSource, Continuation continuation) {
        super(2, continuation);
        this.g = cartTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CartTwistDataSource$getCheckoutUrl$2(this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CartTwistDataSource$getCheckoutUrl$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0098 A[Catch: all -> 0x0110, TryCatch #0 {all -> 0x0110, blocks: (B:8:0x0014, B:36:0x0092, B:37:0x0094, B:39:0x0098, B:41:0x009e, B:43:0x00a6, B:44:0x00b7, B:46:0x00bd, B:49:0x00cc, B:52:0x00d7, B:55:0x00dd, B:56:0x00e5, B:57:0x00eb, B:58:0x00fa, B:59:0x0101, B:13:0x0023, B:30:0x0074, B:16:0x002f, B:23:0x0050, B:25:0x0056, B:27:0x005d, B:31:0x0077, B:33:0x007b, B:60:0x0102, B:61:0x0107, B:62:0x0108, B:63:0x010f, B:19:0x0038), top: B:75:0x0008 }] */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008f, code lost:
    
        if (r11 == r0) goto L35;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource$getCheckoutUrl$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
