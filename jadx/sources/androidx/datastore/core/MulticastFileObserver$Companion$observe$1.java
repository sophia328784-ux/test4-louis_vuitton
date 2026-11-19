package androidx.datastore.core;

import defpackage.h10;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.MulticastFileObserver$Companion$observe$1", f = "MulticastFileObserver.android.kt", l = {84, 85}, m = "invokeSuspend")
final class MulticastFileObserver$Companion$observe$1 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h10 f12808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12809c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ File f12810e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MulticastFileObserver$Companion$observe$1(File file, Continuation continuation) {
        super(2, continuation);
        this.f12810e = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.f12810e, continuation);
        multicastFileObserver$Companion$observe$1.d = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MulticastFileObserver$Companion$observe$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
    
        if (kotlinx.coroutines.channels.ProduceKt.a(r4, r10, r9) == r0) goto L27;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.f12809c
            r2 = 2
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L18
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r10)
            goto L9a
        L12:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r3
        L18:
            h10 r1 = r9.f12808b
            java.lang.Object r4 = r9.d
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.b(r10)
            goto L88
        L22:
            kotlin.ResultKt.b(r10)
            java.lang.Object r10 = r9.d
            kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
            androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1 r1 = new androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1
            java.io.File r5 = r9.f12810e
            r1.<init>()
            androidx.datastore.core.MulticastFileObserver$Companion r5 = androidx.datastore.core.MulticastFileObserver.f12805b
            java.io.File r6 = r9.f12810e
            java.io.File r6 = r6.getParentFile()
            r6.getClass()
            r5.getClass()
            java.io.File r5 = r6.getCanonicalFile()
            java.lang.String r5 = r5.getPath()
            java.lang.Object r6 = androidx.datastore.core.MulticastFileObserver.f12806c
            monitor-enter(r6)
            java.util.LinkedHashMap r7 = androidx.datastore.core.MulticastFileObserver.d     // Catch: java.lang.Throwable -> L5d
            r5.getClass()     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r8 = r7.get(r5)     // Catch: java.lang.Throwable -> L5d
            if (r8 != 0) goto L5f
            androidx.datastore.core.MulticastFileObserver r8 = new androidx.datastore.core.MulticastFileObserver     // Catch: java.lang.Throwable -> L5d
            r8.<init>(r5, r3)     // Catch: java.lang.Throwable -> L5d
            r7.put(r5, r8)     // Catch: java.lang.Throwable -> L5d
            goto L5f
        L5d:
            r9 = move-exception
            goto L9d
        L5f:
            androidx.datastore.core.MulticastFileObserver r8 = (androidx.datastore.core.MulticastFileObserver) r8     // Catch: java.lang.Throwable -> L5d
            java.util.concurrent.CopyOnWriteArrayList r7 = r8.f12807a     // Catch: java.lang.Throwable -> L5d
            r7.add(r1)     // Catch: java.lang.Throwable -> L5d
            java.util.concurrent.CopyOnWriteArrayList r7 = r8.f12807a     // Catch: java.lang.Throwable -> L5d
            int r7 = r7.size()     // Catch: java.lang.Throwable -> L5d
            if (r7 != r4) goto L71
            r8.startWatching()     // Catch: java.lang.Throwable -> L5d
        L71:
            monitor-exit(r6)
            h10 r6 = new h10
            r6.<init>(r5, r1, r4)
            kotlin.Unit r1 = kotlin.Unit.f71739a
            r9.d = r10
            r9.f12808b = r6
            r9.f12809c = r4
            java.lang.Object r1 = r10.u(r1, r9)
            if (r1 != r0) goto L86
            goto L99
        L86:
            r4 = r10
            r1 = r6
        L88:
            androidx.datastore.core.MulticastFileObserver$Companion$observe$1$1 r10 = new androidx.datastore.core.MulticastFileObserver$Companion$observe$1$1
            r10.<init>()
            r9.d = r3
            r9.f12808b = r3
            r9.f12809c = r2
            java.lang.Object r9 = kotlinx.coroutines.channels.ProduceKt.a(r4, r10, r9)
            if (r9 != r0) goto L9a
        L99:
            return r0
        L9a:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L9d:
            monitor-exit(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MulticastFileObserver$Companion$observe$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
