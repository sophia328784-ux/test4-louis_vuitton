package androidx.datastore.core;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/State;", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readState$2", f = "DataStoreImpl.kt", l = {ModuleDescriptor.MODULE_VERSION, 226}, m = "invokeSuspend")
final class DataStoreImpl$readState$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super State<Object>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12717c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readState$2(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(2, continuation);
        this.f12717c = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DataStoreImpl$readState$2(this.f12717c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DataStoreImpl$readState$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r7 == r2) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            androidx.datastore.core.DataStoreImpl r0 = r6.f12717c
            androidx.datastore.core.DataStoreInMemoryCache r1 = r0.f12631h
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r6.f12716b
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L1f
            if (r3 == r5) goto L1b
            if (r3 != r4) goto L14
            kotlin.ResultKt.b(r7)
            goto L42
        L14:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L1b:
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L45
            goto L38
        L1f:
            kotlin.ResultKt.b(r7)
            androidx.datastore.core.State r7 = r1.a()
            boolean r7 = r7 instanceof androidx.datastore.core.Final
            if (r7 == 0) goto L2f
            androidx.datastore.core.State r6 = r1.a()
            return r6
        L2f:
            r6.f12716b = r5     // Catch: java.lang.Throwable -> L45
            java.lang.Object r7 = r0.h(r6)     // Catch: java.lang.Throwable -> L45
            if (r7 != r2) goto L38
            goto L41
        L38:
            r6.f12716b = r4
            r7 = 0
            java.lang.Object r7 = androidx.datastore.core.DataStoreImpl.e(r0, r7, r6)
            if (r7 != r2) goto L42
        L41:
            return r2
        L42:
            androidx.datastore.core.State r7 = (androidx.datastore.core.State) r7
            return r7
        L45:
            r6 = move-exception
            androidx.datastore.core.ReadException r7 = new androidx.datastore.core.ReadException
            r0 = -1
            r7.<init>(r6, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$readState$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
