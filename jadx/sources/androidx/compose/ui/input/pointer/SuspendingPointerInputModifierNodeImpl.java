package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0014B=\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0005\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rBZ\b\u0017\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0012\u0010\t\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0005\u0018\u00010\b\u0012'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000e¢\u0006\u0002\b\u0011¢\u0006\u0004\b\f\u0010\u0013¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "Landroidx/compose/ui/unit/Density;", "", "key1", "key2", "", "keys", "Landroidx/compose/ui/input/pointer/PointerInputEventHandler;", "pointerInputEventHandler", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "pointerInputEvent", "(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "PointerEventHandlerCoroutine", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SuspendingPointerInputModifierNodeImpl extends Modifier.Node implements SuspendingPointerInputModifierNode, PointerInputScope, Density {
    public long A;
    public Object p;
    public Object q;
    public Object[] r;
    public final Function2 s;
    public PointerInputEventHandler t;
    public Job u;
    public PointerEvent v;
    public final MutableVector w;
    public final MutableVector x;
    public final MutableVector y;
    public PointerEvent z;

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "invoke", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 implements PointerInputEventHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AnonymousClass1 f9380a = new AnonymousClass1();

        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
            return Unit.f71739a;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;", "R", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "Landroidx/compose/ui/unit/Density;", "Lkotlin/coroutines/Continuation;", "completion", "<init>", "(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Lkotlin/coroutines/Continuation;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class PointerEventHandlerCoroutine<R> implements AwaitPointerEventScope, Density, Continuation<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SuspendingPointerInputModifierNodeImpl f9381b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Continuation f9382c;
        public CancellableContinuationImpl d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public PointerEventPass f9383e = PointerEventPass.Main;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final EmptyCoroutineContext f9384f = EmptyCoroutineContext.f71840b;

        public PointerEventHandlerCoroutine(Continuation<? super R> continuation) {
            this.f9381b = SuspendingPointerInputModifierNodeImpl.this;
            this.f9382c = continuation;
        }

        @Override // androidx.compose.ui.unit.Density
        public final int B0(float f2) {
            return this.f9381b.B0(f2);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final Object D1(long j2, Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1;
            if (continuationImpl instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) continuationImpl;
                int i2 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuationImpl);
                }
            } else {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuationImpl);
            }
            Object obj = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.f9390b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.d;
            try {
                if (i3 == 0) {
                    ResultKt.b(obj);
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.d = 1;
                    Object objC1 = c1(j2, function2, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1);
                    return objC1 == coroutineSingletons ? coroutineSingletons : objC1;
                }
                if (i3 == 1) {
                    ResultKt.b(obj);
                    return obj;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            } catch (PointerEventTimeoutCancellationException unused) {
                return null;
            }
        }

        @Override // androidx.compose.ui.unit.Density
        public final float E0(long j2) {
            return this.f9381b.E0(j2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long K1(long j2) {
            return this.f9381b.K1(j2);
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final Object N0(PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(baseContinuationImpl), 1);
            cancellableContinuationImpl.initCancellability();
            this.f9383e = pointerEventPass;
            this.d = cancellableContinuationImpl;
            Object result = cancellableContinuationImpl.getResult();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            return result;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final PointerEvent O0() {
            return SuspendingPointerInputModifierNodeImpl.this.v;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final long Q(float f2) {
            return this.f9381b.Q(f2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long R(long j2) {
            return this.f9381b.R(j2);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float Z(long j2) {
            return this.f9381b.Z(j2);
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final long a() {
            return SuspendingPointerInputModifierNodeImpl.this.A;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final Object c1(long j2, Function2 function2, BaseContinuationImpl baseContinuationImpl) throws Throwable {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1;
            Throwable th;
            Job job;
            CancellableContinuationImpl cancellableContinuationImpl;
            if (baseContinuationImpl instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) baseContinuationImpl;
                int i2 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9387e;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9387e = i2 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, baseContinuationImpl);
                }
            } else {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, baseContinuationImpl);
            }
            Object objInvoke = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9386c;
            Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9387e;
            if (i3 != 0) {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                job = (Job) suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9385b;
                try {
                    ResultKt.b(objInvoke);
                    job.cancel(CancelTimeoutCancellationException.f9265b);
                    return objInvoke;
                } catch (Throwable th2) {
                    th = th2;
                    job.cancel(CancelTimeoutCancellationException.f9265b);
                    throw th;
                }
            }
            ResultKt.b(objInvoke);
            if (j2 <= 0 && (cancellableContinuationImpl = this.d) != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(new Result.Failure(new PointerEventTimeoutCancellationException(j2)));
            }
            Job jobC = BuildersKt.c(SuspendingPointerInputModifierNodeImpl.this.V1(), null, null, new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1(j2, this, null), 3);
            try {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9385b = jobC;
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.f9387e = 1;
                objInvoke = function2.invoke(this, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1);
                if (objInvoke == obj) {
                    return obj;
                }
                job = jobC;
                job.cancel(CancelTimeoutCancellationException.f9265b);
                return objInvoke;
            } catch (Throwable th3) {
                th = th3;
                job = jobC;
                job.cancel(CancelTimeoutCancellationException.f9265b);
                throw th;
            }
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext getContext() {
            return this.f9384f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: getDensity */
        public final float getF11002b() {
            return this.f9381b.getF11002b();
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final ViewConfiguration getViewConfiguration() {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            suspendingPointerInputModifierNodeImpl.getClass();
            return DelegatableNodeKt.f(suspendingPointerInputModifierNodeImpl).C;
        }

        @Override // androidx.compose.ui.unit.Density
        public final long j0(float f2) {
            return this.f9381b.j0(f2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float k1(int i2) {
            return this.f9381b.k1(i2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float l1(float f2) {
            return this.f9381b.l1(f2);
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            synchronized (suspendingPointerInputModifierNodeImpl.x) {
                suspendingPointerInputModifierNodeImpl.w.n(this);
            }
            this.f9382c.resumeWith(obj);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* JADX INFO: renamed from: s1 */
        public final float getF11003c() {
            return this.f9381b.getF11003c();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float u1(float f2) {
            return this.f9381b.getF11002b() * f2;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final long w0() {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            suspendingPointerInputModifierNodeImpl.getClass();
            long jK1 = suspendingPointerInputModifierNodeImpl.K1(DelegatableNodeKt.f(suspendingPointerInputModifierNodeImpl).C.e());
            long j2 = suspendingPointerInputModifierNodeImpl.A;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (jK1 >> 32)) - ((int) (j2 >> 32))) / 2.0f)) << 32) | (((long) Float.floatToRawIntBits(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (jK1 & BodyPartID.bodyIdMax)) - ((int) (j2 & BodyPartID.bodyIdMax))) / 2.0f)) & BodyPartID.bodyIdMax);
            Size.Companion companion = Size.f8820b;
            return jFloatToRawIntBits;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9392a;

        static {
            int[] iArr = new int[PointerEventPass.values().length];
            try {
                iArr[PointerEventPass.Initial.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PointerEventPass.Final.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PointerEventPass.Main.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f9392a = iArr;
        }
    }

    public SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, Object[] objArr, PointerInputEventHandler pointerInputEventHandler) {
        this.p = obj;
        this.q = obj2;
        this.r = objArr;
        this.t = pointerInputEventHandler;
        this.v = SuspendingPointerInputFilterKt.f9378a;
        MutableVector mutableVector = new MutableVector(new PointerEventHandlerCoroutine[16], 0);
        this.w = mutableVector;
        this.x = mutableVector;
        this.y = new MutableVector(new PointerEventHandlerCoroutine[16], 0);
        IntSize.f11020b.getClass();
        this.A = 0L;
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        J0();
    }

    @Override // androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode
    public final void J0() {
        Job job = this.u;
        if (job != null) {
            job.cancel(new PointerInputResetException());
            this.u = null;
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void N1() {
        J0();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    /* JADX INFO: renamed from: a, reason: from getter */
    public final long getA() {
        return this.A;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        J0();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    public final Object c0(Function2 function2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (this.x) {
            this.w.b(pointerEventHandlerCoroutine);
            SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(IntrinsicsKt.a(pointerEventHandlerCoroutine, function2, pointerEventHandlerCoroutine)), CoroutineSingletons.COROUTINE_SUSPENDED);
            Result.Companion companion = Result.INSTANCE;
            safeContinuation.resumeWith(Unit.f71739a);
        }
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$awaitPointerEventScope$2$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable th = (Throwable) obj;
                SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = pointerEventHandlerCoroutine;
                CancellableContinuationImpl cancellableContinuationImpl2 = pointerEventHandlerCoroutine2.d;
                if (cancellableContinuationImpl2 != null) {
                    cancellableContinuationImpl2.cancel(th);
                }
                pointerEventHandlerCoroutine2.d = null;
                return Unit.f71739a;
            }
        });
        return cancellableContinuationImpl.getResult();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        this.A = j2;
        if (pointerEventPass == PointerEventPass.Initial) {
            this.v = pointerEvent;
        }
        if (this.u == null) {
            this.u = BuildersKt.c(V1(), null, CoroutineStart.UNDISPATCHED, new SuspendingPointerInputModifierNodeImpl$onPointerEvent$1(this, null), 1);
        }
        h2(pointerEvent, pointerEventPass);
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!PointerEventKt.d((PointerInputChange) list.get(i2))) {
                this.z = pointerEvent;
            }
        }
        pointerEvent = null;
        this.z = pointerEvent;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        PointerEvent pointerEvent = this.z;
        if (pointerEvent == null) {
            return;
        }
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((PointerInputChange) list.get(i2)).d) {
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    PointerInputChange pointerInputChange = (PointerInputChange) list.get(i3);
                    long j2 = pointerInputChange.f9328a;
                    long j3 = pointerInputChange.f9330c;
                    long j4 = pointerInputChange.f9329b;
                    float f2 = pointerInputChange.f9331e;
                    boolean z = pointerInputChange.d;
                    arrayList.add(new PointerInputChange(j2, j4, j3, false, f2, j4, j3, z, z, pointerInputChange.f9334i, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 7168, null));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList);
                this.v = pointerEvent2;
                h2(pointerEvent2, PointerEventPass.Initial);
                h2(pointerEvent2, PointerEventPass.Main);
                h2(pointerEvent2, PointerEventPass.Final);
                this.z = null;
                return;
            }
        }
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return DelegatableNodeKt.f(this).A.getF11002b();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    public final ViewConfiguration getViewConfiguration() {
        return DelegatableNodeKt.f(this).C;
    }

    public final void h2(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        synchronized (this.x) {
            MutableVector mutableVector = this.y;
            mutableVector.f(mutableVector.d, this.w);
        }
        try {
            int i2 = WhenMappings.f9392a[pointerEventPass.ordinal()];
            if (i2 == 1 || i2 == 2) {
                MutableVector mutableVector2 = this.y;
                Object[] objArr = mutableVector2.f8165b;
                int i3 = mutableVector2.d;
                for (int i4 = 0; i4 < i3; i4++) {
                    PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (PointerEventHandlerCoroutine) objArr[i4];
                    if (pointerEventPass == pointerEventHandlerCoroutine.f9383e && (cancellableContinuationImpl = pointerEventHandlerCoroutine.d) != null) {
                        pointerEventHandlerCoroutine.d = null;
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl.resumeWith(pointerEvent);
                    }
                }
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                MutableVector mutableVector3 = this.y;
                int i5 = mutableVector3.d - 1;
                Object[] objArr2 = mutableVector3.f8165b;
                if (i5 < objArr2.length) {
                    while (i5 >= 0) {
                        PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = (PointerEventHandlerCoroutine) objArr2[i5];
                        if (pointerEventPass == pointerEventHandlerCoroutine2.f9383e && (cancellableContinuationImpl2 = pointerEventHandlerCoroutine2.d) != null) {
                            pointerEventHandlerCoroutine2.d = null;
                            Result.Companion companion2 = Result.INSTANCE;
                            cancellableContinuationImpl2.resumeWith(pointerEvent);
                        }
                        i5--;
                    }
                }
            }
            this.y.j();
        } catch (Throwable th) {
            this.y.j();
            throw th;
        }
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return DelegatableNodeKt.f(this).A.getF11003c();
    }

    public /* synthetic */ SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, Object[] objArr, PointerInputEventHandler pointerInputEventHandler, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : obj, (i2 & 2) != 0 ? null : obj2, (i2 & 4) != 0 ? null : objArr, pointerInputEventHandler);
    }

    @Deprecated
    public SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, Object[] objArr, Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this(obj, obj2, objArr, AnonymousClass1.f9380a);
        this.s = function2;
    }
}
