package com.google.android.exoplayer2.video;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Log;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PlaceholderSurface extends Surface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlaceholderSurfaceThread f28452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f28453c;

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
            this.surface = new PlaceholderSurface(this, this.eglSurfaceTexture.getSurfaceTexture());
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
                        try {
                            initInternal(message.arg1);
                            synchronized (this) {
                                notify();
                            }
                            return true;
                        } catch (GlUtil.GlException e2) {
                            Log.a(e2);
                            this.initException = new IllegalStateException(e2);
                            synchronized (this) {
                                notify();
                            }
                        }
                    } catch (Error e3) {
                        Log.a(e3);
                        this.initError = e3;
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e4) {
                        Log.a(e4);
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
                            Log.a(th);
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

    public PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture) {
        super(surfaceTexture);
        this.f28452b = placeholderSurfaceThread;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f28452b) {
            try {
                if (!this.f28453c) {
                    this.f28452b.release();
                    this.f28453c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
