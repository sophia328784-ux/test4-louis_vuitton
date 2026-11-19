package androidx.compose.ui.layout;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMap;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010-\u001a\u00020'2\u0006\u0010.\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0002J\u001e\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00102\f\u00101\u001a\b\u0012\u0004\u0012\u00020)02H\u0016J\u0010\u00103\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u00104\u001a\u00020'2\u0006\u0010.\u001a\u00020\u0014H\u0002J\u0018\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0006\u00100\u001a\u00020\u0010H\u0016J\u0010\u00108\u001a\u00020'2\u0006\u00100\u001a\u00020\u0010H\u0002J\b\u00109\u001a\u00020'H\u0016J\u0010\u0010:\u001a\u00020'2\u0006\u00106\u001a\u000207H\u0016J\u0010\u0010;\u001a\u00020'2\u0006\u00106\u001a\u000207H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0017\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u0006<"}, d2 = {"Landroidx/compose/ui/layout/InsetsListener;", "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;", "Ljava/lang/Runnable;", "Landroidx/core/view/OnApplyWindowInsetsListener;", "Landroid/view/View$OnAttachStateChangeListener;", "composeView", "Landroidx/compose/ui/platform/AndroidComposeView;", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;)V", "getComposeView", "()Landroidx/compose/ui/platform/AndroidComposeView;", "prepared", "", "runningAnimationMask", "", "savedInsets", "Landroidx/core/view/WindowInsetsCompat;", "insetsValues", "Landroidx/collection/ScatterMap;", "", "Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;", "getInsetsValues", "()Landroidx/collection/ScatterMap;", "generation", "Landroidx/compose/runtime/MutableIntState;", "getGeneration", "()Landroidx/compose/runtime/MutableIntState;", "displayCutouts", "Landroidx/collection/MutableObjectList;", "Landroidx/compose/runtime/MutableState;", "Landroid/graphics/Rect;", "getDisplayCutouts", "()Landroidx/collection/MutableObjectList;", "displayCutoutRulers", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "Landroidx/compose/ui/layout/RectRulers;", "getDisplayCutoutRulers", "()Landroidx/compose/runtime/snapshots/SnapshotStateList;", "onPrepare", "", "animation", "Landroidx/core/view/WindowInsetsAnimationCompat;", "onStart", "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;", "bounds", "updateInsetAnimationInfo", "insetsValue", "onProgress", "insets", "runningAnimations", "", "onEnd", "stopAnimationForRuler", "onApplyWindowInsets", "view", "Landroid/view/View;", "updateInsets", "run", "onViewAttachedToWindow", "onViewDetachedFromWindow", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InsetsListener extends WindowInsetsAnimationCompat.Callback implements Runnable, OnApplyWindowInsetsListener, View.OnAttachStateChangeListener {
    public static final int $stable = 8;
    private final AndroidComposeView composeView;
    private final SnapshotStateList<RectRulers> displayCutoutRulers;
    private final MutableObjectList<MutableState<Rect>> displayCutouts;
    private final MutableIntState generation;
    private final ScatterMap<Object, WindowWindowInsetsAnimationValues> insetsValues;
    private boolean prepared;
    private int runningAnimationMask;
    private WindowInsetsCompat savedInsets;

    public InsetsListener(AndroidComposeView androidComposeView) {
        super(1);
        this.composeView = androidComposeView;
        MutableScatterMap mutableScatterMap = new MutableScatterMap(9);
        WindowInsetsRulers.Companion companion = WindowInsetsRulers.f9589a;
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9591b, new WindowWindowInsetsAnimationValues("caption bar"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9592c, new WindowWindowInsetsAnimationValues("display cutout"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.d, new WindowWindowInsetsAnimationValues("ime"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9593e, new WindowWindowInsetsAnimationValues("mandatory system gestures"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9594f, new WindowWindowInsetsAnimationValues("navigation bars"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.g, new WindowWindowInsetsAnimationValues("status bars"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9595h, new WindowWindowInsetsAnimationValues("system gestures"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9596i, new WindowWindowInsetsAnimationValues("tappable element"));
        companion.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.f9597j, new WindowWindowInsetsAnimationValues("waterfall"));
        this.insetsValues = mutableScatterMap;
        this.generation = SnapshotIntStateKt.a(0);
        this.displayCutouts = new MutableObjectList<>(4);
        this.displayCutoutRulers = new SnapshotStateList<>();
    }

    private final void stopAnimationForRuler(WindowWindowInsetsAnimationValues insetsValue) {
        ((SnapshotMutableStateImpl) insetsValue.f9603b).setValue(Boolean.FALSE);
        insetsValue.f9609j = -1L;
        insetsValue.f9610k = -1L;
    }

    private final void updateInsetAnimationInfo(WindowWindowInsetsAnimationValues insetsValue, WindowInsetsAnimationCompat animation) {
        ((SnapshotMutableFloatStateImpl) insetsValue.f9604c).w(animation.d());
        ((SnapshotMutableFloatStateImpl) insetsValue.f9605e).w(animation.a());
        ((SnapshotMutableLongStateImpl) insetsValue.d).D(animation.b());
    }

    private final void updateInsets(WindowInsetsCompat insets) {
        char c2;
        char c3;
        boolean z;
        char c4;
        boolean z2;
        boolean z3;
        long j2;
        long[] jArr;
        int[] iArr;
        Object[] objArr;
        Object[] objArr2;
        int i2;
        MutableIntObjectMap mutableIntObjectMap = WindowInsetsRulers_androidKt.f9600a;
        int[] iArr2 = mutableIntObjectMap.f3259b;
        Object[] objArr3 = mutableIntObjectMap.f3260c;
        long[] jArr2 = mutableIntObjectMap.f3258a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i3 = 0;
            z2 = false;
            z3 = false;
            c2 = 16;
            c3 = ' ';
            while (true) {
                long j3 = jArr2[i3];
                z = true;
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i3 - length)) >>> 31);
                    int i6 = 0;
                    c4 = '0';
                    while (i6 < i5) {
                        if ((j3 & 255) < 128) {
                            int i7 = (i3 << 3) + i6;
                            int i8 = iArr2[i7];
                            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) objArr3[i7];
                            Insets insetsE = insets.e(i8);
                            long j4 = (((long) insetsE.f12054a) << 48) | (((long) insetsE.f12055b) << 32) | (((long) insetsE.f12056c) << 16) | ((long) insetsE.d);
                            Object objE = this.insetsValues.e(windowInsetsRulers);
                            objE.getClass();
                            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) objE;
                            if (!ValueInsets.a(j4, windowWindowInsetsAnimationValues.f9607h)) {
                                windowWindowInsetsAnimationValues.f9607h = j4;
                                z2 = true;
                                if (!ValueInsets.a(j4, 0L)) {
                                    z3 = true;
                                }
                            }
                            if (i8 != 8) {
                                Insets insetsF = insets.f(i8);
                                objArr2 = objArr3;
                                long j5 = (((long) insetsF.f12055b) << 32) | (((long) insetsF.f12054a) << 48) | (((long) insetsF.f12056c) << 16) | ((long) insetsF.d);
                                if (!ValueInsets.a(windowWindowInsetsAnimationValues.f9608i, j5)) {
                                    windowWindowInsetsAnimationValues.f9608i = j5;
                                    z2 = true;
                                    if (!ValueInsets.a(j5, 0L)) {
                                        z3 = true;
                                    }
                                }
                            } else {
                                objArr2 = objArr3;
                            }
                            ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.f9602a).setValue(Boolean.valueOf(insets.o(i8)));
                            i2 = 8;
                        } else {
                            objArr2 = objArr3;
                            i2 = i4;
                        }
                        j3 >>= i2;
                        i6++;
                        i4 = i2;
                        objArr3 = objArr2;
                        jArr2 = jArr2;
                        iArr2 = iArr2;
                    }
                    jArr = jArr2;
                    iArr = iArr2;
                    objArr = objArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr2;
                    iArr = iArr2;
                    objArr = objArr3;
                    c4 = '0';
                }
                if (i3 == length) {
                    break;
                }
                i3++;
                objArr3 = objArr;
                jArr2 = jArr;
                iArr2 = iArr;
            }
        } else {
            c2 = 16;
            c3 = ' ';
            z = true;
            c4 = '0';
            z2 = false;
            z3 = false;
        }
        DisplayCutoutCompat displayCutoutCompatD = insets.d();
        if (displayCutoutCompatD == null) {
            j2 = 0;
        } else {
            Insets insetsC = displayCutoutCompatD.c();
            j2 = (((long) insetsC.f12054a) << c4) | (((long) insetsC.f12055b) << c3) | (((long) insetsC.f12056c) << c2) | ((long) insetsC.d);
        }
        ScatterMap<Object, WindowWindowInsetsAnimationValues> scatterMap = this.insetsValues;
        WindowInsetsRulers.f9589a.getClass();
        Object objE2 = scatterMap.e(WindowInsetsRulers.Companion.f9597j);
        objE2.getClass();
        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues2 = (WindowWindowInsetsAnimationValues) objE2;
        ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues2.f9602a).setValue(Boolean.valueOf(!ValueInsets.a(j2, 0L)));
        if (!ValueInsets.a(windowWindowInsetsAnimationValues2.f9607h, j2)) {
            windowWindowInsetsAnimationValues2.f9607h = j2;
            windowWindowInsetsAnimationValues2.f9608i = j2;
            z2 = z;
            if (!ValueInsets.a(j2, 0L)) {
                z3 = z2;
            }
        }
        if (displayCutoutCompatD == null) {
            MutableObjectList<MutableState<Rect>> mutableObjectList = this.displayCutouts;
            if (mutableObjectList.f3346b > 0) {
                mutableObjectList.k();
                this.displayCutoutRulers.clear();
                z2 = z;
            }
        } else {
            List<Rect> boundingRects = displayCutoutCompatD.f12165a.getBoundingRects();
            int size = boundingRects.size();
            MutableObjectList<MutableState<Rect>> mutableObjectList2 = this.displayCutouts;
            if (size < mutableObjectList2.f3346b) {
                mutableObjectList2.n(boundingRects.size(), this.displayCutouts.f3346b);
                this.displayCutoutRulers.a(boundingRects.size(), this.displayCutoutRulers.size());
                z2 = z;
            } else {
                int size2 = boundingRects.size() - this.displayCutouts.f3346b;
                int i9 = 0;
                while (i9 < size2) {
                    MutableObjectList<MutableState<Rect>> mutableObjectList3 = this.displayCutouts;
                    mutableObjectList3.g(SnapshotStateKt.g(boundingRects.get(mutableObjectList3.f3346b)));
                    this.displayCutoutRulers.add(new RectRulersImpl("display cutout rect " + this.displayCutouts.f3346b));
                    i9++;
                    z2 = z;
                }
            }
            List<Rect> list = boundingRects;
            int size3 = list.size();
            for (int i10 = 0; i10 < size3; i10++) {
                Rect rect = boundingRects.get(i10);
                MutableState mutableState = (MutableState) this.displayCutouts.b(i10);
                if (!Intrinsics.c(mutableState.getF10755b(), rect)) {
                    mutableState.setValue(rect);
                    z2 = z;
                }
            }
            if (!list.isEmpty()) {
                z3 = z;
            }
        }
        if ((z3 || this.generation.f() != 0) && z2) {
            MutableIntState mutableIntState = this.generation;
            mutableIntState.i(mutableIntState.f() + 1);
            Snapshot.f8462e.getClass();
            Snapshot.Companion.f();
        }
    }

    public final AndroidComposeView getComposeView() {
        return this.composeView;
    }

    public final SnapshotStateList<RectRulers> getDisplayCutoutRulers() {
        return this.displayCutoutRulers;
    }

    public final MutableObjectList<MutableState<Rect>> getDisplayCutouts() {
        return this.displayCutouts;
    }

    public final MutableIntState getGeneration() {
        return this.generation;
    }

    public final ScatterMap<Object, WindowWindowInsetsAnimationValues> getInsetsValues() {
        return this.insetsValues;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat insets) {
        if (this.prepared) {
            this.savedInsets = insets;
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
                return insets;
            }
        } else if (this.runningAnimationMask == 0) {
            updateInsets(insets);
        }
        return insets;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(WindowInsetsAnimationCompat animation) {
        this.prepared = false;
        int iF = animation.f();
        this.runningAnimationMask &= ~iF;
        this.savedInsets = null;
        WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.f9600a.b(iF);
        if (windowInsetsRulers != null) {
            Object objE = this.insetsValues.e(windowInsetsRulers);
            objE.getClass();
            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) objE;
            MutableFloatState mutableFloatState = windowWindowInsetsAnimationValues.f9604c;
            ((SnapshotMutableFloatStateImpl) mutableFloatState).w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            ((SnapshotMutableFloatStateImpl) windowWindowInsetsAnimationValues.f9605e).w(1.0f);
            ((SnapshotMutableLongStateImpl) windowWindowInsetsAnimationValues.d).D(0L);
            ((SnapshotMutableFloatStateImpl) mutableFloatState).w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            stopAnimationForRuler(windowWindowInsetsAnimationValues);
            MutableIntState mutableIntState = this.generation;
            mutableIntState.i(mutableIntState.f() + 1);
            Snapshot.f8462e.getClass();
            Snapshot.Companion.f();
        }
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(WindowInsetsAnimationCompat animation) {
        this.prepared = true;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsCompat onProgress(WindowInsetsCompat insets, List<WindowInsetsAnimationCompat> runningAnimations) {
        int size = runningAnimations.size();
        for (int i2 = 0; i2 < size; i2++) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = runningAnimations.get(i2);
            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.f9600a.b(windowInsetsAnimationCompat.f());
            if (windowInsetsRulers != null) {
                Object objE = this.insetsValues.e(windowInsetsRulers);
                objE.getClass();
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) objE;
                if (((Boolean) ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.f9603b).getF10755b()).booleanValue()) {
                    updateInsetAnimationInfo(windowWindowInsetsAnimationValues, windowInsetsAnimationCompat);
                }
            }
        }
        updateInsets(insets);
        return insets;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat animation, WindowInsetsAnimationCompat.BoundsCompat bounds) {
        WindowInsetsCompat windowInsetsCompat = this.savedInsets;
        this.prepared = false;
        this.savedInsets = null;
        if (animation.b() > 0 && windowInsetsCompat != null) {
            int iF = animation.f();
            this.runningAnimationMask |= iF;
            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.f9600a.b(iF);
            if (windowInsetsRulers != null) {
                Object objE = this.insetsValues.e(windowInsetsRulers);
                objE.getClass();
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) objE;
                Insets insetsE = windowInsetsCompat.e(iF);
                long j2 = ((long) insetsE.d) | (((long) insetsE.f12054a) << 48) | (((long) insetsE.f12055b) << 32) | (((long) insetsE.f12056c) << 16);
                long j3 = windowWindowInsetsAnimationValues.f9607h;
                if (!ValueInsets.a(j2, j3)) {
                    windowWindowInsetsAnimationValues.f9609j = j3;
                    windowWindowInsetsAnimationValues.f9610k = j2;
                    ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.f9603b).setValue(Boolean.TRUE);
                    updateInsetAnimationInfo(windowWindowInsetsAnimationValues, animation);
                    MutableIntState mutableIntState = this.generation;
                    mutableIntState.i(mutableIntState.f() + 1);
                    Snapshot.f8462e.getClass();
                    Snapshot.Companion.f();
                }
            }
        }
        return bounds;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            view = view2;
        }
        ViewCompat.x(view, this);
        ViewCompat.A(view, this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            view = view2;
        }
        ViewCompat.x(view, null);
        ViewCompat.A(view, null);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prepared) {
            this.runningAnimationMask = 0;
            this.prepared = false;
            WindowInsetsCompat windowInsetsCompat = this.savedInsets;
            if (windowInsetsCompat != null) {
                updateInsets(windowInsetsCompat);
                this.savedInsets = null;
            }
        }
    }
}
