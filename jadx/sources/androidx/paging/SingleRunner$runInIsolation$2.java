package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.SingleRunner$runInIsolation$2", f = "SingleRunner.kt", l = {EACTags.SEX, EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION, 61, 61}, m = "invokeSuspend")
final class SingleRunner$runInIsolation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18974c;
    public final /* synthetic */ SingleRunner d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f18975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f18976f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleRunner$runInIsolation$2(SingleRunner singleRunner, int i2, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.d = singleRunner;
        this.f18975e = i2;
        this.f18976f = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2 = new SingleRunner$runInIsolation$2(this.d, this.f18975e, this.f18976f, continuation);
        singleRunner$runInIsolation$2.f18974c = obj;
        return singleRunner$runInIsolation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SingleRunner$runInIsolation$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
    
        if (r9 == r1) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.paging.SingleRunner$Holder] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.paging.SingleRunner$runInIsolation$2, java.lang.Object, kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.paging.SingleRunner$runInIsolation$2, kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object] */
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
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            androidx.paging.SingleRunner r0 = r9.d
            androidx.paging.SingleRunner$Holder r0 = r0.f18955a
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r9.f18973b
            r3 = 0
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L3d
            if (r2 == r7) goto L35
            if (r2 == r6) goto L2b
            if (r2 == r5) goto L26
            if (r2 == r4) goto L1d
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r3
        L1d:
            java.lang.Object r9 = r9.f18974c
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            kotlin.ResultKt.b(r10)
            goto L8e
        L26:
            kotlin.ResultKt.b(r10)
            goto L8f
        L2b:
            java.lang.Object r2 = r9.f18974c
            kotlinx.coroutines.Job r2 = (kotlinx.coroutines.Job) r2
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L33
            goto L77
        L33:
            r10 = move-exception
            goto L82
        L35:
            java.lang.Object r2 = r9.f18974c
            kotlinx.coroutines.Job r2 = (kotlinx.coroutines.Job) r2
            kotlin.ResultKt.b(r10)
            goto L62
        L3d:
            kotlin.ResultKt.b(r10)
            java.lang.Object r10 = r9.f18974c
            kotlinx.coroutines.CoroutineScope r10 = (kotlinx.coroutines.CoroutineScope) r10
            kotlin.coroutines.CoroutineContext r10 = r10.getF8068c()
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.f74677b
            kotlin.coroutines.CoroutineContext$Element r10 = r10.get(r2)
            if (r10 == 0) goto L92
            kotlinx.coroutines.Job r10 = (kotlinx.coroutines.Job) r10
            r9.f18974c = r10
            r9.f18973b = r7
            int r2 = r9.f18975e
            java.lang.Object r2 = r0.b(r2, r10, r9)
            if (r2 != r1) goto L5f
            goto L8c
        L5f:
            r8 = r2
            r2 = r10
            r10 = r8
        L62:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L8f
            kotlin.jvm.functions.Function1 r10 = r9.f18976f     // Catch: java.lang.Throwable -> L33
            r9.f18974c = r2     // Catch: java.lang.Throwable -> L33
            r9.f18973b = r6     // Catch: java.lang.Throwable -> L33
            java.lang.Object r10 = r10.invoke(r9)     // Catch: java.lang.Throwable -> L33
            if (r10 != r1) goto L77
            goto L8c
        L77:
            r9.f18974c = r3
            r9.f18973b = r5
            java.lang.Object r9 = r0.a(r2, r9)
            if (r9 != r1) goto L8f
            goto L8c
        L82:
            r9.f18974c = r10
            r9.f18973b = r4
            java.lang.Object r9 = r0.a(r2, r9)
            if (r9 != r1) goto L8d
        L8c:
            return r1
        L8d:
            r9 = r10
        L8e:
            throw r9
        L8f:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L92:
            java.lang.String r9 = "Internal error. coroutineScope should've created a job."
            defpackage.md.k(r9)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner$runInIsolation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
