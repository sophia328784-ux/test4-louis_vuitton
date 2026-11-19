package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.foundation.model.domain.model.cart.Cart;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addToCart$1", f = "PdpViewModelImpl.kt", l = {712, 740, 768, 771, 775, 786, 794, 802, 827}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$addToCart$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PdpViewModelImpl f61152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductUiModel f61153c;
    public Deferred d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f61154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MonitorAction f61155f;
    public Cart g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f61156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f61157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f61158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ Object f61159k;
    public final /* synthetic */ PdpViewModelImpl l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$addToCart$1(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
        super(2, continuation);
        this.l = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PdpViewModelImpl$addToCart$1 pdpViewModelImpl$addToCart$1 = new PdpViewModelImpl$addToCart$1(continuation, this.l);
        pdpViewModelImpl$addToCart$1.f61159k = obj;
        return pdpViewModelImpl$addToCart$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$addToCart$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:102:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:103:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:111:0x02bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:23:0x0107  */
    /* JADX WARN: Code duplicated, block: B:24:0x010a  */
    /* JADX WARN: Code duplicated, block: B:47:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:53:0x024a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0258  */
    /* JADX WARN: Code duplicated, block: B:61:0x0285  */
    /* JADX WARN: Code duplicated, block: B:64:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:76:0x0318  */
    /* JADX WARN: Code duplicated, block: B:79:0x0322  */
    /* JADX WARN: Code duplicated, block: B:81:0x0337  */
    /* JADX WARN: Code duplicated, block: B:86:0x037b  */
    /* JADX WARN: Code duplicated, block: B:88:0x037f  */
    /* JADX WARN: Code duplicated, block: B:91:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:93:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:95:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:97:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:99:0x03da  */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0424, code lost:
    
        if (r4.u(r2, r24) == r7) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0279, code lost:
    
        if (r9.u(r10, r24) == r7) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x027d, code lost:
    
        r4 = r5;
        r5 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02e1, code lost:
    
        if (r4.u(r9, r24) == r7) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0373, code lost:
    
        if (r2.u(r4, r24) == r7) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0377, code lost:
    
        r1 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20, types: [com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel, com.vuitton.foundation.model.domain.model.cart.Cart, java.lang.Object, kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 1100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addToCart$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
