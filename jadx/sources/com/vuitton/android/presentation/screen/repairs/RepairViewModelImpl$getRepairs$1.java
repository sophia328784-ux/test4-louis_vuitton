package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import java.util.Collection;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairs$1", f = "RepairViewModelImpl.kt", l = {230, 234, 271}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$getRepairs$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f63535c;
    public RepairViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f63536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Collection f63537f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CareServiceUiModel f63538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f63539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f63540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CareServiceUiModel f63541k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ RepairViewModelImpl q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$getRepairs$1(boolean z, RepairViewModelImpl repairViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.p = z;
        this.q = repairViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairViewModelImpl$getRepairs$1(this.p, this.q, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$getRepairs$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00f8 A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:11:0x0074, B:35:0x0130, B:37:0x0142, B:41:0x0157, B:43:0x015b, B:47:0x0170, B:29:0x00f2, B:31:0x00f8, B:48:0x0188, B:28:0x00cd), top: B:125:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:33:0x012b  */
    /* JADX WARN: Code duplicated, block: B:34:0x012d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0142 A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:11:0x0074, B:35:0x0130, B:37:0x0142, B:41:0x0157, B:43:0x015b, B:47:0x0170, B:29:0x00f2, B:31:0x00f8, B:48:0x0188, B:28:0x00cd), top: B:125:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0152  */
    /* JADX WARN: Code duplicated, block: B:40:0x0155  */
    /* JADX WARN: Code duplicated, block: B:43:0x015b A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:11:0x0074, B:35:0x0130, B:37:0x0142, B:41:0x0157, B:43:0x015b, B:47:0x0170, B:29:0x00f2, B:31:0x00f8, B:48:0x0188, B:28:0x00cd), top: B:125:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:45:0x016b  */
    /* JADX WARN: Code duplicated, block: B:46:0x016e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.vuitton.android.domain.monitoring.MonitorAction] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v21, types: [com.vuitton.android.domain.monitoring.MonitorAction] */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.vuitton.android.domain.monitoring.MonitorAction] */
    /* JADX WARN: Type inference failed for: r8v8, types: [com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl, java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x012d -> B:35:0x0130). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x0247 -> B:99:0x02d7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x0283 -> B:91:0x028b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r31) {
        /*
            Method dump skipped, instruction units count: 972
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairs$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
