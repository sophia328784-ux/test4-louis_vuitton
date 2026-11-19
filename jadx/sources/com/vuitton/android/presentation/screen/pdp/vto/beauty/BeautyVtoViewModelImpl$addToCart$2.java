package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.foundation.model.domain.error.cart.CartError;
import com.vuitton.foundation.model.domain.model.cart.CartResponse;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$addToCart$2", f = "BeautyVtoViewModelImpl.kt", l = {1315, 1321, 1356, 1365, 1378, 1384}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$addToCart$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f61862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f61863c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f61864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CartResponse f61865f;
    public CartError g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Iterator f61866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f61867i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f61868j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f61869k;
    public /* synthetic */ Object l;
    public final /* synthetic */ BeautyVtoViewModelImpl m;
    public final /* synthetic */ List n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$addToCart$2(BeautyVtoViewModelImpl beautyVtoViewModelImpl, List list, Continuation continuation) {
        super(2, continuation);
        this.m = beautyVtoViewModelImpl;
        this.n = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BeautyVtoViewModelImpl$addToCart$2 beautyVtoViewModelImpl$addToCart$2 = new BeautyVtoViewModelImpl$addToCart$2(this.m, this.n, continuation);
        beautyVtoViewModelImpl$addToCart$2.l = obj;
        return beautyVtoViewModelImpl$addToCart$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$addToCart$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x01df  */
    /* JADX WARN: Code duplicated, block: B:53:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:55:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:59:0x0200  */
    /* JADX WARN: Code duplicated, block: B:62:0x0207  */
    /* JADX WARN: Code duplicated, block: B:66:0x023b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7, types: [com.vuitton.foundation.model.domain.model.cart.CartResponse, java.lang.Object, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x023b -> B:67:0x023f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r29) {
        /*
            Method dump skipped, instruction units count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$addToCart$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
