package com.google.android.exoplayer2.video.spherical;

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
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TimedValueQueue;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import defpackage.aa0;
import defpackage.hn0;
import java.nio.Buffer;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class SphericalGLSurfaceView extends GLSurfaceView {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f28503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SensorManager f28504c;
    public final Sensor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OrientationListener f28505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handler f28506f;
    public final SceneRenderer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SurfaceTexture f28507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Surface f28508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f28509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f28510k;
    public boolean l;

    /* JADX INFO: loaded from: classes2.dex */
    public final class Renderer implements GLSurfaceView.Renderer, TouchTracker.Listener, OrientationListener.Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SceneRenderer f28511b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float[] f28513e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float[] f28514f;
        public final float[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f28515h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f28516i;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f28512c = new float[16];
        public final float[] d = new float[16];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float[] f28517j = new float[16];

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float[] f28518k = new float[16];

        public Renderer(SceneRenderer sceneRenderer) {
            float[] fArr = new float[16];
            this.f28513e = fArr;
            float[] fArr2 = new float[16];
            this.f28514f = fArr2;
            float[] fArr3 = new float[16];
            this.g = fArr3;
            this.f28511b = sceneRenderer;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f28516i = 3.1415927f;
        }

        @Override // com.google.android.exoplayer2.video.spherical.OrientationListener.Listener
        public final synchronized void a(float f2, float[] fArr) {
            float[] fArr2 = this.f28513e;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            float f3 = -f2;
            this.f28516i = f3;
            Matrix.setRotateM(this.f28514f, 0, -this.f28515h, (float) Math.cos(f3), (float) Math.sin(this.f28516i), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }

        @Override // com.google.android.exoplayer2.video.spherical.TouchTracker.Listener
        public final synchronized void b(PointF pointF) {
            float f2 = pointF.y;
            this.f28515h = f2;
            Matrix.setRotateM(this.f28514f, 0, -f2, (float) Math.cos(this.f28516i), (float) Math.sin(this.f28516i), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Matrix.setRotateM(this.g, 0, -pointF.x, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            float[] fArr;
            Object objA;
            Object objA2;
            Object objA3;
            synchronized (this) {
                Matrix.multiplyMM(this.f28518k, 0, this.f28513e, 0, this.g, 0);
                Matrix.multiplyMM(this.f28517j, 0, this.f28514f, 0, this.f28518k, 0);
            }
            Matrix.multiplyMM(this.d, 0, this.f28512c, 0, this.f28517j, 0);
            SceneRenderer sceneRenderer = this.f28511b;
            float[] fArr2 = this.d;
            sceneRenderer.getClass();
            GLES20.glClear(16384);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e2) {
                Log.a(e2);
            }
            if (sceneRenderer.f28495a.compareAndSet(true, false)) {
                SurfaceTexture surfaceTexture = sceneRenderer.f28502j;
                surfaceTexture.getClass();
                surfaceTexture.updateTexImage();
                try {
                    GlUtil.b();
                } catch (GlUtil.GlException e3) {
                    Log.a(e3);
                }
                if (sceneRenderer.f28496b.compareAndSet(true, false)) {
                    Matrix.setIdentityM(sceneRenderer.g, 0);
                }
                long timestamp = sceneRenderer.f28502j.getTimestamp();
                TimedValueQueue timedValueQueue = sceneRenderer.f28498e;
                synchronized (timedValueQueue) {
                    objA = timedValueQueue.a(timestamp, false);
                }
                Long l = (Long) objA;
                if (l != null) {
                    FrameRotationQueue frameRotationQueue = sceneRenderer.d;
                    float[] fArr3 = sceneRenderer.g;
                    long jLongValue = l.longValue();
                    TimedValueQueue timedValueQueue2 = frameRotationQueue.f28470c;
                    synchronized (timedValueQueue2) {
                        objA3 = timedValueQueue2.a(jLongValue, true);
                    }
                    float[] fArr4 = (float[]) objA3;
                    if (fArr4 != null) {
                        float[] fArr5 = frameRotationQueue.f28469b;
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
                            FrameRotationQueue.a(frameRotationQueue.f28468a, frameRotationQueue.f28469b);
                            frameRotationQueue.d = true;
                        }
                        Matrix.multiplyMM(fArr3, 0, frameRotationQueue.f28468a, 0, frameRotationQueue.f28469b, 0);
                    }
                }
                TimedValueQueue timedValueQueue3 = sceneRenderer.f28499f;
                synchronized (timedValueQueue3) {
                    objA2 = timedValueQueue3.a(timestamp, true);
                }
                Projection projection = (Projection) objA2;
                if (projection != null) {
                    ProjectionRenderer projectionRenderer = sceneRenderer.f28497c;
                    projectionRenderer.getClass();
                    Projection.Mesh mesh = projection.f28476a;
                    Projection.Mesh mesh2 = projection.f28477b;
                    Projection.SubMesh[] subMeshArr = mesh.f28479a;
                    if (subMeshArr.length == 1) {
                        Projection.SubMesh subMesh = subMeshArr[0];
                        if (subMesh.f28480a == 0) {
                            Projection.SubMesh[] subMeshArr2 = mesh2.f28479a;
                            if (subMeshArr2.length == 1 && subMeshArr2[0].f28480a == 0) {
                                projectionRenderer.f28486a = projection.f28478c;
                                projectionRenderer.f28487b = new ProjectionRenderer.MeshData(subMesh);
                                if (!projection.d) {
                                    new ProjectionRenderer.MeshData(mesh2.f28479a[0]);
                                }
                            }
                        }
                    }
                }
            }
            Matrix.multiplyMM(sceneRenderer.f28500h, 0, fArr2, 0, sceneRenderer.g, 0);
            ProjectionRenderer projectionRenderer2 = sceneRenderer.f28497c;
            int i2 = sceneRenderer.f28501i;
            float[] fArr6 = sceneRenderer.f28500h;
            ProjectionRenderer.MeshData meshData = projectionRenderer2.f28487b;
            if (meshData == null) {
                return;
            }
            int i3 = projectionRenderer2.f28486a;
            if (i3 == 1) {
                fArr = ProjectionRenderer.f28484j;
            } else {
                fArr = i3 == 2 ? ProjectionRenderer.f28485k : ProjectionRenderer.f28483i;
            }
            GLES20.glUniformMatrix3fv(projectionRenderer2.f28489e, 1, false, fArr, 0);
            GLES20.glUniformMatrix4fv(projectionRenderer2.d, 1, false, fArr6, 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i2);
            GLES20.glUniform1i(projectionRenderer2.f28491h, 0);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException unused) {
            }
            GLES20.glVertexAttribPointer(projectionRenderer2.f28490f, 3, 5126, false, 12, (Buffer) meshData.f28493b);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException unused2) {
            }
            GLES20.glVertexAttribPointer(projectionRenderer2.g, 2, 5126, false, 8, (Buffer) meshData.f28494c);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException unused3) {
            }
            GLES20.glDrawArrays(meshData.d, 0, meshData.f28492a);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException unused4) {
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.TouchTracker.Listener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            GLES20.glViewport(0, 0, i2, i3);
            float f2 = i2 / i3;
            Matrix.perspectiveM(this.f28512c, 0, f2 > 1.0f ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f2))) * 2.0d) : 90.0f, f2, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView sphericalGLSurfaceView = SphericalGLSurfaceView.this;
            sphericalGLSurfaceView.f28506f.post(new aa0(sphericalGLSurfaceView, this.f28511b.a(), 26));
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface VideoSurfaceListener {
        void a();

        void e();
    }

    public SphericalGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28503b = new CopyOnWriteArrayList();
        this.f28506f = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.f28504c = sensorManager;
        Sensor defaultSensor = Util.f28451a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.d = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        SceneRenderer sceneRenderer = new SceneRenderer();
        this.g = sceneRenderer;
        Renderer renderer = new Renderer(sceneRenderer);
        View.OnTouchListener touchTracker = new TouchTracker(context, renderer, 25.0f);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.f28505e = new OrientationListener(windowManager.getDefaultDisplay(), touchTracker, renderer);
        this.f28509j = true;
        setEGLContextClientVersion(2);
        setRenderer(renderer);
        setOnTouchListener(touchTracker);
    }

    public final void a() {
        boolean z = this.f28509j && this.f28510k;
        Sensor sensor = this.d;
        if (sensor == null || z == this.l) {
            return;
        }
        OrientationListener orientationListener = this.f28505e;
        SensorManager sensorManager = this.f28504c;
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
        return this.f28508i;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f28506f.post(new hn0(this, 21));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f28510k = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f28510k = true;
        a();
    }

    public void setDefaultStereoMode(int i2) {
        this.g.getClass();
    }

    public void setUseSensorRotation(boolean z) {
        this.f28509j = z;
        a();
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }
}
