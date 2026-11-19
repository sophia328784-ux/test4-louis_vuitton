package androidx.media3.exoplayer.video;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.media3.common.util.EGLSurfaceTexture;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class PlaceholderSurface extends Surface {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f15908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f15909f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f15910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PlaceholderSurfaceThread f15911c;
    public boolean d;

    public static class PlaceholderSurfaceThread extends HandlerThread implements Handler.Callback {
        private static final int MSG_INIT = 1;
        private static final int MSG_RELEASE = 2;
        private EGLSurfaceTexture eglSurfaceTexture;
        private Handler handler;
        private Error initError;
        private RuntimeException initException;
        private PlaceholderSurface surface;

        public PlaceholderSurfaceThread() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void initInternal(int i2) throws GlUtil.GlException {
            this.eglSurfaceTexture.getClass();
            this.eglSurfaceTexture.init(i2);
            this.surface = new PlaceholderSurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i2 != 0);
        }

        private void releaseInternal() {
            this.eglSurfaceTexture.getClass();
            this.eglSurfaceTexture.release();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            try {
                if (i2 == 1) {
                    try {
                        initInternal(message.arg1);
                        synchronized (this) {
                            notify();
                        }
                        return true;
                    } catch (GlUtil.GlException e2) {
                        Log.e("Failed to initialize placeholder surface", e2);
                        this.initException = new IllegalStateException(e2);
                        synchronized (this) {
                            notify();
                        }
                    } catch (Error e3) {
                        Log.e("Failed to initialize placeholder surface", e3);
                        this.initError = e3;
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e4) {
                        Log.e("Failed to initialize placeholder surface", e4);
                        this.initException = e4;
                        synchronized (this) {
                            notify();
                        }
                    }
                } else if (i2 == 2) {
                    try {
                        releaseInternal();
                        quit();
                        return true;
                    } catch (Throwable th) {
                        try {
                            Log.e("Failed to release placeholder surface", th);
                            return true;
                        } finally {
                            quit();
                        }
                    }
                }
                return true;
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }

        public PlaceholderSurface init(int i2) {
            boolean z;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.handler = handler;
            this.eglSurfaceTexture = new EGLSurfaceTexture(handler);
            synchronized (this) {
                z = false;
                this.handler.obtainMessage(1, i2, 0).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.initException;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.initError;
            if (error != null) {
                throw error;
            }
            PlaceholderSurface placeholderSurface = this.surface;
            placeholderSurface.getClass();
            return placeholderSurface;
        }

        public void release() {
            this.handler.getClass();
            this.handler.sendEmptyMessage(2);
        }
    }

    public PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f15911c = placeholderSurfaceThread;
        this.f15910b = z;
    }

    public static synchronized boolean a() {
        int i2;
        try {
            if (!f15909f) {
                try {
                    if (GlUtil.e("EGL_EXT_protected_content")) {
                        i2 = GlUtil.e("EGL_KHR_surfaceless_context") ? 1 : 2;
                    } else {
                        i2 = 0;
                    }
                } catch (GlUtil.GlException e2) {
                    Log.d("Failed to determine secure mode due to GL error: " + e2.getMessage());
                }
                f15908e = i2;
                f15909f = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f15908e != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f15911c) {
            try {
                if (!this.d) {
                    this.f15911c.release();
                    this.d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
