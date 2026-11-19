package androidx.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import defpackage.aa0;
import defpackage.hn0;
import java.nio.Buffer;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f16033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SensorManager f16034c;
    public final Sensor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OrientationListener f16035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handler f16036f;
    public final SceneRenderer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SurfaceTexture f16037h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Surface f16038i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16039j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f16040k;
    public boolean l;

    public final class Renderer implements GLSurfaceView.Renderer, TouchTracker.Listener, OrientationListener.Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SceneRenderer f16041b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float[] f16043e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float[] f16044f;
        public final float[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f16045h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f16046i;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f16042c = new float[16];
        public final float[] d = new float[16];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float[] f16047j = new float[16];

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float[] f16048k = new float[16];

        public Renderer(SceneRenderer sceneRenderer) {
            float[] fArr = new float[16];
            this.f16043e = fArr;
            float[] fArr2 = new float[16];
            this.f16044f = fArr2;
            float[] fArr3 = new float[16];
            this.g = fArr3;
            this.f16041b = sceneRenderer;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f16046i = 3.1415927f;
        }

        @Override // androidx.media3.exoplayer.video.spherical.OrientationListener.Listener
        public final synchronized void a(float f2, float[] fArr) {
            float[] fArr2 = this.f16043e;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            float f3 = -f2;
            this.f16046i = f3;
            Matrix.setRotateM(this.f16044f, 0, -this.f16045h, (float) Math.cos(f3), (float) Math.sin(this.f16046i), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }

        @Override // androidx.media3.exoplayer.video.spherical.TouchTracker.Listener
        public final synchronized void b(PointF pointF) {
            float f2 = pointF.y;
            this.f16045h = f2;
            Matrix.setRotateM(this.f16044f, 0, -f2, (float) Math.cos(this.f16046i), (float) Math.sin(this.f16046i), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Matrix.setRotateM(this.g, 0, -pointF.x, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            float[] fArr;
            Object objD;
            synchronized (this) {
                Matrix.multiplyMM(this.f16048k, 0, this.f16043e, 0, this.g, 0);
                Matrix.multiplyMM(this.f16047j, 0, this.f16044f, 0, this.f16048k, 0);
            }
            Matrix.multiplyMM(this.d, 0, this.f16042c, 0, this.f16047j, 0);
            SceneRenderer sceneRenderer = this.f16041b;
            float[] fArr2 = this.d;
            sceneRenderer.getClass();
            GLES20.glClear(16384);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e2) {
                Log.e("Failed to draw a frame", e2);
            }
            if (sceneRenderer.f16025b.compareAndSet(true, false)) {
                SurfaceTexture surfaceTexture = sceneRenderer.f16032k;
                surfaceTexture.getClass();
                surfaceTexture.updateTexImage();
                try {
                    GlUtil.b();
                } catch (GlUtil.GlException e3) {
                    Log.e("Failed to draw a frame", e3);
                }
                if (sceneRenderer.f16026c.compareAndSet(true, false)) {
                    Matrix.setIdentityM(sceneRenderer.f16029h, 0);
                }
                long timestamp = sceneRenderer.f16032k.getTimestamp();
                TimedValueQueue timedValueQueue = sceneRenderer.f16028f;
                synchronized (timedValueQueue) {
                    objD = timedValueQueue.d(timestamp, false);
                }
                Long l = (Long) objD;
                if (l != null) {
                    FrameRotationQueue frameRotationQueue = sceneRenderer.f16027e;
                    float[] fArr3 = sceneRenderer.f16029h;
                    float[] fArr4 = (float[]) frameRotationQueue.f16000c.f(l.longValue());
                    if (fArr4 != null) {
                        float[] fArr5 = frameRotationQueue.f15999b;
                        float f2 = fArr4[0];
                        float f3 = -fArr4[1];
                        float f4 = -fArr4[2];
                        float length = Matrix.length(f2, f3, f4);
                        if (length != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            Matrix.setRotateM(fArr5, 0, (float) Math.toDegrees(length), f2 / length, f3 / length, f4 / length);
                        } else {
                            Matrix.setIdentityM(fArr5, 0);
                        }
                        if (!frameRotationQueue.d) {
                            FrameRotationQueue.a(frameRotationQueue.f15998a, frameRotationQueue.f15999b);
                            frameRotationQueue.d = true;
                        }
                        Matrix.multiplyMM(fArr3, 0, frameRotationQueue.f15998a, 0, frameRotationQueue.f15999b, 0);
                    }
                }
                Projection projection = (Projection) sceneRenderer.g.f(timestamp);
                if (projection != null) {
                    ProjectionRenderer projectionRenderer = sceneRenderer.d;
                    projectionRenderer.getClass();
                    if (ProjectionRenderer.b(projection)) {
                        projectionRenderer.f16016a = projection.f16008c;
                        projectionRenderer.f16017b = new ProjectionRenderer.MeshData(projection.f16006a.f16009a[0]);
                        if (!projection.d) {
                            new ProjectionRenderer.MeshData(projection.f16007b.f16009a[0]);
                        }
                    }
                }
            }
            Matrix.multiplyMM(sceneRenderer.f16030i, 0, fArr2, 0, sceneRenderer.f16029h, 0);
            ProjectionRenderer projectionRenderer2 = sceneRenderer.d;
            int i2 = sceneRenderer.f16031j;
            float[] fArr6 = sceneRenderer.f16030i;
            ProjectionRenderer.MeshData meshData = projectionRenderer2.f16017b;
            if (meshData == null) {
                return;
            }
            int i3 = projectionRenderer2.f16016a;
            if (i3 == 1) {
                fArr = ProjectionRenderer.f16014j;
            } else {
                fArr = i3 == 2 ? ProjectionRenderer.f16015k : ProjectionRenderer.f16013i;
            }
            GLES20.glUniformMatrix3fv(projectionRenderer2.f16019e, 1, false, fArr, 0);
            GLES20.glUniformMatrix4fv(projectionRenderer2.d, 1, false, fArr6, 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i2);
            GLES20.glUniform1i(projectionRenderer2.f16021h, 0);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e4) {
                Log.e("Failed to bind uniforms", e4);
            }
            GLES20.glVertexAttribPointer(projectionRenderer2.f16020f, 3, 5126, false, 12, (Buffer) meshData.f16023b);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e5) {
                Log.e("Failed to load position data", e5);
            }
            GLES20.glVertexAttribPointer(projectionRenderer2.g, 2, 5126, false, 8, (Buffer) meshData.f16024c);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e6) {
                Log.e("Failed to load texture data", e6);
            }
            GLES20.glDrawArrays(meshData.d, 0, meshData.f16022a);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e7) {
                Log.e("Failed to render", e7);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.TouchTracker.Listener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            GLES20.glViewport(0, 0, i2, i3);
            float f2 = i2 / i3;
            Matrix.perspectiveM(this.f16042c, 0, f2 > 1.0f ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f2))) * 2.0d) : 90.0f, f2, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView sphericalGLSurfaceView = SphericalGLSurfaceView.this;
            sphericalGLSurfaceView.f16036f.post(new aa0(sphericalGLSurfaceView, this.f16041b.c(), 27));
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface VideoSurfaceListener {
        void e();

        void z(Surface surface);
    }

    public SphericalGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16033b = new CopyOnWriteArrayList();
        this.f16036f = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.f16034c = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.d = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        SceneRenderer sceneRenderer = new SceneRenderer();
        this.g = sceneRenderer;
        Renderer renderer = new Renderer(sceneRenderer);
        View.OnTouchListener touchTracker = new TouchTracker(context, renderer, 25.0f);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.f16035e = new OrientationListener(windowManager.getDefaultDisplay(), touchTracker, renderer);
        this.f16039j = true;
        setEGLContextClientVersion(2);
        setRenderer(renderer);
        setOnTouchListener(touchTracker);
    }

    public final void a() {
        boolean z = this.f16039j && this.f16040k;
        Sensor sensor = this.d;
        if (sensor == null || z == this.l) {
            return;
        }
        OrientationListener orientationListener = this.f16035e;
        SensorManager sensorManager = this.f16034c;
        if (z) {
            sensorManager.registerListener(orientationListener, sensor, 0);
        } else {
            sensorManager.unregisterListener(orientationListener);
        }
        this.l = z;
    }

    public CameraMotionListener getCameraMotionListener() {
        return this.g;
    }

    public VideoFrameMetadataListener getVideoFrameMetadataListener() {
        return this.g;
    }

    public Surface getVideoSurface() {
        return this.f16038i;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f16036f.post(new hn0(this, 20));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f16040k = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f16040k = true;
        a();
    }

    public void setDefaultStereoMode(int i2) {
        this.g.l = i2;
    }

    public void setUseSensorRotation(boolean z) {
        this.f16039j = z;
        a();
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }
}
