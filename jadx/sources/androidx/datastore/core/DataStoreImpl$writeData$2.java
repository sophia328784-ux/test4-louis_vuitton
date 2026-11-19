package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Landroidx/datastore/core/WriteScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$writeData$2", f = "DataStoreImpl.kt", l = {352, 353}, m = "invokeSuspend")
final class DataStoreImpl$writeData$2 extends SuspendLambda implements Function2<WriteScope<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$IntRef f12735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12736c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f12737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12738f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f12739h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeData$2(Ref$IntRef ref$IntRef, DataStoreImpl dataStoreImpl, Object obj, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f12737e = ref$IntRef;
        this.f12738f = dataStoreImpl;
        this.g = obj;
        this.f12739h = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.f12737e, this.f12738f, this.g, this.f12739h, continuation);
        dataStoreImpl$writeData$2.d = obj;
        return dataStoreImpl$writeData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DataStoreImpl$writeData$2) create((WriteScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        if (r7.d(r3, r8) == r0) goto L16;
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
            int r1 = r8.f12736c
            r2 = 0
            java.lang.Object r3 = r8.g
            androidx.datastore.core.DataStoreImpl r4 = r8.f12738f
            kotlin.jvm.internal.Ref$IntRef r5 = r8.f12737e
            r6 = 2
            r7 = 1
            if (r1 == 0) goto L27
            if (r1 == r7) goto L1d
            if (r1 != r6) goto L17
            kotlin.ResultKt.b(r9)
            goto L59
        L17:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r2
        L1d:
            kotlin.jvm.internal.Ref$IntRef r1 = r8.f12735b
            java.lang.Object r7 = r8.d
            androidx.datastore.core.WriteScope r7 = (androidx.datastore.core.WriteScope) r7
            kotlin.ResultKt.b(r9)
            goto L44
        L27:
            kotlin.ResultKt.b(r9)
            java.lang.Object r9 = r8.d
            androidx.datastore.core.WriteScope r9 = (androidx.datastore.core.WriteScope) r9
            int r1 = androidx.datastore.core.DataStoreImpl.m
            androidx.datastore.core.InterProcessCoordinator r1 = r4.g()
            r8.d = r9
            r8.f12735b = r5
            r8.f12736c = r7
            java.lang.Object r1 = r1.e(r8)
            if (r1 != r0) goto L41
            goto L58
        L41:
            r7 = r9
            r9 = r1
            r1 = r5
        L44:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            r1.f71919b = r9
            r8.d = r2
            r8.f12735b = r2
            r8.f12736c = r6
            java.lang.Object r9 = r7.d(r3, r8)
            if (r9 != r0) goto L59
        L58:
            return r0
        L59:
            boolean r8 = r8.f12739h
            if (r8 == 0) goto L71
            androidx.datastore.core.DataStoreInMemoryCache r8 = r4.f12631h
            androidx.datastore.core.Data r9 = new androidx.datastore.core.Data
            if (r3 == 0) goto L68
            int r0 = r3.hashCode()
            goto L69
        L68:
            r0 = 0
        L69:
            int r1 = r5.f71919b
            r9.<init>(r3, r0, r1)
            r8.b(r9)
        L71:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$writeData$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
