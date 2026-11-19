package androidx.compose.ui.scrollcapture;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import android.view.View;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import defpackage.b21;
import defpackage.md;
import defpackage.o60;
import defpackage.ro;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.internal.ContextScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000eB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;", "Landroid/view/ScrollCaptureCallback;", "Landroidx/compose/ui/semantics/SemanticsNode;", "node", "Landroidx/compose/ui/unit/IntRect;", "viewportBoundsInWindow", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;", "listener", "Landroid/view/View;", "composeView", "<init>", "(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;Landroid/view/View;)V", "ScrollCaptureSessionListener", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposeScrollCaptureCallback implements ScrollCaptureCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SemanticsNode f10236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IntRect f10237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScrollCaptureSessionListener f10238c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContextScope f10239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RelativeScroller f10240f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface ScrollCaptureSessionListener {
        void a();

        void b();
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1", f = "ComposeScrollCaptureCallback.android.kt", l = {188}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f10241b;
        public final /* synthetic */ Runnable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Runnable runnable, Continuation continuation) {
            super(2, continuation);
            this.d = runnable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ComposeScrollCaptureCallback.this.new AnonymousClass1(this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f10241b;
            ComposeScrollCaptureCallback composeScrollCaptureCallback = ComposeScrollCaptureCallback.this;
            if (i2 == 0) {
                ResultKt.b(obj);
                RelativeScroller relativeScroller = composeScrollCaptureCallback.f10240f;
                this.f10241b = 1;
                Object objA = relativeScroller.a(Call.Parameters.DEFAULT_CAMERA_ZOOM - relativeScroller.f10260c, this);
                if (objA != coroutineSingletons) {
                    objA = Unit.f71739a;
                }
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            composeScrollCaptureCallback.f10238c.b();
            this.d.run();
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1", f = "ComposeScrollCaptureCallback.android.kt", l = {120}, m = "invokeSuspend", v = 1)
    final class C03491 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f10243b;
        public final /* synthetic */ ScrollCaptureSession d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Rect f10245e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Consumer f10246f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03491(ScrollCaptureSession scrollCaptureSession, Rect rect, Consumer consumer, Continuation continuation) {
            super(2, continuation);
            this.d = scrollCaptureSession;
            this.f10245e = rect;
            this.f10246f = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ComposeScrollCaptureCallback.this.new C03491(this.d, this.f10245e, this.f10246f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((C03491) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f10243b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ScrollCaptureSession scrollCaptureSession = this.d;
                Rect rect = this.f10245e;
                IntRect intRect = new IntRect(rect.left, rect.top, rect.right, rect.bottom);
                this.f10243b = 1;
                obj = ComposeScrollCaptureCallback.a(ComposeScrollCaptureCallback.this, scrollCaptureSession, intRect, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            this.f10246f.accept(RectHelper_androidKt.a((IntRect) obj));
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback", f = "ComposeScrollCaptureCallback.android.kt", l = {134, 137}, m = "onScrollCaptureImageRequest", v = 1)
    final class AnonymousClass2 extends ContinuationImpl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f10247b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public IntRect f10248c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f10249e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f10250f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10251h;

        public AnonymousClass2(ContinuationImpl continuationImpl) {
            super(continuationImpl);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f10250f = obj;
            this.f10251h |= Integer.MIN_VALUE;
            return ComposeScrollCaptureCallback.a(ComposeScrollCaptureCallback.this, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
    final class AnonymousClass3 extends Lambda implements Function1<Long, Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass3 f10252c = new AnonymousClass3(1);

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            ((Number) obj).longValue();
            return Unit.f71739a;
        }
    }

    public ComposeScrollCaptureCallback(SemanticsNode semanticsNode, IntRect intRect, CoroutineScope coroutineScope, ScrollCaptureSessionListener scrollCaptureSessionListener, View view) {
        this.f10236a = semanticsNode;
        this.f10237b = intRect;
        this.f10238c = scrollCaptureSessionListener;
        this.d = view;
        this.f10239e = new ContextScope(coroutineScope.getF50528e().plus(DisableAnimationMotionDurationScale.f10257b));
        this.f10240f = new RelativeScroller(intRect.b(), new ComposeScrollCaptureCallback$scrollTracker$1(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00de  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(ComposeScrollCaptureCallback composeScrollCaptureCallback, ScrollCaptureSession scrollCaptureSession, IntRect intRect, ContinuationImpl continuationImpl) {
        AnonymousClass2 anonymousClass2;
        int i2;
        int i3;
        Object objA;
        ScrollCaptureSession scrollCaptureSession2;
        IntRect intRect2;
        int i4;
        int i5;
        int iD;
        int iD2;
        IntRect intRect3;
        int i6;
        int i7;
        Canvas canvasLockHardwareCanvas;
        if (continuationImpl instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuationImpl;
            int i8 = anonymousClass2.f10251h;
            if ((i8 & Integer.MIN_VALUE) != 0) {
                anonymousClass2.f10251h = i8 - Integer.MIN_VALUE;
            } else {
                anonymousClass2 = composeScrollCaptureCallback.new AnonymousClass2(continuationImpl);
            }
        } else {
            anonymousClass2 = composeScrollCaptureCallback.new AnonymousClass2(continuationImpl);
        }
        Object obj = anonymousClass2.f10250f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i9 = anonymousClass2.f10251h;
        if (i9 == 0) {
            ResultKt.b(obj);
            i2 = intRect.f11018b;
            i3 = intRect.d;
            RelativeScroller relativeScroller = composeScrollCaptureCallback.f10240f;
            anonymousClass2.f10247b = scrollCaptureSession;
            anonymousClass2.f10248c = intRect;
            anonymousClass2.d = i2;
            anonymousClass2.f10249e = i3;
            anonymousClass2.f10251h = 1;
            int i10 = relativeScroller.f10258a;
            if (i2 > i3) {
                b21.n(o60.h(i2, i3, "Expected min=", " ≤ max="));
                return null;
            }
            int i11 = i3 - i2;
            if (i11 > i10) {
                b21.n(o60.h(i11, i10, "Expected range (", ") to be ≤ viewportSize="));
                return null;
            }
            float f2 = i2;
            float f3 = relativeScroller.f10260c;
            if (f2 < f3 || i3 > i10 + f3) {
                objA = relativeScroller.a((((i11 / 2) + i2) - (i10 / 2)) - f3, anonymousClass2);
                if (objA != coroutineSingletons) {
                    objA = Unit.f71739a;
                }
                if (objA != coroutineSingletons) {
                    objA = Unit.f71739a;
                }
            } else {
                objA = Unit.f71739a;
            }
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i9 == 1) {
            int i12 = anonymousClass2.f10249e;
            int i13 = anonymousClass2.d;
            IntRect intRect4 = anonymousClass2.f10248c;
            ScrollCaptureSession scrollCaptureSession3 = (ScrollCaptureSession) anonymousClass2.f10247b;
            ResultKt.b(obj);
            i2 = i13;
            intRect = intRect4;
            i3 = i12;
            scrollCaptureSession = scrollCaptureSession3;
        } else {
            if (i9 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i5 = anonymousClass2.f10249e;
            i4 = anonymousClass2.d;
            intRect2 = anonymousClass2.f10248c;
            scrollCaptureSession2 = (ScrollCaptureSession) anonymousClass2.f10247b;
            ResultKt.b(obj);
        }
        RelativeScroller relativeScroller2 = composeScrollCaptureCallback.f10240f;
        iD = RangesKt.d(i4 - MathKt.c(relativeScroller2.f10260c), 0, relativeScroller2.f10258a);
        RelativeScroller relativeScroller3 = composeScrollCaptureCallback.f10240f;
        iD2 = RangesKt.d(i5 - MathKt.c(relativeScroller3.f10260c), 0, relativeScroller3.f10258a);
        intRect3 = new IntRect(intRect2.f11017a, iD, intRect2.f11019c, iD2);
        i6 = intRect3.f11018b;
        i7 = intRect3.f11017a;
        if (iD == iD2) {
            IntRect.f11015e.getClass();
            return IntRect.f11016f;
        }
        canvasLockHardwareCanvas = scrollCaptureSession2.getSurface().lockHardwareCanvas();
        try {
            canvasLockHardwareCanvas.save();
            canvasLockHardwareCanvas.translate(-i7, -i6);
            IntRect intRect5 = composeScrollCaptureCallback.f10237b;
            canvasLockHardwareCanvas.translate(-intRect5.f11017a, -intRect5.f11018b);
            composeScrollCaptureCallback.d.getRootView().draw(canvasLockHardwareCanvas);
            int iC = MathKt.c(composeScrollCaptureCallback.f10240f.f10260c);
            return new IntRect(i7, i6 + iC, intRect3.f11019c, intRect3.d + iC);
        } finally {
            scrollCaptureSession2.getSurface().unlockCanvasAndPost(canvasLockHardwareCanvas);
        }
        AnonymousClass3 anonymousClass3 = AnonymousClass3.f10252c;
        anonymousClass2.f10247b = scrollCaptureSession;
        anonymousClass2.f10248c = intRect;
        anonymousClass2.d = i2;
        anonymousClass2.f10249e = i3;
        anonymousClass2.f10251h = 2;
        if (MonotonicFrameClockKt.a(anonymousClass2.getContext()).c(anonymousClass2, anonymousClass3) != coroutineSingletons) {
            scrollCaptureSession2 = scrollCaptureSession;
            intRect2 = intRect;
            i4 = i2;
            i5 = i3;
            RelativeScroller relativeScroller4 = composeScrollCaptureCallback.f10240f;
            iD = RangesKt.d(i4 - MathKt.c(relativeScroller4.f10260c), 0, relativeScroller4.f10258a);
            RelativeScroller relativeScroller5 = composeScrollCaptureCallback.f10240f;
            iD2 = RangesKt.d(i5 - MathKt.c(relativeScroller5.f10260c), 0, relativeScroller5.f10258a);
            intRect3 = new IntRect(intRect2.f11017a, iD, intRect2.f11019c, iD2);
            i6 = intRect3.f11018b;
            i7 = intRect3.f11017a;
            if (iD == iD2) {
                IntRect.f11015e.getClass();
                return IntRect.f11016f;
            }
            canvasLockHardwareCanvas = scrollCaptureSession2.getSurface().lockHardwareCanvas();
            canvasLockHardwareCanvas.save();
            canvasLockHardwareCanvas.translate(-i7, -i6);
            IntRect intRect6 = composeScrollCaptureCallback.f10237b;
            canvasLockHardwareCanvas.translate(-intRect6.f11017a, -intRect6.f11018b);
            composeScrollCaptureCallback.d.getRootView().draw(canvasLockHardwareCanvas);
            int iC2 = MathKt.c(composeScrollCaptureCallback.f10240f.f10260c);
            return new IntRect(i7, i6 + iC2, intRect3.f11019c, intRect3.d + iC2);
        }
        return coroutineSingletons;
    }

    public final void onScrollCaptureEnd(Runnable runnable) {
        BuildersKt.c(this.f10239e, NonCancellable.f74707b, null, new AnonymousClass1(runnable, null), 2);
    }

    public final void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, final CancellationSignal cancellationSignal, Rect rect, Consumer consumer) {
        Job jobC = BuildersKt.c(this.f10239e, null, null, new C03491(scrollCaptureSession, rect, consumer, null), 3);
        jobC.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback_androidKt$launchWithCancellationSignal$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                if (((Throwable) obj) != null) {
                    cancellationSignal.cancel();
                }
                return Unit.f71739a;
            }
        });
        cancellationSignal.setOnCancelListener(new ro(jobC, 0));
    }

    public final void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer consumer) {
        consumer.accept(RectHelper_androidKt.a(this.f10237b));
    }

    public final void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.f10240f.f10260c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f10238c.a();
        runnable.run();
    }
}
