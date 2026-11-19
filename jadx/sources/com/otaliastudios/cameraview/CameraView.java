package com.otaliastudios.cameraview;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.location.Location;
import android.media.MediaActionSound;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.otaliastudios.cameraview.controls.Audio;
import com.otaliastudios.cameraview.controls.AudioCodec;
import com.otaliastudios.cameraview.controls.Control;
import com.otaliastudios.cameraview.controls.ControlParser;
import com.otaliastudios.cameraview.controls.Engine;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Grid;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.Mode;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.Preview;
import com.otaliastudios.cameraview.controls.VideoCodec;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.Camera1Engine;
import com.otaliastudios.cameraview.engine.Camera2Engine;
import com.otaliastudios.cameraview.engine.CameraBaseEngine;
import com.otaliastudios.cameraview.engine.CameraEngine;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.engine.orchestrator.CameraState;
import com.otaliastudios.cameraview.filter.Filter;
import com.otaliastudios.cameraview.filter.FilterParser;
import com.otaliastudios.cameraview.filter.NoFilter;
import com.otaliastudios.cameraview.filter.OneParameterFilter;
import com.otaliastudios.cameraview.filter.TwoParameterFilter;
import com.otaliastudios.cameraview.frame.Frame;
import com.otaliastudios.cameraview.frame.FrameProcessor;
import com.otaliastudios.cameraview.gesture.Gesture;
import com.otaliastudios.cameraview.gesture.GestureAction;
import com.otaliastudios.cameraview.gesture.GestureFinder;
import com.otaliastudios.cameraview.gesture.GestureParser;
import com.otaliastudios.cameraview.gesture.PinchGestureFinder;
import com.otaliastudios.cameraview.gesture.ScrollGestureFinder;
import com.otaliastudios.cameraview.gesture.TapGestureFinder;
import com.otaliastudios.cameraview.internal.CropHelper;
import com.otaliastudios.cameraview.internal.GridLinesLayout;
import com.otaliastudios.cameraview.internal.OrientationHelper;
import com.otaliastudios.cameraview.markers.AutoFocusMarker;
import com.otaliastudios.cameraview.markers.MarkerLayout;
import com.otaliastudios.cameraview.markers.MarkerParser;
import com.otaliastudios.cameraview.metering.MeteringRegions;
import com.otaliastudios.cameraview.overlay.OverlayLayout;
import com.otaliastudios.cameraview.preview.CameraPreview;
import com.otaliastudios.cameraview.preview.FilterCameraPreview;
import com.otaliastudios.cameraview.preview.GlCameraPreview;
import com.otaliastudios.cameraview.preview.SurfaceCameraPreview;
import com.otaliastudios.cameraview.preview.TextureCameraPreview;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import com.otaliastudios.cameraview.size.SizeSelector;
import com.otaliastudios.cameraview.size.SizeSelectorParser;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.v7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class CameraView extends FrameLayout implements LifecycleObserver {
    public static final CameraLogger E = CameraLogger.a("CameraView");
    public MarkerLayout A;
    public boolean B;
    public boolean C;
    public OverlayLayout D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f38832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f38833c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f38834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Preview f38835f;
    public Engine g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Filter f38836h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f38837i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f38838j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Handler f38839k;
    public ThreadPoolExecutor l;
    public CameraCallbacks m;
    public CameraPreview n;
    public OrientationHelper o;
    public CameraBaseEngine p;
    public Size q;
    public MediaActionSound r;
    public AutoFocusMarker s;
    public final CopyOnWriteArrayList t;
    public final CopyOnWriteArrayList u;
    public Lifecycle v;
    public PinchGestureFinder w;
    public TapGestureFinder x;
    public ScrollGestureFinder y;
    public GridLinesLayout z;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.CameraView$7, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass7 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f38841a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f38842b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f38843c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[Facing.values().length];
            d = iArr;
            try {
                iArr[Facing.BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[Facing.FRONT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[GestureAction.values().length];
            f38843c = iArr2;
            try {
                iArr2[GestureAction.TAKE_PICTURE_SNAPSHOT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38843c[GestureAction.TAKE_PICTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38843c[GestureAction.AUTO_FOCUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38843c[GestureAction.ZOOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38843c[GestureAction.EXPOSURE_CORRECTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38843c[GestureAction.FILTER_CONTROL_1.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38843c[GestureAction.FILTER_CONTROL_2.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr3 = new int[Gesture.values().length];
            f38842b = iArr3;
            try {
                iArr3[Gesture.PINCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38842b[Gesture.TAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38842b[Gesture.LONG_TAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38842b[Gesture.SCROLL_HORIZONTAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38842b[Gesture.SCROLL_VERTICAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr4 = new int[Preview.values().length];
            f38841a = iArr4;
            try {
                iArr4[Preview.SURFACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38841a[Preview.TEXTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38841a[Preview.GL_SURFACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public class CameraCallbacks implements CameraEngine.Callback, OrientationHelper.Callback, GestureFinder.Controller {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CameraLogger f38844a = CameraLogger.a(CameraCallbacks.class.getSimpleName());

        public CameraCallbacks() {
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void a(final Frame frame) {
            Long lValueOf = Long.valueOf(frame.a());
            CameraView cameraView = CameraView.this;
            CopyOnWriteArrayList copyOnWriteArrayList = cameraView.u;
            this.f38844a.b(0, "dispatchFrame:", lValueOf, "processors:", Integer.valueOf(copyOnWriteArrayList.size()));
            if (copyOnWriteArrayList.isEmpty()) {
                frame.b();
            } else {
                cameraView.l.execute(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.12
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraCallbacks.this.f38844a.b(0, "dispatchFrame: executing. Passing", Long.valueOf(frame.a()), "to processors.");
                        Iterator it = CameraView.this.u.iterator();
                        while (it.hasNext()) {
                            try {
                                ((FrameProcessor) it.next()).a();
                            } catch (Exception e2) {
                                CameraCallbacks.this.f38844a.b(2, "Frame processor crashed:", e2);
                            }
                        }
                        frame.b();
                    }
                });
            }
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void b(final CameraOptions cameraOptions) {
            this.f38844a.b(1, "dispatchOnCameraOpened", cameraOptions);
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void c() {
            this.f38844a.b(1, "dispatchOnCameraClosed");
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void d(final Gesture gesture, final boolean z, final PointF pointF) {
            this.f38844a.b(1, "dispatchOnFocusEnd", gesture, Boolean.valueOf(z), pointF);
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.8
                @Override // java.lang.Runnable
                public void run() {
                    CameraView cameraView;
                    boolean z2;
                    if (z && (z2 = (cameraView = CameraView.this).f38832b) && z2) {
                        if (cameraView.r == null) {
                            cameraView.r = new MediaActionSound();
                        }
                        cameraView.r.play(1);
                    }
                    AutoFocusMarker autoFocusMarker = CameraView.this.s;
                    if (autoFocusMarker != null) {
                        autoFocusMarker.c();
                    }
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void e(final PictureResult.Stub stub) {
            this.f38844a.b(1, "dispatchOnPictureTaken", stub);
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.5
                @Override // java.lang.Runnable
                public void run() {
                    PictureResult pictureResult = new PictureResult(stub);
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).a(pictureResult);
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void f(boolean z) {
            boolean z2;
            CameraView cameraView = CameraView.this;
            if (z && (z2 = cameraView.f38832b) && z2) {
                if (cameraView.r == null) {
                    cameraView.r = new MediaActionSound();
                }
                cameraView.r.play(0);
            }
            cameraView.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.4
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void g(final Gesture gesture, final PointF pointF) {
            this.f38844a.b(1, "dispatchOnFocusStart", gesture, pointF);
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.7
                @Override // java.lang.Runnable
                public void run() {
                    MarkerLayout markerLayout = CameraView.this.A;
                    PointF[] pointFArr = {pointF};
                    View view = (View) markerLayout.f39025b.get(1);
                    if (view != null) {
                        view.clearAnimation();
                        PointF pointF2 = pointFArr[0];
                        float width = (int) (pointF2.x - (view.getWidth() / 2));
                        float height = (int) (pointF2.y - (view.getHeight() / 2));
                        view.setTranslationX(width);
                        view.setTranslationY(height);
                    }
                    AutoFocusMarker autoFocusMarker = CameraView.this.s;
                    if (autoFocusMarker != null) {
                        autoFocusMarker.a();
                    }
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback, com.otaliastudios.cameraview.gesture.GestureFinder.Controller
        public final Context getContext() {
            return CameraView.this.getContext();
        }

        @Override // com.otaliastudios.cameraview.gesture.GestureFinder.Controller
        public final int getHeight() {
            return CameraView.this.getHeight();
        }

        @Override // com.otaliastudios.cameraview.gesture.GestureFinder.Controller
        public final int getWidth() {
            return CameraView.this.getWidth();
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void h(final float f2, final float[] fArr, final PointF[] pointFArr) {
            this.f38844a.b(1, "dispatchOnExposureCorrectionChanged", Float.valueOf(f2));
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.11
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void i(final CameraException cameraException) {
            this.f38844a.b(1, "dispatchError", cameraException);
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.13
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.internal.OrientationHelper.Callback
        public final void j(int i2) {
            this.f38844a.b(1, "onDeviceOrientationChanged", Integer.valueOf(i2));
            CameraView cameraView = CameraView.this;
            int i3 = cameraView.o.g;
            boolean z = cameraView.f38833c;
            CameraBaseEngine cameraBaseEngine = cameraView.p;
            if (z) {
                Angles angles = cameraBaseEngine.D;
                angles.getClass();
                Angles.e(i2);
                angles.d = i2;
                angles.d();
            } else {
                int i4 = (360 - i3) % 360;
                Angles angles2 = cameraBaseEngine.D;
                angles2.getClass();
                Angles.e(i4);
                angles2.d = i4;
                angles2.d();
            }
            final int i5 = (i2 + i3) % 360;
            cameraView.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.9
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void k() {
            CameraView cameraView = CameraView.this;
            Size sizeQ = cameraView.p.q(Reference.VIEW);
            if (sizeQ == null) {
                v7.h("Preview stream size should not be null here.");
                return;
            }
            boolean zEquals = sizeQ.equals(cameraView.q);
            CameraLogger cameraLogger = this.f38844a;
            if (zEquals) {
                cameraLogger.b(1, "onCameraPreviewStreamSizeChanged:", "swallowing because the preview size has not changed.", sizeQ);
            } else {
                cameraLogger.b(1, "onCameraPreviewStreamSizeChanged: posting a requestLayout call.", "Preview stream size:", sizeQ);
                cameraView.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.3
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraView.this.requestLayout();
                    }
                });
            }
        }

        @Override // com.otaliastudios.cameraview.internal.OrientationHelper.Callback
        public final void l() {
            CameraView cameraView = CameraView.this;
            if (cameraView.d()) {
                this.f38844a.b(2, "onDisplayOffsetChanged", "restarting the camera.");
                cameraView.close();
                cameraView.open();
            }
        }

        @Override // com.otaliastudios.cameraview.engine.CameraEngine.Callback
        public final void m(final float f2, final PointF[] pointFArr) {
            this.f38844a.b(1, "dispatchOnZoomChanged", Float.valueOf(f2));
            CameraView.this.f38839k.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraView.CameraCallbacks.10
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = CameraView.this.t.iterator();
                    while (it.hasNext()) {
                        ((CameraListener) it.next()).getClass();
                    }
                }
            });
        }
    }

    public CameraView(Context context) {
        super(context, null);
        this.f38834e = new HashMap(4);
        this.t = new CopyOnWriteArrayList();
        this.u = new CopyOnWriteArrayList();
        c(context, null);
    }

    public final boolean a(Audio audio) {
        if (audio == Audio.ON || audio == Audio.MONO || audio == Audio.STEREO) {
            try {
                String[] strArr = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 4096).requestedPermissions;
                int length = strArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        throw new IllegalStateException(E.b(3, "Permission error: when audio is enabled (Audio.ON) the RECORD_AUDIO permission should be added to the app manifest file."));
                    }
                    if (strArr[i2].equals("android.permission.RECORD_AUDIO")) {
                        break;
                    }
                    i2++;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        Context context = getContext();
        boolean z = audio == Audio.ON || audio == Audio.MONO || audio == Audio.STEREO;
        boolean z2 = context.checkSelfPermission("android.permission.CAMERA") != 0;
        boolean z3 = z && context.checkSelfPermission("android.permission.RECORD_AUDIO") != 0;
        if (!z2 && !z3) {
            return true;
        }
        if (this.d) {
            Activity activity = null;
            for (Context context2 = getContext(); context2 instanceof ContextWrapper; context2 = ((ContextWrapper) context2).getBaseContext()) {
                if (context2 instanceof Activity) {
                    activity = (Activity) context2;
                }
            }
            ArrayList arrayList = new ArrayList();
            if (z2) {
                arrayList.add("android.permission.CAMERA");
            }
            if (z3) {
                arrayList.add("android.permission.RECORD_AUDIO");
            }
            if (activity != null) {
                activity.requestPermissions((String[]) arrayList.toArray(new String[0]), 16);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!this.C) {
            this.D.getClass();
            if (layoutParams instanceof OverlayLayout.LayoutParams) {
                this.D.addView(view, layoutParams);
                return;
            }
        }
        super.addView(view, i2, layoutParams);
    }

    public final void b() {
        CameraBaseEngine camera1Engine;
        Object[] objArr = {"doInstantiateEngine:", "instantiating. engine:", this.g};
        CameraLogger cameraLogger = E;
        cameraLogger.b(2, objArr);
        Engine engine = this.g;
        CameraCallbacks cameraCallbacks = this.m;
        if (this.B && engine == Engine.CAMERA2) {
            camera1Engine = new Camera2Engine(cameraCallbacks);
        } else {
            this.g = Engine.CAMERA1;
            camera1Engine = new Camera1Engine(cameraCallbacks);
        }
        this.p = camera1Engine;
        cameraLogger.b(2, "doInstantiateEngine:", "instantiated. engine:", camera1Engine.getClass().getSimpleName());
        this.p.V = this.D;
    }

    public final void c(Context context, AttributeSet attributeSet) {
        boolean zIsInEditMode = isInEditMode();
        this.C = zIsInEditMode;
        if (zIsInEditMode) {
            return;
        }
        setWillNotDraw(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.f38852a, 0, 0);
        ControlParser controlParser = new ControlParser(context, typedArrayObtainStyledAttributes);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(37, true);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(44, true);
        this.B = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.d = typedArrayObtainStyledAttributes.getBoolean(41, true);
        this.f38835f = Preview.a(controlParser.f38854a);
        this.g = Engine.a(controlParser.f38862k);
        int color = typedArrayObtainStyledAttributes.getColor(22, GridLinesLayout.g);
        long j2 = (long) typedArrayObtainStyledAttributes.getFloat(48, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        int integer = typedArrayObtainStyledAttributes.getInteger(47, 0);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(45, 0);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(1, 0);
        float f2 = typedArrayObtainStyledAttributes.getFloat(39, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(40, false);
        long integer4 = typedArrayObtainStyledAttributes.getInteger(4, HarvestConfiguration.SLOW_START_THRESHOLD);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(26, true);
        boolean z5 = typedArrayObtainStyledAttributes.getBoolean(36, false);
        int integer5 = typedArrayObtainStyledAttributes.getInteger(43, 0);
        int integer6 = typedArrayObtainStyledAttributes.getInteger(42, 0);
        int integer7 = typedArrayObtainStyledAttributes.getInteger(14, 0);
        int integer8 = typedArrayObtainStyledAttributes.getInteger(13, 0);
        int integer9 = typedArrayObtainStyledAttributes.getInteger(12, 0);
        int integer10 = typedArrayObtainStyledAttributes.getInteger(15, 2);
        int integer11 = typedArrayObtainStyledAttributes.getInteger(11, 1);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(5, false);
        SizeSelectorParser sizeSelectorParser = new SizeSelectorParser(typedArrayObtainStyledAttributes);
        GestureParser gestureParser = new GestureParser(typedArrayObtainStyledAttributes);
        MarkerParser markerParser = new MarkerParser(typedArrayObtainStyledAttributes);
        FilterParser filterParser = new FilterParser(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        this.m = new CameraCallbacks();
        this.f38839k = new Handler(Looper.getMainLooper());
        this.w = new PinchGestureFinder(this.m);
        this.x = new TapGestureFinder(this.m);
        this.y = new ScrollGestureFinder(this.m);
        this.z = new GridLinesLayout(context);
        this.D = new OverlayLayout(context);
        this.A = new MarkerLayout(context);
        addView(this.z);
        addView(this.A);
        addView(this.D);
        b();
        setPlaySounds(z);
        setUseDeviceOrientation(z2);
        setGrid(Grid.a(controlParser.d));
        setGridColor(color);
        setDrawHardwareOverlays(z6);
        setFacing(Facing.a(controlParser.f38855b));
        setFlash(Flash.a(controlParser.f38856c));
        setMode(Mode.a(controlParser.f38858f));
        setWhiteBalance(WhiteBalance.a(controlParser.f38857e));
        setHdr(Hdr.a(controlParser.g));
        setAudio(Audio.a(controlParser.f38859h));
        setAudioBitRate(integer3);
        setAudioCodec(AudioCodec.a(controlParser.f38861j));
        setPictureSize(sizeSelectorParser.f39088a);
        setPictureMetering(z4);
        setPictureSnapshotMetering(z5);
        setPictureFormat(PictureFormat.a(controlParser.l));
        setVideoSize(sizeSelectorParser.f39089b);
        setVideoCodec(VideoCodec.a(controlParser.f38860i));
        setVideoMaxSize(j2);
        setVideoMaxDuration(integer);
        setVideoBitRate(integer2);
        setAutoFocusResetDelay(integer4);
        setPreviewFrameRateExact(z3);
        setPreviewFrameRate(f2);
        setSnapshotMaxWidth(integer5);
        setSnapshotMaxHeight(integer6);
        setFrameProcessingMaxWidth(integer7);
        setFrameProcessingMaxHeight(integer8);
        setFrameProcessingFormat(integer9);
        setFrameProcessingPoolSize(integer10);
        setFrameProcessingExecutors(integer11);
        e(Gesture.TAP, GestureAction.a(gestureParser.f38981a));
        e(Gesture.LONG_TAP, GestureAction.a(gestureParser.f38982b));
        e(Gesture.PINCH, GestureAction.a(gestureParser.f38983c));
        e(Gesture.SCROLL_HORIZONTAL, GestureAction.a(gestureParser.d));
        e(Gesture.SCROLL_VERTICAL, GestureAction.a(gestureParser.f38984e));
        setAutoFocusMarker(markerParser.f39026a);
        setFilter(filterParser.f38966a);
        this.o = new OrientationHelper(context, this.m);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void close() {
        if (this.C) {
            return;
        }
        OrientationHelper orientationHelper = this.o;
        if (orientationHelper.f39016h) {
            orientationHelper.f39016h = false;
            orientationHelper.d.disable();
            ((DisplayManager) orientationHelper.f39012b.getSystemService("display")).unregisterDisplayListener(orientationHelper.f39015f);
            orientationHelper.g = -1;
            orientationHelper.f39014e = -1;
        }
        this.p.P(false);
        CameraPreview cameraPreview = this.n;
        if (cameraPreview != null) {
            cameraPreview.n();
        }
    }

    public final boolean d() {
        CameraState cameraState = this.p.f38886e.f38958f;
        CameraState cameraState2 = CameraState.ENGINE;
        return cameraState.a(cameraState2) && this.p.f38886e.g.a(cameraState2);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void destroy() {
        if (this.C) {
            return;
        }
        this.t.clear();
        CopyOnWriteArrayList copyOnWriteArrayList = this.u;
        boolean z = copyOnWriteArrayList.size() > 0;
        copyOnWriteArrayList.clear();
        if (z) {
            this.p.E(false);
        }
        this.p.p(0, true);
        CameraPreview cameraPreview = this.n;
        if (cameraPreview != null) {
            cameraPreview.m();
        }
    }

    public final void e(Gesture gesture, GestureAction gestureAction) {
        GestureAction gestureAction2 = GestureAction.NONE;
        if (!gesture.a(gestureAction)) {
            e(gesture, gestureAction2);
            return;
        }
        HashMap map = this.f38834e;
        map.put(gesture, gestureAction);
        int i2 = AnonymousClass7.f38842b[gesture.ordinal()];
        if (i2 == 1) {
            this.w.f38978a = map.get(Gesture.PINCH) != gestureAction2;
        } else if (i2 == 2 || i2 == 3) {
            this.x.f38978a = (map.get(Gesture.TAP) == gestureAction2 && map.get(Gesture.LONG_TAP) == gestureAction2) ? false : true;
        } else if (i2 == 4 || i2 == 5) {
            this.y.f38978a = (map.get(Gesture.SCROLL_HORIZONTAL) == gestureAction2 && map.get(Gesture.SCROLL_VERTICAL) == gestureAction2) ? false : true;
        }
        this.f38838j = 0;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            this.f38838j += ((GestureAction) it.next()) == GestureAction.NONE ? 0 : 1;
        }
    }

    public final void f(GestureFinder gestureFinder, CameraOptions cameraOptions) {
        Gesture gesture = gestureFinder.f38979b;
        GestureAction gestureAction = (GestureAction) this.f38834e.get(gesture);
        PointF[] pointFArr = gestureFinder.f38980c;
        switch (AnonymousClass7.f38843c[gestureAction.ordinal()]) {
            case 1:
                this.p.h0(new PictureResult.Stub());
                break;
            case 2:
                this.p.g0(new PictureResult.Stub());
                break;
            case 3:
                this.p.N(gesture, MeteringRegions.a(new Size(getWidth(), getHeight()), pointFArr[0]), pointFArr[0]);
                break;
            case 4:
                float f2 = this.p.v;
                float fA = gestureFinder.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                if (fA != f2) {
                    this.p.L(fA, pointFArr, true);
                }
                break;
            case 5:
                float f3 = this.p.w;
                float f4 = cameraOptions.m;
                float f5 = cameraOptions.n;
                float fA2 = gestureFinder.a(f3, f4, f5);
                if (fA2 != f3) {
                    this.p.B(fA2, new float[]{f4, f5}, pointFArr, true);
                }
                break;
            case 6:
                if (getFilter() instanceof OneParameterFilter) {
                    OneParameterFilter oneParameterFilter = (OneParameterFilter) getFilter();
                    float fE = oneParameterFilter.e();
                    if (gestureFinder.a(fE, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) != fE) {
                        oneParameterFilter.j();
                    }
                }
                break;
            case 7:
                if (getFilter() instanceof TwoParameterFilter) {
                    TwoParameterFilter twoParameterFilter = (TwoParameterFilter) getFilter();
                    float fC = twoParameterFilter.c();
                    if (gestureFinder.a(fC, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) != fC) {
                        twoParameterFilter.i();
                    }
                }
                break;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (!this.C) {
            OverlayLayout overlayLayout = this.D;
            boolean z = false;
            if (attributeSet == null) {
                overlayLayout.getClass();
            } else {
                TypedArray typedArrayObtainStyledAttributes = overlayLayout.getContext().obtainStyledAttributes(attributeSet, R$styleable.f38853b);
                z = typedArrayObtainStyledAttributes.hasValue(1) || typedArrayObtainStyledAttributes.hasValue(0) || typedArrayObtainStyledAttributes.hasValue(2);
                typedArrayObtainStyledAttributes.recycle();
            }
            if (z) {
                OverlayLayout overlayLayout2 = this.D;
                overlayLayout2.getClass();
                return new OverlayLayout.LayoutParams(overlayLayout2.getContext(), attributeSet);
            }
        }
        return super.generateLayoutParams(attributeSet);
    }

    public Audio getAudio() {
        return this.p.J;
    }

    public int getAudioBitRate() {
        return this.p.N;
    }

    public AudioCodec getAudioCodec() {
        return this.p.r;
    }

    public long getAutoFocusResetDelay() {
        return this.p.O;
    }

    public CameraOptions getCameraOptions() {
        return this.p.f38879h;
    }

    public boolean getDrawHardwareOverlays() {
        return this.D.getHardwareCanvasEnabled();
    }

    public Engine getEngine() {
        return this.g;
    }

    public float getExposureCorrection() {
        return this.p.w;
    }

    public Facing getFacing() {
        return this.p.H;
    }

    public Filter getFilter() {
        Object obj = this.n;
        if (obj == null) {
            return this.f38836h;
        }
        if (obj instanceof FilterCameraPreview) {
            return ((FilterCameraPreview) obj).c();
        }
        md.j(this.f38835f, "Filters are only supported by the GL_SURFACE preview. Current:");
        return null;
    }

    public Flash getFlash() {
        return this.p.o;
    }

    public int getFrameProcessingExecutors() {
        return this.f38837i;
    }

    public int getFrameProcessingFormat() {
        return this.p.m;
    }

    public int getFrameProcessingMaxHeight() {
        return this.p.S;
    }

    public int getFrameProcessingMaxWidth() {
        return this.p.R;
    }

    public int getFrameProcessingPoolSize() {
        return this.p.T;
    }

    public Grid getGrid() {
        return this.z.getGridMode();
    }

    public int getGridColor() {
        return this.z.getGridColor();
    }

    public Hdr getHdr() {
        return this.p.s;
    }

    public Location getLocation() {
        return this.p.u;
    }

    public Mode getMode() {
        return this.p.I;
    }

    public PictureFormat getPictureFormat() {
        return this.p.t;
    }

    public boolean getPictureMetering() {
        return this.p.y;
    }

    public Size getPictureSize() {
        return this.p.V(Reference.OUTPUT);
    }

    public boolean getPictureSnapshotMetering() {
        return this.p.z;
    }

    public boolean getPlaySounds() {
        return this.f38832b;
    }

    public Preview getPreview() {
        return this.f38835f;
    }

    public float getPreviewFrameRate() {
        return this.p.A;
    }

    public boolean getPreviewFrameRateExact() {
        return this.p.B;
    }

    public int getSnapshotMaxHeight() {
        return this.p.Q;
    }

    public int getSnapshotMaxWidth() {
        return this.p.P;
    }

    public Size getSnapshotSize() {
        if (getWidth() == 0 || getHeight() == 0) {
            return null;
        }
        CameraBaseEngine cameraBaseEngine = this.p;
        Reference reference = Reference.VIEW;
        Size sizeY = cameraBaseEngine.Y(reference);
        if (sizeY == null) {
            return null;
        }
        Rect rectA = CropHelper.a(sizeY, AspectRatio.a(getWidth(), getHeight()));
        Size size = new Size(rectA.width(), rectA.height());
        return this.p.D.b(reference, Reference.OUTPUT) ? size.a() : size;
    }

    public boolean getUseDeviceOrientation() {
        return this.f38833c;
    }

    public int getVideoBitRate() {
        return this.p.M;
    }

    public VideoCodec getVideoCodec() {
        return this.p.q;
    }

    public int getVideoMaxDuration() {
        return this.p.L;
    }

    public long getVideoMaxSize() {
        return this.p.K;
    }

    public Size getVideoSize() {
        CameraBaseEngine cameraBaseEngine = this.p;
        Reference reference = Reference.OUTPUT;
        Size size = cameraBaseEngine.f38881j;
        if (size == null || cameraBaseEngine.I == Mode.PICTURE) {
            return null;
        }
        return cameraBaseEngine.D.b(Reference.SENSOR, reference) ? size.a() : size;
    }

    public WhiteBalance getWhiteBalance() {
        return this.p.p;
    }

    public float getZoom() {
        return this.p.v;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        CameraPreview surfaceCameraPreview;
        super.onAttachedToWindow();
        if (!this.C && this.n == null) {
            Object[] objArr = {"doInstantiateEngine:", "instantiating. preview:", this.f38835f};
            CameraLogger cameraLogger = E;
            cameraLogger.b(2, objArr);
            Preview preview = this.f38835f;
            Context context = getContext();
            int i2 = AnonymousClass7.f38841a[preview.ordinal()];
            if (i2 == 1) {
                surfaceCameraPreview = new SurfaceCameraPreview(context, this);
            } else if (i2 == 2 && isHardwareAccelerated()) {
                surfaceCameraPreview = new TextureCameraPreview(context, this);
            } else {
                this.f38835f = Preview.GL_SURFACE;
                surfaceCameraPreview = new GlCameraPreview(context, this);
            }
            this.n = surfaceCameraPreview;
            cameraLogger.b(2, "doInstantiateEngine:", "instantiated. preview:", surfaceCameraPreview.getClass().getSimpleName());
            CameraBaseEngine cameraBaseEngine = this.p;
            CameraPreview cameraPreview = this.n;
            CameraPreview cameraPreview2 = cameraBaseEngine.g;
            if (cameraPreview2 != null) {
                cameraPreview2.r(null);
            }
            cameraBaseEngine.g = cameraPreview;
            cameraPreview.r(cameraBaseEngine);
            Filter filter = this.f38836h;
            if (filter != null) {
                setFilter(filter);
                this.f38836h = null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.q = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f38838j > 0;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        String str;
        if (this.C) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824));
            return;
        }
        Size sizeQ = this.p.q(Reference.VIEW);
        this.q = sizeQ;
        CameraLogger cameraLogger = E;
        if (sizeQ == null) {
            cameraLogger.b(2, "onMeasure:", "surface is not ready. Calling default behavior.");
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        Size size3 = this.q;
        float f2 = size3.f39086b;
        float f3 = size3.f39087c;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.n.s()) {
            if (mode == Integer.MIN_VALUE && layoutParams.width == -1) {
                mode = 1073741824;
            }
            if (mode2 == Integer.MIN_VALUE && layoutParams.height == -1) {
                mode2 = 1073741824;
            }
        } else {
            if (mode == 1073741824) {
                mode = Integer.MIN_VALUE;
            }
            if (mode2 == 1073741824) {
                mode2 = Integer.MIN_VALUE;
            }
        }
        StringBuilder sbQ = fc.q(size, "requested dimensions are (", "[");
        String str2 = "AT_MOST";
        if (mode == Integer.MIN_VALUE) {
            str = "AT_MOST";
        } else if (mode != 0) {
            str = mode != 1073741824 ? null : "EXACTLY";
        } else {
            str = "UNSPECIFIED";
        }
        sbQ.append(str);
        sbQ.append("]x");
        sbQ.append(size2);
        sbQ.append("[");
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 0) {
                str2 = mode2 != 1073741824 ? null : "EXACTLY";
            } else {
                str2 = "UNSPECIFIED";
            }
        }
        cameraLogger.b(1, "onMeasure:", n00.r(str2, "])", sbQ));
        cameraLogger.b(1, "onMeasure:", "previewSize is", "(" + f2 + "x" + f3 + ")");
        if (mode == 1073741824 && mode2 == 1073741824) {
            cameraLogger.b(1, "onMeasure:", "both are MATCH_PARENT or fixed value. We adapt.", "This means CROP_CENTER.", fc.f(size, size2, "(", "x", ")"));
            super.onMeasure(i2, i3);
            return;
        }
        if (mode == 0 && mode2 == 0) {
            cameraLogger.b(1, "onMeasure:", "both are completely free.", "We respect that and extend to the whole preview size.", "(" + f2 + "x" + f3 + ")");
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) f2, 1073741824), View.MeasureSpec.makeMeasureSpec((int) f3, 1073741824));
            return;
        }
        float f4 = f3 / f2;
        if (mode == 0 || mode2 == 0) {
            if (mode == 0) {
                size = Math.round(size2 / f4);
            } else {
                size2 = Math.round(size * f4);
            }
            cameraLogger.b(1, "onMeasure:", "one dimension was free, we adapted it to fit the ratio.", fc.f(size, size2, "(", "x", ")"));
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            return;
        }
        if (mode == 1073741824 || mode2 == 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(Math.round(size2 / f4), size);
            } else {
                size2 = Math.min(Math.round(size * f4), size2);
            }
            cameraLogger.b(1, "onMeasure:", "one dimension was EXACTLY, another AT_MOST.", "We have TRIED to fit the aspect ratio, but it's not guaranteed.", fc.f(size, size2, "(", "x", ")"));
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            return;
        }
        float f5 = size2;
        float f6 = size;
        if (f5 / f6 >= f4) {
            size2 = Math.round(f6 * f4);
        } else {
            size = Math.round(f5 / f4);
        }
        cameraLogger.b(1, "onMeasure:", "both dimension were AT_MOST.", "We fit the preview aspect ratio.", fc.f(size, size2, "(", "x", ")"));
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0016  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (d()) {
            CameraOptions cameraOptions = this.p.f38879h;
            boolean z3 = false;
            if (cameraOptions == null) {
                md.k("Options should not be null here.");
                return false;
            }
            PinchGestureFinder pinchGestureFinder = this.w;
            if (pinchGestureFinder.f38978a) {
                PointF[] pointFArr = pinchGestureFinder.f38980c;
                if (motionEvent.getAction() == 0) {
                    pinchGestureFinder.f38986f = false;
                }
                pinchGestureFinder.f38985e.onTouchEvent(motionEvent);
                if (pinchGestureFinder.f38986f) {
                    pointFArr[0].x = motionEvent.getX(0);
                    pointFArr[0].y = motionEvent.getY(0);
                    if (motionEvent.getPointerCount() > 1) {
                        pointFArr[1].x = motionEvent.getX(1);
                        pointFArr[1].y = motionEvent.getY(1);
                    }
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            CameraLogger cameraLogger = E;
            if (z) {
                cameraLogger.b(1, "onTouchEvent", "pinch!");
                f(this.w, cameraOptions);
                return true;
            }
            ScrollGestureFinder scrollGestureFinder = this.y;
            if (scrollGestureFinder.f38978a) {
                if (motionEvent.getAction() == 0) {
                    scrollGestureFinder.f38990f = false;
                }
                scrollGestureFinder.f38989e.onTouchEvent(motionEvent);
                if (scrollGestureFinder.f38990f) {
                    ScrollGestureFinder.f38988h.b(1, "Notifying a gesture of type", scrollGestureFinder.f38979b.name());
                }
                z2 = scrollGestureFinder.f38990f;
            } else {
                z2 = false;
            }
            if (z2) {
                cameraLogger.b(1, "onTouchEvent", "scroll!");
                f(this.y, cameraOptions);
                return true;
            }
            TapGestureFinder tapGestureFinder = this.x;
            if (tapGestureFinder.f38978a) {
                PointF[] pointFArr2 = tapGestureFinder.f38980c;
                if (motionEvent.getAction() == 0) {
                    tapGestureFinder.f38994f = false;
                }
                tapGestureFinder.f38993e.onTouchEvent(motionEvent);
                if (tapGestureFinder.f38994f) {
                    pointFArr2[0].x = motionEvent.getX();
                    pointFArr2[0].y = motionEvent.getY();
                    z3 = true;
                }
            }
            if (z3) {
                cameraLogger.b(1, "onTouchEvent", "tap!");
                f(this.x, cameraOptions);
            }
        }
        return true;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void open() {
        if (this.C) {
            return;
        }
        CameraPreview cameraPreview = this.n;
        if (cameraPreview != null) {
            cameraPreview.o();
        }
        if (a(getAudio())) {
            OrientationHelper orientationHelper = this.o;
            if (!orientationHelper.f39016h) {
                orientationHelper.f39016h = true;
                orientationHelper.g = orientationHelper.a();
                ((DisplayManager) orientationHelper.f39012b.getSystemService("display")).registerDisplayListener(orientationHelper.f39015f, orientationHelper.f39011a);
                orientationHelper.d.enable();
            }
            Angles angles = this.p.D;
            int i2 = this.o.g;
            angles.getClass();
            Angles.e(i2);
            angles.f38947c = i2;
            angles.d();
            this.p.M();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!this.C && layoutParams != null) {
            this.D.getClass();
            if (layoutParams instanceof OverlayLayout.LayoutParams) {
                this.D.removeView(view);
                return;
            }
        }
        super.removeView(view);
    }

    public void set(Control control) {
        if (control instanceof Audio) {
            setAudio((Audio) control);
            return;
        }
        if (control instanceof Facing) {
            setFacing((Facing) control);
            return;
        }
        if (control instanceof Flash) {
            setFlash((Flash) control);
            return;
        }
        if (control instanceof Grid) {
            setGrid((Grid) control);
            return;
        }
        if (control instanceof Hdr) {
            setHdr((Hdr) control);
            return;
        }
        if (control instanceof Mode) {
            setMode((Mode) control);
            return;
        }
        if (control instanceof WhiteBalance) {
            setWhiteBalance((WhiteBalance) control);
            return;
        }
        if (control instanceof VideoCodec) {
            setVideoCodec((VideoCodec) control);
            return;
        }
        if (control instanceof AudioCodec) {
            setAudioCodec((AudioCodec) control);
            return;
        }
        if (control instanceof Preview) {
            setPreview((Preview) control);
        } else if (control instanceof Engine) {
            setEngine((Engine) control);
        } else if (control instanceof PictureFormat) {
            setPictureFormat((PictureFormat) control);
        }
    }

    public void setAudio(Audio audio) {
        if (audio != getAudio()) {
            CameraBaseEngine cameraBaseEngine = this.p;
            if (cameraBaseEngine.f38886e.f38958f != CameraState.OFF || cameraBaseEngine.r()) {
                if (a(audio)) {
                    this.p.d0(audio);
                    return;
                } else {
                    close();
                    return;
                }
            }
        }
        this.p.d0(audio);
    }

    public void setAudioBitRate(int i2) {
        this.p.N = i2;
    }

    public void setAudioCodec(AudioCodec audioCodec) {
        this.p.r = audioCodec;
    }

    public void setAutoFocusMarker(AutoFocusMarker autoFocusMarker) {
        this.s = autoFocusMarker;
        MarkerLayout markerLayout = this.A;
        HashMap map = markerLayout.f39025b;
        View view = (View) map.get(1);
        if (view != null) {
            markerLayout.removeView(view);
        }
        if (autoFocusMarker == null) {
            return;
        }
        markerLayout.getContext();
        View viewB = autoFocusMarker.b();
        if (viewB != null) {
            map.put(1, viewB);
            markerLayout.addView(viewB);
        }
    }

    public void setAutoFocusResetDelay(long j2) {
        this.p.O = j2;
    }

    public void setDrawHardwareOverlays(boolean z) {
        this.D.setHardwareCanvasEnabled(z);
    }

    public void setEngine(Engine engine) {
        CameraBaseEngine cameraBaseEngine = this.p;
        if (cameraBaseEngine.f38886e.f38958f != CameraState.OFF || cameraBaseEngine.r()) {
            return;
        }
        this.g = engine;
        CameraBaseEngine cameraBaseEngine2 = this.p;
        b();
        CameraPreview cameraPreview = this.n;
        if (cameraPreview != null) {
            CameraBaseEngine cameraBaseEngine3 = this.p;
            CameraPreview cameraPreview2 = cameraBaseEngine3.g;
            if (cameraPreview2 != null) {
                cameraPreview2.r(null);
            }
            cameraBaseEngine3.g = cameraPreview;
            cameraPreview.r(cameraBaseEngine3);
        }
        setFacing(cameraBaseEngine2.H);
        setFlash(cameraBaseEngine2.o);
        setMode(cameraBaseEngine2.I);
        setWhiteBalance(cameraBaseEngine2.p);
        setHdr(cameraBaseEngine2.s);
        setAudio(cameraBaseEngine2.J);
        setAudioBitRate(cameraBaseEngine2.N);
        setAudioCodec(cameraBaseEngine2.r);
        setPictureSize(cameraBaseEngine2.F);
        setPictureFormat(cameraBaseEngine2.t);
        setVideoSize(cameraBaseEngine2.G);
        setVideoCodec(cameraBaseEngine2.q);
        setVideoMaxSize(cameraBaseEngine2.K);
        setVideoMaxDuration(cameraBaseEngine2.L);
        setVideoBitRate(cameraBaseEngine2.M);
        setAutoFocusResetDelay(cameraBaseEngine2.O);
        setPreviewFrameRate(cameraBaseEngine2.A);
        setPreviewFrameRateExact(cameraBaseEngine2.B);
        setSnapshotMaxWidth(cameraBaseEngine2.P);
        setSnapshotMaxHeight(cameraBaseEngine2.Q);
        setFrameProcessingMaxWidth(cameraBaseEngine2.R);
        setFrameProcessingMaxHeight(cameraBaseEngine2.S);
        setFrameProcessingFormat(0);
        setFrameProcessingPoolSize(cameraBaseEngine2.T);
        this.p.E(!this.u.isEmpty());
    }

    public void setExperimental(boolean z) {
        this.B = z;
    }

    public void setExposureCorrection(float f2) {
        CameraOptions cameraOptions = getCameraOptions();
        if (cameraOptions != null) {
            float f3 = cameraOptions.m;
            float f4 = cameraOptions.n;
            if (f2 < f3) {
                f2 = f3;
            }
            if (f2 > f4) {
                f2 = f4;
            }
            this.p.B(f2, new float[]{f3, f4}, null, false);
        }
    }

    public void setFacing(Facing facing) {
        this.p.e0(facing);
    }

    public void setFilter(Filter filter) {
        Object obj = this.n;
        if (obj == null) {
            this.f38836h = filter;
            return;
        }
        boolean z = obj instanceof FilterCameraPreview;
        if (!(filter instanceof NoFilter) && !z) {
            md.j(this.f38835f, "Filters are only supported by the GL_SURFACE preview. Current preview:");
        } else if (z) {
            ((FilterCameraPreview) obj).b(filter);
        }
    }

    public void setFlash(Flash flash) {
        this.p.C(flash);
    }

    public void setFrameProcessingExecutors(int i2) {
        if (i2 < 1) {
            md.n(pq0.k(i2, "Need at least 1 executor, got "));
            return;
        }
        this.f38837i = i2;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 4L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.otaliastudios.cameraview.CameraView.6

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AtomicInteger f38840b = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, "FrameExecutor #" + this.f38840b.getAndIncrement());
            }
        });
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.l = threadPoolExecutor;
    }

    public void setFrameProcessingFormat(int i2) {
        this.p.D(i2);
    }

    public void setFrameProcessingMaxHeight(int i2) {
        this.p.S = i2;
    }

    public void setFrameProcessingMaxWidth(int i2) {
        this.p.R = i2;
    }

    public void setFrameProcessingPoolSize(int i2) {
        this.p.T = i2;
    }

    public void setGrid(Grid grid) {
        this.z.setGridMode(grid);
    }

    public void setGridColor(int i2) {
        this.z.setGridColor(i2);
    }

    public void setHdr(Hdr hdr) {
        this.p.F(hdr);
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle = this.v;
        if (lifecycleOwner == null) {
            if (lifecycle != null) {
                lifecycle.d(this);
                this.v = null;
                return;
            }
            return;
        }
        if (lifecycle != null) {
            lifecycle.d(this);
            this.v = null;
        }
        Lifecycle f13561b = lifecycleOwner.getF13561b();
        this.v = f13561b;
        f13561b.a(this);
    }

    public void setLocation(Location location) {
        this.p.G(location);
    }

    public void setMode(Mode mode) {
        this.p.f0(mode);
    }

    public void setPictureFormat(PictureFormat pictureFormat) {
        this.p.H(pictureFormat);
    }

    public void setPictureMetering(boolean z) {
        this.p.y = z;
    }

    public void setPictureSize(SizeSelector sizeSelector) {
        this.p.F = sizeSelector;
    }

    public void setPictureSnapshotMetering(boolean z) {
        this.p.z = z;
    }

    public void setPlaySounds(boolean z) {
        this.f38832b = z;
        this.p.I(z);
    }

    public void setPreview(Preview preview) {
        CameraPreview cameraPreview;
        if (preview != this.f38835f) {
            this.f38835f = preview;
            if (getWindowToken() == null && (cameraPreview = this.n) != null) {
                cameraPreview.m();
                this.n = null;
            }
        }
    }

    public void setPreviewFrameRate(float f2) {
        this.p.J(f2);
    }

    public void setPreviewFrameRateExact(boolean z) {
        this.p.B = z;
    }

    public void setPreviewStreamSize(SizeSelector sizeSelector) {
        this.p.E = sizeSelector;
    }

    public void setRequestPermissions(boolean z) {
        this.d = z;
    }

    public void setSnapshotMaxHeight(int i2) {
        this.p.Q = i2;
    }

    public void setSnapshotMaxWidth(int i2) {
        this.p.P = i2;
    }

    public void setUseDeviceOrientation(boolean z) {
        this.f38833c = z;
    }

    public void setVideoBitRate(int i2) {
        this.p.M = i2;
    }

    public void setVideoCodec(VideoCodec videoCodec) {
        this.p.q = videoCodec;
    }

    public void setVideoMaxDuration(int i2) {
        this.p.L = i2;
    }

    public void setVideoMaxSize(long j2) {
        this.p.K = j2;
    }

    public void setVideoSize(SizeSelector sizeSelector) {
        this.p.G = sizeSelector;
    }

    public void setWhiteBalance(WhiteBalance whiteBalance) {
        this.p.K(whiteBalance);
    }

    public void setZoom(float f2) {
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        this.p.L(f2, null, false);
    }

    public CameraView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38834e = new HashMap(4);
        this.t = new CopyOnWriteArrayList();
        this.u = new CopyOnWriteArrayList();
        c(context, attributeSet);
    }
}
