package androidx.datastore.core;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "T"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", l = {387, 388, 390}, m = "invokeSuspend")
final class DataStoreImpl$readDataOrHandleCorruption$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Serializable f12712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12713c;
    public final /* synthetic */ Ref$ObjectRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f12715f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$3(Ref$ObjectRef ref$ObjectRef, DataStoreImpl dataStoreImpl, Ref$IntRef ref$IntRef, Continuation continuation) {
        super(1, continuation);
        this.d = ref$ObjectRef;
        this.f12714e = dataStoreImpl;
        this.f12715f = ref$IntRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new DataStoreImpl$readDataOrHandleCorruption$3(this.d, this.f12714e, this.f12715f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((DataStoreImpl$readDataOrHandleCorruption$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
    
        if (r9 == r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f12713c
            kotlin.jvm.internal.Ref$IntRef r2 = r8.f12715f
            kotlin.jvm.internal.Ref$ObjectRef r3 = r8.d
            r4 = 3
            r5 = 2
            androidx.datastore.core.DataStoreImpl r6 = r8.f12714e
            r7 = 1
            if (r1 == 0) goto L35
            if (r1 == r7) goto L2d
            if (r1 == r5) goto L25
            if (r1 != r4) goto L1e
            java.io.Serializable r8 = r8.f12712b
            r2 = r8
            kotlin.jvm.internal.Ref$IntRef r2 = (kotlin.jvm.internal.Ref$IntRef) r2
            kotlin.ResultKt.b(r9)
            goto L70
        L1e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L25:
            java.io.Serializable r1 = r8.f12712b
            kotlin.jvm.internal.Ref$IntRef r1 = (kotlin.jvm.internal.Ref$IntRef) r1
            kotlin.ResultKt.b(r9)     // Catch: androidx.datastore.core.CorruptionException -> L63
            goto L5a
        L2d:
            java.io.Serializable r1 = r8.f12712b
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref$ObjectRef) r1
            kotlin.ResultKt.b(r9)     // Catch: androidx.datastore.core.CorruptionException -> L63
            goto L46
        L35:
            kotlin.ResultKt.b(r9)
            r8.f12712b = r3     // Catch: androidx.datastore.core.CorruptionException -> L63
            r8.f12713c = r7     // Catch: androidx.datastore.core.CorruptionException -> L63
            int r9 = androidx.datastore.core.DataStoreImpl.m     // Catch: androidx.datastore.core.CorruptionException -> L63
            java.lang.Object r9 = r6.i(r8)     // Catch: androidx.datastore.core.CorruptionException -> L63
            if (r9 != r0) goto L45
            goto L6f
        L45:
            r1 = r3
        L46:
            r1.f71921b = r9     // Catch: androidx.datastore.core.CorruptionException -> L63
            int r9 = androidx.datastore.core.DataStoreImpl.m     // Catch: androidx.datastore.core.CorruptionException -> L63
            androidx.datastore.core.InterProcessCoordinator r9 = r6.g()     // Catch: androidx.datastore.core.CorruptionException -> L63
            r8.f12712b = r2     // Catch: androidx.datastore.core.CorruptionException -> L63
            r8.f12713c = r5     // Catch: androidx.datastore.core.CorruptionException -> L63
            java.lang.Object r9 = r9.c(r8)     // Catch: androidx.datastore.core.CorruptionException -> L63
            if (r9 != r0) goto L59
            goto L6f
        L59:
            r1 = r2
        L5a:
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: androidx.datastore.core.CorruptionException -> L63
            int r9 = r9.intValue()     // Catch: androidx.datastore.core.CorruptionException -> L63
            r1.f71919b = r9     // Catch: androidx.datastore.core.CorruptionException -> L63
            goto L78
        L63:
            java.lang.Object r9 = r3.f71921b
            r8.f12712b = r2
            r8.f12713c = r4
            java.lang.Object r9 = r6.j(r9, r7, r8)
            if (r9 != r0) goto L70
        L6f:
            return r0
        L70:
            java.lang.Number r9 = (java.lang.Number) r9
            int r8 = r9.intValue()
            r2.f71919b = r8
        L78:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
