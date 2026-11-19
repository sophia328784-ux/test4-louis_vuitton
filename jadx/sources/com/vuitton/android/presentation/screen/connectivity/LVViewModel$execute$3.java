package com.vuitton.android.presentation.screen.connectivity;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.LVViewModel$execute$3", f = "LVViewModel.kt", l = {38, EACTags.DATE_OF_BIRTH, 41, EACTags.DATE_OF_BIRTH, EACTags.DATE_OF_BIRTH}, m = "invokeSuspend", v = 2)
final class LVViewModel$execute$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f55956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f55957c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f55958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f55959f;
    public final /* synthetic */ Function1 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVViewModel$execute$3(Function2 function2, Function2 function3, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f55958e = function2;
        this.f55959f = function3;
        this.g = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        LVViewModel$execute$3 lVViewModel$execute$3 = new LVViewModel$execute$3(this.f55958e, this.f55959f, this.g, continuation);
        lVViewModel$execute$3.d = obj;
        return lVViewModel$execute$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVViewModel$execute$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        if (r11 == r2) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
    
        if (r9.invoke(r11) == r2) goto L39;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.Object] */
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
    public final java.lang.Object invokeSuspend(java.lang.Object r12) throws java.lang.Throwable {
        /*
            r11 = this;
            java.lang.String r0 = "ViewModel Exception: "
            java.lang.Object r1 = r11.d
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r11.f55957c
            r4 = 5
            r5 = 4
            r6 = 3
            r7 = 2
            r8 = 1
            kotlin.jvm.functions.Function1 r9 = r11.g
            r10 = 0
            if (r3 == 0) goto L3f
            if (r3 == r8) goto L39
            if (r3 == r7) goto L35
            if (r3 == r6) goto L2b
            if (r3 == r5) goto L35
            if (r3 == r4) goto L24
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            return r10
        L24:
            java.lang.Throwable r11 = r11.f55956b
            kotlin.ResultKt.b(r12)
            goto L9a
        L2b:
            java.lang.Throwable r0 = r11.f55956b
            java.lang.Exception r0 = (java.lang.Exception) r0
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L33
            goto L7c
        L33:
            r12 = move-exception
            goto L8c
        L35:
            kotlin.ResultKt.b(r12)
            goto L89
        L39:
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3d
            goto L4f
        L3d:
            r12 = move-exception
            goto L5a
        L3f:
            kotlin.ResultKt.b(r12)
            kotlin.jvm.functions.Function2 r12 = r11.f55958e     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3d
            r11.d = r10     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3d
            r11.f55957c = r8     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3d
            java.lang.Object r12 = r12.invoke(r1, r11)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3d
            if (r12 != r2) goto L4f
            goto L98
        L4f:
            r11.d = r10
            r11.f55957c = r7
            java.lang.Object r11 = r9.invoke(r11)
            if (r11 != r2) goto L89
            goto L98
        L5a:
            com.vuitton.foundation.logger.LegacyLogger r1 = com.vuitton.foundation.logger.LegacyLogger.f66205a     // Catch: java.lang.Throwable -> L33
            java.lang.String r3 = com.vuitton.android.presentation.screen.connectivity.LVViewModel.f55943b     // Catch: java.lang.Throwable -> L33
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L33
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L33
            r7.append(r12)     // Catch: java.lang.Throwable -> L33
            java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> L33
            r1.c(r3, r0, r10)     // Catch: java.lang.Throwable -> L33
            kotlin.jvm.functions.Function2 r0 = r11.f55959f     // Catch: java.lang.Throwable -> L33
            r11.d = r10     // Catch: java.lang.Throwable -> L33
            r11.f55956b = r10     // Catch: java.lang.Throwable -> L33
            r11.f55957c = r6     // Catch: java.lang.Throwable -> L33
            java.lang.Object r12 = r0.invoke(r12, r11)     // Catch: java.lang.Throwable -> L33
            if (r12 != r2) goto L7c
            goto L98
        L7c:
            r11.d = r10
            r11.f55956b = r10
            r11.f55957c = r5
            java.lang.Object r11 = r9.invoke(r11)
            if (r11 != r2) goto L89
            goto L98
        L89:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        L8c:
            r11.d = r10
            r11.f55956b = r12
            r11.f55957c = r4
            java.lang.Object r11 = r9.invoke(r11)
            if (r11 != r2) goto L99
        L98:
            return r2
        L99:
            r11 = r12
        L9a:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.LVViewModel$execute$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
