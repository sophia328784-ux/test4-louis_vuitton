package androidx.paging;

import defpackage.md;
import defpackage.tg0;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B{\u0012\b\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0016\b\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\f\u0012\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000e\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/paging/PageFetcherSnapshot;", "", "Key", "Value", "initialKey", "Landroidx/paging/PagingSource;", "pagingSource", "Landroidx/paging/PagingConfig;", "config", "Lkotlinx/coroutines/flow/Flow;", "", "retryFlow", "Landroidx/paging/RemoteMediatorConnection;", "remoteMediatorConnection", "Landroidx/paging/PagingState;", "previousPagingState", "Lkotlin/Function0;", "jumpCallback", "<init>", "(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/Flow;Landroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PageFetcherSnapshot<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f18730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PagingSource f18731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PagingConfig f18732c;
    public final Flow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RemoteMediatorConnection f18733e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PagingState f18734f;
    public final Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HintHandler f18735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f18736i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BufferedChannel f18737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PageFetcherSnapshotState.Holder f18738k;
    public final JobImpl l;
    public final FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 m;

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "Key", "", "Value", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class AnonymousClass1 extends Lambda implements Function0<Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f18739c = new AnonymousClass1(0);

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final /* bridge */ /* synthetic */ Object mo47invoke() {
            return Unit.f71739a;
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18740a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f18740a = iArr;
        }
    }

    public PageFetcherSnapshot(Key key, PagingSource<Key, Value> pagingSource, PagingConfig pagingConfig, Flow<Unit> flow, RemoteMediatorConnection<Key, Value> remoteMediatorConnection, PagingState<Key, Value> pagingState, Function0<Unit> function0) {
        pagingSource.getClass();
        pagingConfig.getClass();
        flow.getClass();
        function0.getClass();
        this.f18730a = key;
        this.f18731b = pagingSource;
        this.f18732c = pagingConfig;
        this.d = flow;
        this.f18733e = remoteMediatorConnection;
        this.f18734f = pagingState;
        this.g = function0;
        if (pagingConfig.f18841f != Integer.MIN_VALUE) {
            md.n("PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true.");
            throw null;
        }
        this.f18735h = new HintHandler();
        this.f18736i = new AtomicBoolean(false);
        this.f18737j = ChannelKt.a(-2, 6, null);
        this.f18738k = new PageFetcherSnapshotState.Holder(pagingConfig);
        JobImpl jobImplA = JobKt.a();
        this.l = jobImplA;
        this.m = new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new PageFetcherSnapshot$pageEventFlow$2(this, null), SimpleChannelFlowKt.a(new CancelableChannelFlowKt$cancelableChannelFlow$1(jobImplA, new PageFetcherSnapshot$pageEventFlow$1(this, null), null)));
    }

    public static final Object a(final PageFetcherSnapshot pageFetcherSnapshot, FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1, final LoadType loadType, SuspendLambda suspendLambda) {
        pageFetcherSnapshot.getClass();
        Flow flowA = SimpleChannelFlowKt.a(new FlowExtKt$simpleTransformLatest$1(flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1, new PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(null, pageFetcherSnapshot, loadType), null));
        PageFetcherSnapshot$collectAsGenerationalViewportHints$3 pageFetcherSnapshot$collectAsGenerationalViewportHints$3 = new PageFetcherSnapshot$collectAsGenerationalViewportHints$3(loadType, null);
        flowA.getClass();
        Object objF = FlowKt.c(FlowKt.t(new FlowExtKt$simpleRunningReduce$1(flowA, pageFetcherSnapshot$collectAsGenerationalViewportHints$3, null)), -1).f(new FlowCollector() { // from class: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$4
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(Object obj, Continuation continuation) throws Throwable {
                Object objB = PageFetcherSnapshot.b(this.f18748b, loadType, (GenerationalViewportHint) obj, continuation);
                return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
            }
        }, suspendLambda);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0454  */
    /* JADX WARN: Code duplicated, block: B:158:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:160:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:162:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:165:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:172:0x0502  */
    /* JADX WARN: Code duplicated, block: B:173:0x0505  */
    /* JADX WARN: Code duplicated, block: B:177:0x052d  */
    /* JADX WARN: Code duplicated, block: B:180:0x0543 A[Catch: all -> 0x0576, TryCatch #3 {all -> 0x0576, blocks: (B:178:0x0539, B:180:0x0543, B:188:0x057c, B:190:0x0591, B:192:0x0599, B:194:0x059d, B:196:0x05ac, B:195:0x05a5, B:197:0x05af), top: B:250:0x0539 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x0569  */
    /* JADX WARN: Code duplicated, block: B:183:0x056b  */
    /* JADX WARN: Code duplicated, block: B:190:0x0591 A[Catch: all -> 0x0576, TryCatch #3 {all -> 0x0576, blocks: (B:178:0x0539, B:180:0x0543, B:188:0x057c, B:190:0x0591, B:192:0x0599, B:194:0x059d, B:196:0x05ac, B:195:0x05a5, B:197:0x05af), top: B:250:0x0539 }] */
    /* JADX WARN: Code duplicated, block: B:194:0x059d A[Catch: all -> 0x0576, TryCatch #3 {all -> 0x0576, blocks: (B:178:0x0539, B:180:0x0543, B:188:0x057c, B:190:0x0591, B:192:0x0599, B:194:0x059d, B:196:0x05ac, B:195:0x05a5, B:197:0x05af), top: B:250:0x0539 }] */
    /* JADX WARN: Code duplicated, block: B:195:0x05a5 A[Catch: all -> 0x0576, TryCatch #3 {all -> 0x0576, blocks: (B:178:0x0539, B:180:0x0543, B:188:0x057c, B:190:0x0591, B:192:0x0599, B:194:0x059d, B:196:0x05ac, B:195:0x05a5, B:197:0x05af), top: B:250:0x0539 }] */
    /* JADX WARN: Code duplicated, block: B:200:0x05da  */
    /* JADX WARN: Code duplicated, block: B:203:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:206:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:209:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:212:0x0600  */
    /* JADX WARN: Code duplicated, block: B:215:0x0605 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:232:0x065e  */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code duplicated, block: B:86:0x0331  */
    /* JADX WARN: Code duplicated, block: B:88:0x033f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0368  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v65, types: [androidx.paging.PageFetcherSnapshotState] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v18, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v47, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v54 */
    /* JADX WARN: Type inference failed for: r11v55 */
    /* JADX WARN: Type inference failed for: r11v56 */
    /* JADX WARN: Type inference failed for: r11v57 */
    /* JADX WARN: Type inference failed for: r11v58 */
    /* JADX WARN: Type inference failed for: r11v59 */
    /* JADX WARN: Type inference failed for: r11v60 */
    /* JADX WARN: Type inference failed for: r11v61 */
    /* JADX WARN: Type inference failed for: r12v11, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v40, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v42 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v50 */
    /* JADX WARN: Type inference failed for: r12v51 */
    /* JADX WARN: Type inference failed for: r12v52 */
    /* JADX WARN: Type inference failed for: r13v10, types: [androidx.paging.ViewportHint] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v28, types: [java.lang.Enum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v30, types: [androidx.paging.LoadType] */
    /* JADX WARN: Type inference failed for: r13v31, types: [androidx.paging.LoadType, java.lang.Enum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v36 */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v11, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22, types: [androidx.paging.PageFetcherSnapshot] */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Enum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v44, types: [androidx.paging.PageFetcherSnapshotState] */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v91 */
    /* JADX WARN: Type inference failed for: r1v93 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v26, types: [androidx.paging.PageFetcherSnapshot] */
    /* JADX WARN: Type inference failed for: r8v31, types: [androidx.paging.ViewportHint] */
    /* JADX WARN: Type inference failed for: r8v34, types: [androidx.paging.MutableLoadStateCollection] */
    /* JADX WARN: Type inference failed for: r8v40, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v44, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v53 */
    /* JADX WARN: Type inference failed for: r8v54 */
    /* JADX WARN: Type inference failed for: r8v55 */
    /* JADX WARN: Type inference failed for: r9v40, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v42 */
    /* JADX WARN: Type inference failed for: r9v43, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v45 */
    /* JADX WARN: Type inference failed for: r9v53 */
    /* JADX WARN: Type inference failed for: r9v54 */
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:220:0x062f -> B:252:0x0633). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object b(androidx.paging.PageFetcherSnapshot r20, androidx.paging.LoadType r21, androidx.paging.GenerationalViewportHint r22, kotlin.coroutines.Continuation r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.b(androidx.paging.PageFetcherSnapshot, androidx.paging.LoadType, androidx.paging.GenerationalViewportHint, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Object c(PageFetcherSnapshot pageFetcherSnapshot, final LoadType loadType, final ViewportHint viewportHint, Continuation continuation) throws Throwable {
        pageFetcherSnapshot.getClass();
        if (WhenMappings.f18740a[loadType.ordinal()] == 1) {
            Object objF = pageFetcherSnapshot.f((ContinuationImpl) continuation);
            return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
        }
        if (viewportHint == null) {
            md.k("Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint");
            return null;
        }
        HintHandler hintHandler = pageFetcherSnapshot.f18735h;
        hintHandler.getClass();
        if (loadType == LoadType.PREPEND || loadType == LoadType.APPEND) {
            hintHandler.f18618a.a(null, new Function2<HintHandler.HintFlow, HintHandler.HintFlow, Unit>() { // from class: androidx.paging.HintHandler$forceSetHint$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    HintHandler.HintFlow hintFlow = (HintHandler.HintFlow) obj;
                    HintHandler.HintFlow hintFlow2 = (HintHandler.HintFlow) obj2;
                    hintFlow.getClass();
                    hintFlow2.getClass();
                    LoadType loadType2 = LoadType.PREPEND;
                    LoadType loadType3 = loadType;
                    ViewportHint viewportHint2 = viewportHint;
                    if (loadType3 == loadType2) {
                        hintFlow.f18619a = viewportHint2;
                        if (viewportHint2 != null) {
                            hintFlow.f18620b.a(viewportHint2);
                        }
                    } else {
                        hintFlow2.f18619a = viewportHint2;
                        if (viewportHint2 != null) {
                            hintFlow2.f18620b.a(viewportHint2);
                        }
                    }
                    return Unit.f71739a;
                }
            });
            return Unit.f71739a;
        }
        tg0.n(loadType, "invalid load type for reset: ");
        return null;
    }

    public static final void d(PageFetcherSnapshot pageFetcherSnapshot, CoroutineScope coroutineScope) {
        if (pageFetcherSnapshot.f18732c.f18841f != Integer.MIN_VALUE) {
            BuildersKt.c(coroutineScope, null, null, new PageFetcherSnapshot$startConsumingHints$1(pageFetcherSnapshot, null), 3);
        }
        BuildersKt.c(coroutineScope, null, null, new PageFetcherSnapshot$startConsumingHints$2(pageFetcherSnapshot, null), 3);
        BuildersKt.c(coroutineScope, null, null, new PageFetcherSnapshot$startConsumingHints$3(pageFetcherSnapshot, null), 3);
    }

    public static void h(LoadType loadType, Object obj, PagingSource.LoadResult loadResult) {
        if (loadResult == null) {
            Objects.toString(loadType);
            Objects.toString(obj);
        } else {
            Objects.toString(loadType);
            Objects.toString(obj);
            loadResult.toString();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ContinuationImpl continuationImpl) {
        PageFetcherSnapshot$currentPagingState$1 pageFetcherSnapshot$currentPagingState$1;
        MutexImpl mutexImpl;
        PageFetcherSnapshotState.Holder holder;
        if (continuationImpl instanceof PageFetcherSnapshot$currentPagingState$1) {
            pageFetcherSnapshot$currentPagingState$1 = (PageFetcherSnapshot$currentPagingState$1) continuationImpl;
            int i2 = pageFetcherSnapshot$currentPagingState$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pageFetcherSnapshot$currentPagingState$1.g = i2 - Integer.MIN_VALUE;
            } else {
                pageFetcherSnapshot$currentPagingState$1 = new PageFetcherSnapshot$currentPagingState$1(this, continuationImpl);
            }
        } else {
            pageFetcherSnapshot$currentPagingState$1 = new PageFetcherSnapshot$currentPagingState$1(this, continuationImpl);
        }
        Object obj = pageFetcherSnapshot$currentPagingState$1.f18758e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pageFetcherSnapshot$currentPagingState$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            PageFetcherSnapshotState.Holder holder2 = this.f18738k;
            mutexImpl = holder2.f18824a;
            pageFetcherSnapshot$currentPagingState$1.f18756b = this;
            pageFetcherSnapshot$currentPagingState$1.f18757c = holder2;
            pageFetcherSnapshot$currentPagingState$1.d = mutexImpl;
            pageFetcherSnapshot$currentPagingState$1.g = 1;
            if (mutexImpl.c(pageFetcherSnapshot$currentPagingState$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
            holder = holder2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MutexImpl mutexImpl2 = pageFetcherSnapshot$currentPagingState$1.d;
            holder = pageFetcherSnapshot$currentPagingState$1.f18757c;
            PageFetcherSnapshot<Key, Value> pageFetcherSnapshot = pageFetcherSnapshot$currentPagingState$1.f18756b;
            ResultKt.b(obj);
            mutexImpl = mutexImpl2;
            this = pageFetcherSnapshot;
        }
        try {
            return holder.f18825b.a(this.f18735h.f18618a.f18623c);
        } finally {
            mutexImpl.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0229  */
    /* JADX WARN: Code duplicated, block: B:105:0x022d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0233  */
    /* JADX WARN: Code duplicated, block: B:111:0x0251  */
    /* JADX WARN: Code duplicated, block: B:119:0x027e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0282  */
    /* JADX WARN: Code duplicated, block: B:123:0x0288  */
    /* JADX WARN: Code duplicated, block: B:126:0x029e  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:42:0x0101  */
    /* JADX WARN: Code duplicated, block: B:46:0x0117  */
    /* JADX WARN: Code duplicated, block: B:49:0x011e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0135  */
    /* JADX WARN: Code duplicated, block: B:55:0x0157 A[Catch: all -> 0x015f, TryCatch #5 {all -> 0x015f, blocks: (B:53:0x0138, B:55:0x0157, B:58:0x0162, B:60:0x0169), top: B:144:0x0138 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0169 A[Catch: all -> 0x015f, TRY_LEAVE, TryCatch #5 {all -> 0x015f, blocks: (B:53:0x0138, B:55:0x0157, B:58:0x0162, B:60:0x0169), top: B:144:0x0138 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0175  */
    /* JADX WARN: Code duplicated, block: B:65:0x017b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0197  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:85:0x01db  */
    /* JADX WARN: Code duplicated, block: B:90:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:94:0x0210  */
    /* JADX WARN: Code duplicated, block: B:97:0x0219  */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0271, code lost:
    
        if (r4.j(r13, r3, r2, r0) == r1) goto L114;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.paging.PageFetcherSnapshot] */
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.paging.PageFetcherSnapshot, androidx.paging.PageFetcherSnapshot<Key, Value>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v17, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v3, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v38, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v51, types: [java.lang.Object, kotlin.Unit] */
    /* JADX WARN: Type inference failed for: r12v58 */
    /* JADX WARN: Type inference failed for: r12v59 */
    /* JADX WARN: Type inference failed for: r12v62 */
    /* JADX WARN: Type inference failed for: r12v63 */
    /* JADX WARN: Type inference failed for: r12v64 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v8, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9, types: [androidx.paging.PageFetcherSnapshot] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.f(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final PagingSource.LoadParams g(LoadType loadType, Object obj) {
        PagingSource.LoadParams.Companion companion = PagingSource.LoadParams.f18891a;
        LoadType loadType2 = LoadType.REFRESH;
        PagingConfig pagingConfig = this.f18732c;
        int i2 = loadType == loadType2 ? pagingConfig.d : pagingConfig.f18837a;
        boolean z = pagingConfig.f18839c;
        companion.getClass();
        loadType.getClass();
        int i3 = PagingSource.LoadParams.Companion.WhenMappings.f18893a[loadType.ordinal()];
        if (i3 == 1) {
            return new PagingSource.LoadParams.Refresh(obj, i2, z);
        }
        if (i3 == 2) {
            if (obj != null) {
                return new PagingSource.LoadParams.Prepend(obj, i2, z);
            }
            md.n("key cannot be null for prepend");
            return null;
        }
        if (i3 != 3) {
            v40.g();
            return null;
        }
        if (obj != null) {
            return new PagingSource.LoadParams.Append(obj, i2, z);
        }
        md.n("key cannot be null for append");
        return null;
    }

    public final Object i(PageFetcherSnapshotState pageFetcherSnapshotState, LoadType loadType, int i2, int i3) {
        int i4;
        pageFetcherSnapshotState.getClass();
        int i5 = PageFetcherSnapshotState.WhenMappings.f18826a[loadType.ordinal()];
        if (i5 == 1) {
            md.n("Cannot get loadId for loadType: REFRESH");
            return null;
        }
        if (i5 == 2) {
            i4 = pageFetcherSnapshotState.g;
        } else {
            if (i5 != 3) {
                v40.g();
                return null;
            }
            i4 = pageFetcherSnapshotState.f18820h;
        }
        if (i2 != i4 || (pageFetcherSnapshotState.l.a(loadType) instanceof LoadState.Error) || i3 >= this.f18732c.f18838b) {
            return null;
        }
        LoadType loadType2 = LoadType.PREPEND;
        ArrayList arrayList = pageFetcherSnapshotState.f18817c;
        return loadType == loadType2 ? ((PagingSource.LoadResult.Page) CollectionsKt.B(arrayList)).f18898c : ((PagingSource.LoadResult.Page) CollectionsKt.M(arrayList)).d;
    }

    public final Object j(PageFetcherSnapshotState pageFetcherSnapshotState, LoadType loadType, LoadState.Error error, ContinuationImpl continuationImpl) {
        MutableLoadStateCollection mutableLoadStateCollection = pageFetcherSnapshotState.l;
        if (Intrinsics.c(mutableLoadStateCollection.a(loadType), error)) {
            return Unit.f71739a;
        }
        mutableLoadStateCollection.c(loadType, error);
        Object objU = this.f18737j.u(new PageEvent.LoadStateUpdate(mutableLoadStateCollection.d(), null), continuationImpl);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public final Object k(PageFetcherSnapshotState pageFetcherSnapshotState, LoadType loadType, ContinuationImpl continuationImpl) {
        MutableLoadStateCollection mutableLoadStateCollection = pageFetcherSnapshotState.l;
        LoadState loadStateA = mutableLoadStateCollection.a(loadType);
        LoadState.Loading loading = LoadState.Loading.f18635b;
        if (Intrinsics.c(loadStateA, loading)) {
            return Unit.f71739a;
        }
        mutableLoadStateCollection.c(loadType, loading);
        Object objU = this.f18737j.u(new PageEvent.LoadStateUpdate(mutableLoadStateCollection.d(), null), continuationImpl);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public /* synthetic */ PageFetcherSnapshot(Object obj, PagingSource pagingSource, PagingConfig pagingConfig, Flow flow, RemoteMediatorConnection remoteMediatorConnection, PagingState pagingState, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, pagingSource, pagingConfig, flow, (i2 & 16) != 0 ? null : remoteMediatorConnection, (i2 & 32) != 0 ? null : pagingState, (i2 & 64) != 0 ? AnonymousClass1.f18739c : function0);
    }
}
