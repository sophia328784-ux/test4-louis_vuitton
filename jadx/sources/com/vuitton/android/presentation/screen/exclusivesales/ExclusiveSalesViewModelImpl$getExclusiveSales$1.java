package com.vuitton.android.presentation.screen.exclusivesales;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$getExclusiveSales$1", f = "ExclusiveSalesViewModelImpl.kt", l = {70, 72, EACTags.ANSWER_TO_RESET}, m = "invokeSuspend", v = 2)
final class ExclusiveSalesViewModelImpl$getExclusiveSales$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f57538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ExclusiveSalesViewModelImpl f57539c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ExclusiveSalesViewModelImpl f57541f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExclusiveSalesViewModelImpl$getExclusiveSales$1(ExclusiveSalesViewModelImpl exclusiveSalesViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57541f = exclusiveSalesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ExclusiveSalesViewModelImpl$getExclusiveSales$1(this.f57541f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ExclusiveSalesViewModelImpl$getExclusiveSales$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e1 A[LOOP:3: B:40:0x00e1->B:53:?, LOOP_START] */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0117, code lost:
    
        if (r2.u(r6, r21) == r3) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
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
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$getExclusiveSales$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
