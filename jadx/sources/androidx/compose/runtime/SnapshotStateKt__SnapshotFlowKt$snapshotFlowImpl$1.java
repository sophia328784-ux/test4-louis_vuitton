package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1", f = "SnapshotFlow.kt", l = {476, 479, 484}, m = "invokeSuspend", v = 1)
final class SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 extends SuspendLambda implements Function2<FlowCollector<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SnapshotFlowManager f8153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Channel f8154c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f8156f;
    public final /* synthetic */ Function0 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.g = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 = new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(this.g, continuation);
        snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.f8156f = obj;
        return snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0070 A[Catch: all -> 0x0020, PHI: r1 r5 r7 r8
      0x0070: PHI (r1v3 java.lang.Object) = (r1v2 java.lang.Object), (r1v7 java.lang.Object) binds: [B:23:0x006d, B:15:0x0033] A[DONT_GENERATE, DONT_INLINE]
      0x0070: PHI (r5v7 ??) = (r5v10 ??), (r5v11 ??) binds: [B:23:0x006d, B:15:0x0033] A[DONT_GENERATE, DONT_INLINE]
      0x0070: PHI (r7v4 ??) = (r7v7 ??), (r7v8 ??) binds: [B:23:0x006d, B:15:0x0033] A[DONT_GENERATE, DONT_INLINE]
      0x0070: PHI (r8v3 kotlinx.coroutines.flow.FlowCollector) = (r8v2 kotlinx.coroutines.flow.FlowCollector), (r8v7 kotlinx.coroutines.flow.FlowCollector) binds: [B:23:0x006d, B:15:0x0033] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0020, blocks: (B:15:0x0033, B:25:0x0070, B:22:0x005f, B:27:0x007a, B:8:0x001c), top: B:42:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:27:0x007a A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {all -> 0x0020, blocks: (B:15:0x0033, B:25:0x0070, B:22:0x005f, B:27:0x007a, B:8:0x001c), top: B:42:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:30:0x008b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.runtime.SnapshotFlowManagerImpl] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlinx.coroutines.channels.Channel, kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r5v7, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0078 -> B:22:0x005f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x008b -> B:22:0x005f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.f8155e
            kotlin.jvm.functions.Function0 r2 = r10.g
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L37
            if (r1 == r5) goto L12
            if (r1 == r4) goto L29
            if (r1 != r3) goto L23
        L12:
            java.lang.Object r1 = r10.d
            kotlinx.coroutines.channels.Channel r5 = r10.f8154c
            androidx.compose.runtime.SnapshotFlowManager r7 = r10.f8153b
            java.lang.Object r8 = r10.f8156f
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L20
            goto L5f
        L20:
            r10 = move-exception
            goto L8f
        L23:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r6
        L29:
            java.lang.Object r1 = r10.d
            kotlinx.coroutines.channels.Channel r5 = r10.f8154c
            androidx.compose.runtime.SnapshotFlowManager r7 = r10.f8153b
            java.lang.Object r8 = r10.f8156f
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L20
            goto L70
        L37:
            kotlin.ResultKt.b(r11)
            java.lang.Object r11 = r10.f8156f
            r8 = r11
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            androidx.compose.runtime.SnapshotFlowManager r7 = new androidx.compose.runtime.SnapshotFlowManager
            r7.<init>()
            r11 = 6
            kotlinx.coroutines.channels.BufferedChannel r11 = kotlinx.coroutines.channels.ChannelKt.a(r5, r11, r6)
            java.lang.Object r1 = r7.a(r11, r2)     // Catch: java.lang.Throwable -> L8d
            r10.f8156f = r8     // Catch: java.lang.Throwable -> L8d
            r10.f8153b = r7     // Catch: java.lang.Throwable -> L8d
            r10.f8154c = r11     // Catch: java.lang.Throwable -> L8d
            r10.d = r1     // Catch: java.lang.Throwable -> L8d
            r10.f8155e = r5     // Catch: java.lang.Throwable -> L8d
            java.lang.Object r5 = r8.emit(r1, r10)     // Catch: java.lang.Throwable -> L8d
            if (r5 != r0) goto L5e
            goto L8a
        L5e:
            r5 = r11
        L5f:
            r10.f8156f = r8     // Catch: java.lang.Throwable -> L20
            r10.f8153b = r7     // Catch: java.lang.Throwable -> L20
            r10.f8154c = r5     // Catch: java.lang.Throwable -> L20
            r10.d = r1     // Catch: java.lang.Throwable -> L20
            r10.f8155e = r4     // Catch: java.lang.Throwable -> L20
            java.lang.Object r11 = r5.w(r10)     // Catch: java.lang.Throwable -> L20
            if (r11 != r0) goto L70
            goto L8a
        L70:
            java.lang.Object r11 = r7.a(r5, r2)     // Catch: java.lang.Throwable -> L20
            boolean r9 = kotlin.jvm.internal.Intrinsics.c(r11, r1)     // Catch: java.lang.Throwable -> L20
            if (r9 != 0) goto L5f
            r10.f8156f = r8     // Catch: java.lang.Throwable -> L20
            r10.f8153b = r7     // Catch: java.lang.Throwable -> L20
            r10.f8154c = r5     // Catch: java.lang.Throwable -> L20
            r10.d = r11     // Catch: java.lang.Throwable -> L20
            r10.f8155e = r3     // Catch: java.lang.Throwable -> L20
            java.lang.Object r1 = r8.emit(r11, r10)     // Catch: java.lang.Throwable -> L20
            if (r1 != r0) goto L8b
        L8a:
            return r0
        L8b:
            r1 = r11
            goto L5f
        L8d:
            r10 = move-exception
            r5 = r11
        L8f:
            androidx.compose.runtime.SnapshotFlowManagerImpl r11 = r7.f8123a
            if (r11 == 0) goto L96
            r11.e(r5)
        L96:
            androidx.compose.runtime.SnapshotFlowManagerImpl r11 = r7.f8123a
            if (r11 == 0) goto L9b
            goto La0
        L9b:
            java.lang.String r0 = "Called dispose on a manager that has been disposed of"
            androidx.compose.runtime.PreconditionsKt.b(r0)
        La0:
            r11.c()
            r7.f8123a = r6
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
