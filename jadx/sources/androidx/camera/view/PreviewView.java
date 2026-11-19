package androidx.camera.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Rational;
import android.util.Size;
import android.view.Display;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.MeteringPointFactory;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.ViewPort;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.view.impl.ZoomGestureDetector;
import androidx.camera.view.internal.compat.quirk.DeviceQuirks;
import androidx.camera.view.internal.compat.quirk.SurfaceViewNotCroppedByParentQuirk;
import androidx.camera.view.internal.compat.quirk.SurfaceViewStretchedQuirk;
import androidx.camera.view.transform.OutputTransform;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.no0;
import defpackage.oj;
import defpackage.pq0;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewView extends FrameLayout {
    public static final ImplementationMode n = ImplementationMode.PERFORMANCE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImplementationMode f3145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PreviewViewImplementation f3146c;
    public final ScreenFlashView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PreviewTransformation f3147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3148f;
    public final MutableLiveData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicReference f3149h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PreviewViewMeteringPointFactory f3150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CameraInfoInternal f3151j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DisplayRotationListener f3152k;
    public final oj l;
    public final Preview.SurfaceProvider m;

    /* JADX INFO: renamed from: androidx.camera.view.PreviewView$1, reason: invalid class name */
    public class AnonymousClass1 implements Preview.SurfaceProvider {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.Preview.SurfaceProvider
        public final void a(SurfaceRequest surfaceRequest) {
            PreviewViewImplementation surfaceViewImplementation;
            int i2 = 0;
            if (!Threads.b()) {
                ContextCompat.getMainExecutor(PreviewView.this.getContext()).execute(new c(this, surfaceRequest, i2));
                return;
            }
            Logger.c(3, "PreviewView");
            CameraInternal cameraInternal = surfaceRequest.f1976e;
            PreviewView.this.f3151j = cameraInternal.k();
            PreviewViewMeteringPointFactory previewViewMeteringPointFactory = PreviewView.this.f3150i;
            Rect rectF = cameraInternal.k().f();
            previewViewMeteringPointFactory.getClass();
            new Rational(rectF.width(), rectF.height());
            synchronized (previewViewMeteringPointFactory) {
                previewViewMeteringPointFactory.f3159b = rectF;
            }
            surfaceRequest.b(ContextCompat.getMainExecutor(PreviewView.this.getContext()), new d(this, cameraInternal, surfaceRequest));
            PreviewView previewView = PreviewView.this;
            PreviewViewImplementation previewViewImplementation = previewView.f3146c;
            ImplementationMode implementationMode = previewView.f3145b;
            if (!(previewViewImplementation instanceof SurfaceViewImplementation) || PreviewView.b(surfaceRequest, implementationMode)) {
                PreviewView previewView2 = PreviewView.this;
                boolean zB = PreviewView.b(surfaceRequest, previewView2.f3145b);
                PreviewView previewView3 = PreviewView.this;
                PreviewTransformation previewTransformation = previewView3.f3147e;
                if (zB) {
                    TextureViewImplementation textureViewImplementation = new TextureViewImplementation(previewView3, previewTransformation);
                    textureViewImplementation.f3178i = false;
                    textureViewImplementation.f3180k = new AtomicReference();
                    surfaceViewImplementation = textureViewImplementation;
                } else {
                    surfaceViewImplementation = new SurfaceViewImplementation(previewView3, previewTransformation);
                }
                previewView2.f3146c = surfaceViewImplementation;
            }
            CameraInfoInternal cameraInfoInternalK = cameraInternal.k();
            PreviewView previewView4 = PreviewView.this;
            PreviewStreamStateObserver previewStreamStateObserver = new PreviewStreamStateObserver(cameraInfoInternalK, previewView4.g, previewView4.f3146c);
            PreviewView.this.f3149h.set(previewStreamStateObserver);
            cameraInternal.c().b(ContextCompat.getMainExecutor(PreviewView.this.getContext()), previewStreamStateObserver);
            PreviewView.this.f3146c.e(surfaceRequest, new d(this, previewStreamStateObserver, cameraInternal));
            PreviewView previewView5 = PreviewView.this;
            if (previewView5.indexOfChild(previewView5.d) == -1) {
                PreviewView previewView6 = PreviewView.this;
                previewView6.addView(previewView6.d);
            }
        }
    }

    public class DisplayRotationListener implements DisplayManager.DisplayListener {
        public DisplayRotationListener() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i2) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i2) {
            PreviewView previewView = PreviewView.this;
            Display defaultDisplay = previewView.getDefaultDisplay();
            if (defaultDisplay == null || defaultDisplay.getDisplayId() != i2) {
                return;
            }
            previewView.a();
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i2) {
        }
    }

    public enum ImplementationMode {
        PERFORMANCE(0),
        COMPATIBLE(1);

        private final int mId;

        ImplementationMode(int i2) {
            this.mId = i2;
        }

        public static ImplementationMode a(int i2) {
            for (ImplementationMode implementationMode : values()) {
                if (implementationMode.mId == i2) {
                    return implementationMode;
                }
            }
            md.n(pq0.k(i2, "Unknown implementation mode id "));
            return null;
        }

        public final int b() {
            return this.mId;
        }
    }

    public interface OnFrameUpdateListener {
    }

    public enum ScaleType {
        FILL_START(0),
        FILL_CENTER(1),
        FILL_END(2),
        FIT_START(3),
        FIT_CENTER(4),
        FIT_END(5);

        private final int mId;

        ScaleType(int i2) {
            this.mId = i2;
        }

        public static ScaleType a(int i2) {
            for (ScaleType scaleType : values()) {
                if (scaleType.mId == i2) {
                    return scaleType;
                }
            }
            md.n(pq0.k(i2, "Unknown scale type id "));
            return null;
        }

        public final int b() {
            return this.mId;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class StreamState {
        private static final /* synthetic */ StreamState[] $VALUES;
        public static final StreamState IDLE;
        public static final StreamState STREAMING;

        static {
            StreamState streamState = new StreamState("IDLE", 0);
            IDLE = streamState;
            StreamState streamState2 = new StreamState("STREAMING", 1);
            STREAMING = streamState2;
            $VALUES = new StreamState[]{streamState, streamState2};
        }

        public static StreamState valueOf(String str) {
            return (StreamState) Enum.valueOf(StreamState.class, str);
        }

        public static StreamState[] values() {
            return (StreamState[]) $VALUES.clone();
        }
    }

    public PreviewView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        ImplementationMode implementationMode = n;
        this.f3145b = implementationMode;
        PreviewTransformation previewTransformation = new PreviewTransformation();
        previewTransformation.f3143h = PreviewTransformation.f3137i;
        this.f3147e = previewTransformation;
        this.f3148f = true;
        this.g = new MutableLiveData(StreamState.IDLE);
        this.f3149h = new AtomicReference();
        this.f3150i = new PreviewViewMeteringPointFactory(previewTransformation);
        this.f3152k = new DisplayRotationListener();
        int i4 = 2;
        this.l = new oj(this, i4);
        this.m = new AnonymousClass1();
        Threads.a();
        Resources.Theme theme = context.getTheme();
        int[] iArr = R$styleable.f3160a;
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        ViewCompat.s(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i2, i3);
        try {
            setScaleType(ScaleType.a(typedArrayObtainStyledAttributes.getInteger(1, previewTransformation.f3143h.b())));
            setImplementationMode(ImplementationMode.a(typedArrayObtainStyledAttributes.getInteger(0, implementationMode.b())));
            typedArrayObtainStyledAttributes.recycle();
            new ZoomGestureDetector(context, new no0(this, i4));
            if (getBackground() == null) {
                setBackgroundColor(ContextCompat.getColor(getContext(), R.color.black));
            }
            ScreenFlashView screenFlashView = new ScreenFlashView(context);
            this.d = screenFlashView;
            screenFlashView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static boolean b(SurfaceRequest surfaceRequest, ImplementationMode implementationMode) {
        boolean zEquals = surfaceRequest.f1976e.k().s().equals("androidx.camera.camera2.legacy");
        boolean z = (DeviceQuirks.f3199a.b(SurfaceViewStretchedQuirk.class) == null && DeviceQuirks.f3199a.b(SurfaceViewNotCroppedByParentQuirk.class) == null) ? false : true;
        if (!zEquals && !z) {
            int iOrdinal = implementationMode.ordinal();
            if (iOrdinal == 0) {
                return false;
            }
            if (iOrdinal != 1) {
                az.m(implementationMode, "Invalid implementation mode: ");
                return false;
            }
        }
        return true;
    }

    private DisplayManager getDisplayManager() {
        Context context = getContext();
        if (context == null) {
            return null;
        }
        return (DisplayManager) context.getSystemService("display");
    }

    private ImageCapture.ScreenFlash getScreenFlashInternal() {
        return this.d.getScreenFlash();
    }

    private int getViewPortScaleType() {
        int iOrdinal = getScaleType().ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i2 = 1;
        if (iOrdinal != 1) {
            i2 = 2;
            if (iOrdinal != 2) {
                i2 = 3;
                if (iOrdinal != 3 && iOrdinal != 4 && iOrdinal != 5) {
                    ct0.o(getScaleType(), "Unexpected scale type: ");
                    return 0;
                }
            }
        }
        return i2;
    }

    private void setScreenFlashUiInfo(ImageCapture.ScreenFlash screenFlash) {
        Logger.c(3, "PreviewView");
    }

    public final void a() {
        Rect rect;
        Display defaultDisplay;
        CameraInfoInternal cameraInfoInternal;
        Threads.a();
        if (this.f3146c != null) {
            if (this.f3148f && (defaultDisplay = getDefaultDisplay()) != null && (cameraInfoInternal = this.f3151j) != null) {
                PreviewTransformation previewTransformation = this.f3147e;
                int iT = cameraInfoInternal.t(defaultDisplay.getRotation());
                int rotation = defaultDisplay.getRotation();
                if (previewTransformation.g) {
                    previewTransformation.f3140c = iT;
                    previewTransformation.f3141e = rotation;
                }
            }
            this.f3146c.f();
        }
        PreviewViewMeteringPointFactory previewViewMeteringPointFactory = this.f3150i;
        Size size = new Size(getWidth(), getHeight());
        int layoutDirection = getLayoutDirection();
        previewViewMeteringPointFactory.getClass();
        Threads.a();
        synchronized (previewViewMeteringPointFactory) {
            try {
                if (size.getWidth() != 0 && size.getHeight() != 0 && (rect = previewViewMeteringPointFactory.f3159b) != null) {
                    previewViewMeteringPointFactory.f3158a.a(size, layoutDirection, rect);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Bitmap getBitmap() {
        Threads.a();
        PreviewViewImplementation previewViewImplementation = this.f3146c;
        if (previewViewImplementation == null) {
            return null;
        }
        FrameLayout frameLayout = previewViewImplementation.f3156b;
        Bitmap bitmapB = previewViewImplementation.b();
        if (bitmapB == null) {
            return null;
        }
        PreviewTransformation previewTransformation = previewViewImplementation.f3157c;
        Size size = new Size(frameLayout.getWidth(), frameLayout.getHeight());
        int layoutDirection = frameLayout.getLayoutDirection();
        if (!previewTransformation.f()) {
            return bitmapB;
        }
        Matrix matrixD = previewTransformation.d();
        RectF rectFE = previewTransformation.e(size, layoutDirection);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(size.getWidth(), size.getHeight(), bitmapB.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.postConcat(matrixD);
        matrix.postScale(rectFE.width() / previewTransformation.f3138a.getWidth(), rectFE.height() / previewTransformation.f3138a.getHeight());
        matrix.postTranslate(rectFE.left, rectFE.top);
        canvas.drawBitmap(bitmapB, matrix, new Paint(7));
        return bitmapCreateBitmap;
    }

    public CameraController getController() {
        Threads.a();
        return null;
    }

    public Display getDefaultDisplay() {
        if (getDisplay() == null) {
            return null;
        }
        Display display = getDisplayManager().getDisplay(0);
        return display != null ? display : getDisplay();
    }

    public ImplementationMode getImplementationMode() {
        Threads.a();
        return this.f3145b;
    }

    public MeteringPointFactory getMeteringPointFactory() {
        Threads.a();
        return this.f3150i;
    }

    public OutputTransform getOutputTransform() {
        Matrix matrixC;
        PreviewTransformation previewTransformation = this.f3147e;
        Threads.a();
        try {
            matrixC = previewTransformation.c(new Size(getWidth(), getHeight()), getLayoutDirection());
        } catch (IllegalStateException unused) {
            matrixC = null;
        }
        Rect rect = previewTransformation.f3139b;
        if (matrixC == null || rect == null) {
            Logger.c(3, "PreviewView");
            return null;
        }
        RectF rectF = TransformUtils.f2431a;
        RectF rectF2 = new RectF(rect);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(TransformUtils.f2431a, rectF2, Matrix.ScaleToFit.FILL);
        matrixC.preConcat(matrix);
        if (this.f3146c instanceof TextureViewImplementation) {
            matrixC.postConcat(getMatrix());
        } else if (!getMatrix().isIdentity()) {
            Logger.c(5, "PreviewView");
        }
        return new OutputTransform(matrixC, new Size(rect.width(), rect.height()));
    }

    public LiveData<StreamState> getPreviewStreamState() {
        return this.g;
    }

    public ScaleType getScaleType() {
        Threads.a();
        return this.f3147e.f3143h;
    }

    public ImageCapture.ScreenFlash getScreenFlash() {
        return getScreenFlashInternal();
    }

    public Matrix getSensorToViewTransform() {
        Threads.a();
        if (getWidth() == 0 || getHeight() == 0) {
            return null;
        }
        Size size = new Size(getWidth(), getHeight());
        int layoutDirection = getLayoutDirection();
        PreviewTransformation previewTransformation = this.f3147e;
        if (!previewTransformation.f()) {
            return null;
        }
        Matrix matrix = new Matrix(previewTransformation.d);
        matrix.postConcat(previewTransformation.c(size, layoutDirection));
        return matrix;
    }

    public Preview.SurfaceProvider getSurfaceProvider() {
        Threads.a();
        return this.m;
    }

    public ViewPort getViewPort() {
        Threads.a();
        Display defaultDisplay = getDefaultDisplay();
        if (defaultDisplay == null) {
            return null;
        }
        int rotation = defaultDisplay.getRotation();
        Threads.a();
        if (getWidth() == 0 || getHeight() == 0) {
            return null;
        }
        ViewPort.Builder builder = new ViewPort.Builder(new Rational(getWidth(), getHeight()), rotation);
        builder.f2008a = getViewPortScaleType();
        builder.d = getLayoutDirection();
        Rational rational = builder.f2009b;
        Preconditions.e(rational, "The crop aspect ratio must be set.");
        int i2 = builder.f2008a;
        int i3 = builder.d;
        ViewPort viewPort = new ViewPort();
        viewPort.f2005a = i2;
        viewPort.f2006b = rational;
        viewPort.f2007c = builder.f2010c;
        viewPort.d = i3;
        return viewPort;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        DisplayManager displayManager;
        super.onAttachedToWindow();
        if (!isInEditMode() && (displayManager = getDisplayManager()) != null) {
            displayManager.registerDisplayListener(this.f3152k, new Handler(Looper.getMainLooper()));
        }
        addOnLayoutChangeListener(this.l);
        PreviewViewImplementation previewViewImplementation = this.f3146c;
        if (previewViewImplementation != null) {
            previewViewImplementation.c();
        }
        Threads.a();
        getViewPort();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        DisplayManager displayManager;
        super.onDetachedFromWindow();
        removeOnLayoutChangeListener(this.l);
        PreviewViewImplementation previewViewImplementation = this.f3146c;
        if (previewViewImplementation != null) {
            previewViewImplementation.d();
        }
        if (isInEditMode() || (displayManager = getDisplayManager()) == null) {
            return;
        }
        displayManager.unregisterDisplayListener(this.f3152k);
    }

    public void setController(CameraController cameraController) {
        Threads.a();
        Threads.a();
        getViewPort();
        setScreenFlashUiInfo(getScreenFlashInternal());
    }

    public void setImplementationMode(ImplementationMode implementationMode) {
        Threads.a();
        this.f3145b = implementationMode;
    }

    public void setScaleType(ScaleType scaleType) {
        Threads.a();
        this.f3147e.f3143h = scaleType;
        a();
        Threads.a();
        getViewPort();
    }

    public void setScreenFlashOverlayColor(int i2) {
        this.d.setBackgroundColor(i2);
    }

    public void setScreenFlashWindow(Window window) {
        Threads.a();
        this.d.setScreenFlashWindow(window);
        setScreenFlashUiInfo(getScreenFlashInternal());
    }

    public PreviewView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreviewView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public PreviewView(Context context) {
        this(context, null);
    }
}
