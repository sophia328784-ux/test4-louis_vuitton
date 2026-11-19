package androidx.compose.foundation.layout;

import android.graphics.Insets;
import android.os.CancellationSignal;
import android.view.View;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import defpackage.c71;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroid/view/WindowInsetsAnimationControlListener;", "Landroidx/compose/foundation/layout/AndroidWindowInsets;", "windowInsets", "Landroid/view/View;", "view", "Landroidx/compose/foundation/layout/SideCalculator;", "sideCalculator", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroid/view/View;Landroidx/compose/foundation/layout/SideCalculator;Landroidx/compose/ui/unit/Density;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class WindowInsetsNestedScrollConnection implements NestedScrollConnection, WindowInsetsAnimationControlListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AndroidWindowInsets f5086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f5087c;
    public final SideCalculator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Density f5088e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WindowInsetsAnimationController f5089f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CancellationSignal f5090h = new CancellationSignal();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5091i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Job f5092j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CancellableContinuationImpl f5093k;

    public WindowInsetsNestedScrollConnection(AndroidWindowInsets androidWindowInsets, View view, SideCalculator sideCalculator, Density density) {
        this.f5086b = androidWindowInsets;
        this.f5087c = view;
        this.d = sideCalculator;
        this.f5088e = density;
    }

    public static final void a(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, float f2) {
        WindowInsetsAnimationController windowInsetsAnimationController = windowInsetsNestedScrollConnection.f5089f;
        if (windowInsetsAnimationController != null) {
            windowInsetsAnimationController.setInsetsAndAlpha(windowInsetsNestedScrollConnection.d.c(windowInsetsAnimationController.getCurrentInsets(), Math.round(f2)), 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        return e(this.d.a(Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j3))), j3);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        return d(j3, this.d.a(Velocity.b(j3), Velocity.c(j3)), true, (ContinuationImpl) continuation);
    }

    public final void b() {
        WindowInsetsAnimationController windowInsetsAnimationController;
        WindowInsetsAnimationController windowInsetsAnimationController2 = this.f5089f;
        if (windowInsetsAnimationController2 != null && windowInsetsAnimationController2.isReady() && (windowInsetsAnimationController = this.f5089f) != null) {
            windowInsetsAnimationController.finish(((Boolean) ((SnapshotMutableStateImpl) this.f5086b.d).getF10755b()).booleanValue());
        }
        this.f5089f = null;
        CancellableContinuationImpl cancellableContinuationImpl = this.f5093k;
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.resume((Object) null, WindowInsetsNestedScrollConnection$animationEnded$1.f5094b);
        }
        this.f5093k = null;
        Job job = this.f5092j;
        if (job != null) {
            job.cancel(new WindowInsetsAnimationCancelledException());
        }
        this.f5092j = null;
        this.f5091i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.g = false;
    }

    public final void c() {
        CancellableContinuationImpl cancellableContinuationImpl = this.f5093k;
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.resume((Object) null, WindowInsetsNestedScrollConnection$dispose$1.f5095b);
        }
        Job job = this.f5092j;
        if (job != null) {
            job.cancel(null);
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.f5089f;
        if (windowInsetsAnimationController != null) {
            windowInsetsAnimationController.finish(!Intrinsics.c(windowInsetsAnimationController.getCurrentInsets(), windowInsetsAnimationController.getHiddenStateInsets()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public final Object d(long j2, float f2, boolean z, ContinuationImpl continuationImpl) {
        WindowInsetsNestedScrollConnection$fling$1 windowInsetsNestedScrollConnection$fling$1;
        long j3;
        Object result;
        Object obj;
        float f3;
        long j4;
        Ref$FloatRef ref$FloatRef;
        long j5;
        long j6;
        float f4;
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this;
        if (continuationImpl instanceof WindowInsetsNestedScrollConnection$fling$1) {
            windowInsetsNestedScrollConnection$fling$1 = (WindowInsetsNestedScrollConnection$fling$1) continuationImpl;
            int i2 = windowInsetsNestedScrollConnection$fling$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                windowInsetsNestedScrollConnection$fling$1.g = i2 - Integer.MIN_VALUE;
            } else {
                windowInsetsNestedScrollConnection$fling$1 = new WindowInsetsNestedScrollConnection$fling$1(windowInsetsNestedScrollConnection, continuationImpl);
            }
        } else {
            windowInsetsNestedScrollConnection$fling$1 = new WindowInsetsNestedScrollConnection$fling$1(windowInsetsNestedScrollConnection, continuationImpl);
        }
        WindowInsetsNestedScrollConnection$fling$1 windowInsetsNestedScrollConnection$fling$2 = windowInsetsNestedScrollConnection$fling$1;
        Object obj2 = windowInsetsNestedScrollConnection$fling$2.f5098e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = windowInsetsNestedScrollConnection$fling$2.g;
        SideCalculator sideCalculator = windowInsetsNestedScrollConnection.d;
        if (i3 == 0) {
            ResultKt.b(obj2);
            Job job = windowInsetsNestedScrollConnection.f5092j;
            if (job != null) {
                job.cancel(new WindowInsetsAnimationCancelledException());
            }
            windowInsetsNestedScrollConnection.f5092j = null;
            windowInsetsNestedScrollConnection.f5091i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || z) {
                WindowInsetsAnimationController windowInsetsAnimationController = windowInsetsNestedScrollConnection.f5089f;
                AndroidWindowInsets androidWindowInsets = windowInsetsNestedScrollConnection.f5086b;
                if (windowInsetsAnimationController != null || ((Boolean) ((SnapshotMutableStateImpl) androidWindowInsets.d).getF10755b()).booleanValue() != z) {
                    windowInsetsNestedScrollConnection$fling$2.f5096b = j2;
                    windowInsetsNestedScrollConnection$fling$2.f5097c = f2;
                    windowInsetsNestedScrollConnection$fling$2.g = 1;
                    WindowInsetsAnimationController windowInsetsAnimationController2 = windowInsetsNestedScrollConnection.f5089f;
                    if (windowInsetsAnimationController2 == null) {
                        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(windowInsetsNestedScrollConnection$fling$2), 1);
                        cancellableContinuationImpl.initCancellability();
                        windowInsetsNestedScrollConnection.f5093k = cancellableContinuationImpl;
                        if (windowInsetsNestedScrollConnection.g) {
                            j3 = 0;
                        } else {
                            windowInsetsNestedScrollConnection.g = true;
                            WindowInsetsController windowInsetsController = windowInsetsNestedScrollConnection.f5087c.getWindowInsetsController();
                            if (windowInsetsController != null) {
                                j3 = 0;
                                windowInsetsController.controlWindowInsetsAnimation(androidWindowInsets.f4915a, -1L, null, windowInsetsNestedScrollConnection.f5090h, windowInsetsNestedScrollConnection);
                                windowInsetsNestedScrollConnection = windowInsetsNestedScrollConnection;
                            } else {
                                j3 = 0;
                            }
                        }
                        result = cancellableContinuationImpl.getResult();
                    } else {
                        j3 = 0;
                        result = windowInsetsAnimationController2;
                    }
                    if (result != coroutineSingletons) {
                        obj = result;
                        f3 = f2;
                        j4 = j2;
                    }
                    return coroutineSingletons;
                }
            }
            Velocity.f11029b.getClass();
            return new Velocity(0L);
        }
        if (i3 != 1) {
            if (i3 == 2) {
                j5 = windowInsetsNestedScrollConnection$fling$2.f5096b;
                ref$FloatRef = windowInsetsNestedScrollConnection$fling$2.d;
                ResultKt.b(obj2);
                return new Velocity(sideCalculator.f(ref$FloatRef.f71918b, j5));
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j6 = windowInsetsNestedScrollConnection$fling$2.f5096b;
            ResultKt.b(obj2);
            f4 = 0.0f;
            return new Velocity(sideCalculator.f(f4, j6));
        }
        float f5 = windowInsetsNestedScrollConnection$fling$2.f5097c;
        j4 = windowInsetsNestedScrollConnection$fling$2.f5096b;
        ResultKt.b(obj2);
        f3 = f5;
        obj = obj2;
        j3 = 0;
        WindowInsetsAnimationController windowInsetsAnimationController3 = (WindowInsetsAnimationController) obj;
        if (windowInsetsAnimationController3 == null) {
            Velocity.f11029b.getClass();
            return new Velocity(j3);
        }
        int iE = sideCalculator.e(windowInsetsAnimationController3.getHiddenStateInsets());
        int iE2 = sideCalculator.e(windowInsetsAnimationController3.getShownStateInsets());
        int iE3 = sideCalculator.e(windowInsetsAnimationController3.getCurrentInsets());
        if ((f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM && iE3 == iE) || (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && iE3 == iE2)) {
            windowInsetsAnimationController3.finish(iE3 == iE2);
            windowInsetsNestedScrollConnection.f5089f = null;
            Velocity.f11029b.getClass();
            return new Velocity(j3);
        }
        long j7 = j4;
        SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec = new SplineBasedFloatDecayAnimationSpec(windowInsetsNestedScrollConnection.f5088e);
        float f6 = iE3 + splineBasedFloatDecayAnimationSpec.f(f3);
        float f7 = iE;
        boolean z2 = (f6 - f7) / ((float) (iE2 - iE)) > 0.5f;
        if (z2) {
            iE = iE2;
        }
        if (f6 > iE2 || f6 < f7) {
            Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            WindowInsetsNestedScrollConnection$fling$2 windowInsetsNestedScrollConnection$fling$3 = new WindowInsetsNestedScrollConnection$fling$2(f3, iE3, iE, iE2, windowInsetsAnimationController3, splineBasedFloatDecayAnimationSpec, this, null, ref$FloatRef2, z2);
            windowInsetsNestedScrollConnection$fling$2.d = ref$FloatRef2;
            windowInsetsNestedScrollConnection$fling$2.f5096b = j7;
            windowInsetsNestedScrollConnection$fling$2.g = 2;
            if (CoroutineScopeKt.d(windowInsetsNestedScrollConnection$fling$3, windowInsetsNestedScrollConnection$fling$2) != coroutineSingletons) {
                ref$FloatRef = ref$FloatRef2;
                j5 = j7;
                return new Velocity(sideCalculator.f(ref$FloatRef.f71918b, j5));
            }
        } else {
            WindowInsetsNestedScrollConnection$fling$3 windowInsetsNestedScrollConnection$fling$4 = new WindowInsetsNestedScrollConnection$fling$3(f3, iE3, iE, windowInsetsAnimationController3, windowInsetsNestedScrollConnection, null, z2);
            windowInsetsNestedScrollConnection$fling$2.f5096b = j7;
            windowInsetsNestedScrollConnection$fling$2.g = 3;
            if (CoroutineScopeKt.d(windowInsetsNestedScrollConnection$fling$4, windowInsetsNestedScrollConnection$fling$2) != coroutineSingletons) {
                j6 = j7;
                f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                return new Velocity(sideCalculator.f(f4, j6));
            }
        }
        return coroutineSingletons;
    }

    public final long e(float f2, long j2) {
        Job job = this.f5092j;
        if (job != null) {
            job.cancel(new WindowInsetsAnimationCancelledException());
            this.f5092j = null;
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.f5089f;
        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            AndroidWindowInsets androidWindowInsets = this.f5086b;
            if (((Boolean) ((SnapshotMutableStateImpl) androidWindowInsets.d).getF10755b()).booleanValue() != (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) || windowInsetsAnimationController != null) {
                SideCalculator sideCalculator = this.d;
                if (windowInsetsAnimationController == null) {
                    this.f5091i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    if (!this.g) {
                        this.g = true;
                        WindowInsetsController windowInsetsController = this.f5087c.getWindowInsetsController();
                        if (windowInsetsController != null) {
                            windowInsetsController.controlWindowInsetsAnimation(androidWindowInsets.f4915a, -1L, null, this.f5090h, this);
                        }
                    }
                    return sideCalculator.g(j2);
                }
                int iE = sideCalculator.e(windowInsetsAnimationController.getHiddenStateInsets());
                int iE2 = sideCalculator.e(windowInsetsAnimationController.getShownStateInsets());
                Insets currentInsets = windowInsetsAnimationController.getCurrentInsets();
                int iE3 = sideCalculator.e(currentInsets);
                if (iE3 == (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? iE2 : iE)) {
                    this.f5091i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    Offset.f8806b.getClass();
                    return 0L;
                }
                float f3 = iE3 + f2 + this.f5091i;
                int iD = RangesKt.d(Math.round(f3), iE, iE2);
                this.f5091i = f3 - Math.round(f3);
                if (iD != iE3) {
                    windowInsetsAnimationController.setInsetsAndAlpha(sideCalculator.c(currentInsets, iD), 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                return sideCalculator.g(j2);
            }
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        return e(this.d.d(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j2))), j2);
    }

    public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
        b();
    }

    public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
        b();
    }

    public final void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i2) {
        this.f5089f = windowInsetsAnimationController;
        this.g = false;
        CancellableContinuationImpl cancellableContinuationImpl = this.f5093k;
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.resume(windowInsetsAnimationController, new c71());
        }
        this.f5093k = null;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object y1(long j2, Continuation continuation) {
        return d(j2, this.d.d(Velocity.b(j2), Velocity.c(j2)), false, (ContinuationImpl) continuation);
    }
}
