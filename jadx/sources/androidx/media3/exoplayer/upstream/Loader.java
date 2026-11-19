package androidx.media3.exoplayer.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.Preconditions;
import defpackage.to;
import defpackage.tr;
import defpackage.v40;
import java.io.IOException;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class Loader implements LoaderErrorThrower {
    public static final LoadErrorAction d = new LoadErrorAction(0, -9223372036854775807L);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LoadErrorAction f15832e = new LoadErrorAction(2, -9223372036854775807L);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final LoadErrorAction f15833f = new LoadErrorAction(3, -9223372036854775807L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReleasableExecutor f15834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LoadTask f15835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IOException f15836c;

    public interface Callback<T extends Loadable> {
        LoadErrorAction b(Loadable loadable, long j2, long j3, IOException iOException, int i2);

        default void l(Loadable loadable, long j2, long j3, int i2) {
        }

        void q(Loadable loadable, long j2, long j3);

        void w(Loadable loadable, long j2, long j3, boolean z);
    }

    public static final class LoadErrorAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15837a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15838b;

        public LoadErrorAction(int i2, long j2) {
            this.f15837a = i2;
            this.f15838b = j2;
        }
    }

    public final class LoadTask<T extends Loadable> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 4;
        private static final int MSG_FINISH = 2;
        private static final int MSG_IO_EXCEPTION = 3;
        private static final int MSG_START = 1;
        private static final String TAG = "LoadTask";
        private Callback<T> callback;
        private boolean canceled;
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;
        private Thread executorThread;
        private final T loadable;
        private volatile boolean released;
        private final long startTimeMs;

        public LoadTask(Looper looper, T t, Callback<T> callback, int i2, long j2) {
            super(looper);
            this.loadable = t;
            this.callback = callback;
            this.defaultMinRetryCount = i2;
            this.startTimeMs = j2;
        }

        private void execute() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = jElapsedRealtime - this.startTimeMs;
            Callback<T> callback = this.callback;
            callback.getClass();
            callback.l(this.loadable, jElapsedRealtime, j2, this.errorCount);
            this.currentError = null;
            Loader loader = Loader.this;
            ReleasableExecutor releasableExecutor = loader.f15834a;
            LoadTask loadTask = loader.f15835b;
            loadTask.getClass();
            releasableExecutor.execute(loadTask);
        }

        private void finish() {
            Loader.this.f15835b = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            this.released = z;
            this.currentError = null;
            if (hasMessages(1)) {
                this.canceled = true;
                removeMessages(1);
                if (!z) {
                    sendEmptyMessage(2);
                }
            } else {
                synchronized (this) {
                    try {
                        this.canceled = true;
                        this.loadable.c();
                        Thread thread = this.executorThread;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Callback<T> callback = this.callback;
                callback.getClass();
                callback.w(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                execute();
                return;
            }
            if (i2 == 4) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = jElapsedRealtime - this.startTimeMs;
            Callback<T> callback = this.callback;
            callback.getClass();
            if (this.canceled) {
                callback.w(this.loadable, jElapsedRealtime, j2, false);
                return;
            }
            int i3 = message.what;
            if (i3 == 2) {
                try {
                    callback.q(this.loadable, jElapsedRealtime, j2);
                    return;
                } catch (RuntimeException e2) {
                    Log.e("Unexpected exception handling load completed", e2);
                    Loader.this.f15836c = new UnexpectedLoaderException(e2);
                    return;
                }
            }
            if (i3 != 3) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i4 = this.errorCount + 1;
            this.errorCount = i4;
            LoadErrorAction loadErrorActionB = callback.b(this.loadable, jElapsedRealtime, j2, iOException, i4);
            int i5 = loadErrorActionB.f15837a;
            if (i5 == 3) {
                Loader.this.f15836c = this.currentError;
            } else if (i5 != 2) {
                if (i5 == 1) {
                    this.errorCount = 1;
                }
                long retryDelayMillis = loadErrorActionB.f15838b;
                if (retryDelayMillis == -9223372036854775807L) {
                    retryDelayMillis = getRetryDelayMillis();
                }
                start(retryDelayMillis);
            }
        }

        public void maybeThrowError(int i2) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i2) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (!z) {
                    Trace.beginSection("load:".concat(this.loadable.getClass().getSimpleName()));
                    try {
                        this.loadable.a();
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e2) {
                if (this.released) {
                    return;
                }
                obtainMessage(3, e2).sendToTarget();
            } catch (Exception e3) {
                if (this.released) {
                    return;
                }
                Log.e("Unexpected exception loading stream", e3);
                obtainMessage(3, new UnexpectedLoaderException(e3)).sendToTarget();
            } catch (OutOfMemoryError e4) {
                if (this.released) {
                    return;
                }
                Log.e("OutOfMemory error loading stream", e4);
                obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
            } catch (Error e5) {
                if (!this.released) {
                    Log.e("Unexpected error loading stream", e5);
                    obtainMessage(4, e5).sendToTarget();
                }
                throw e5;
            }
        }

        public void start(long j2) {
            Preconditions.q(Loader.this.f15835b == null);
            Loader.this.f15835b = this;
            if (j2 > 0) {
                sendEmptyMessageDelayed(1, j2);
            } else {
                execute();
            }
        }
    }

    public interface Loadable {
        void a();

        void c();
    }

    public interface ReleaseCallback {
        void h();
    }

    public static final class ReleaseTask implements Runnable {
        private final ReleaseCallback callback;

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.h();
        }
    }

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            String str;
            StringBuilder sb = new StringBuilder("Unexpected ");
            sb.append(th.getClass().getSimpleName());
            if (th.getMessage() != null) {
                str = ": " + th.getMessage();
            } else {
                str = "";
            }
            sb.append(str);
            super(sb.toString(), th);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Loader(String str) {
        String strG = tr.g("ExoPlayer:Loader:", str);
        String str2 = Util.f14242a;
        this(ReleasableExecutor.d(Executors.newSingleThreadExecutor(new to(strG, 1)), new v40(6)));
    }

    public final void a() {
        LoadTask loadTask = this.f15835b;
        loadTask.getClass();
        loadTask.cancel(false);
    }

    public final boolean b() {
        return this.f15835b != null;
    }

    public final void c(int i2) throws IOException {
        IOException iOException = this.f15836c;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.f15835b;
        if (loadTask != null) {
            if (i2 == Integer.MIN_VALUE) {
                i2 = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i2);
        }
    }

    public final void d(ReleaseCallback releaseCallback) {
        LoadTask loadTask = this.f15835b;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        ReleasableExecutor releasableExecutor = this.f15834a;
        if (releaseCallback != null) {
            releasableExecutor.execute(new ReleaseTask(releaseCallback));
        }
        releasableExecutor.release();
    }

    public final void e(Loadable loadable, Callback callback, int i2) {
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        this.f15836c = null;
        new LoadTask(looperMyLooper, loadable, callback, i2, SystemClock.elapsedRealtime()).start(0L);
    }

    public Loader(ReleasableExecutor releasableExecutor) {
        this.f15834a = releasableExecutor;
    }
}
