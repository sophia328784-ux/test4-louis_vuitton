package androidx.loader.content;

import android.content.Context;
import android.os.SystemClock;
import androidx.core.os.OperationCanceledException;
import androidx.loader.app.LoaderManagerImpl;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f13627f;
    public volatile LoadTask g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile LoadTask f13628h;

    public final class LoadTask extends ModernAsyncTask<Void, Void, D> implements Runnable {
        private final CountDownLatch mDone = new CountDownLatch(1);
        boolean waiting;

        public LoadTask() {
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public D doInBackground(Void... voidArr) {
            try {
                AsyncTaskLoader.this.e();
                return null;
            } catch (OperationCanceledException e2) {
                if (isCancelled()) {
                    return null;
                }
                throw e2;
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public void onCancelled(D d) {
            try {
                AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
                if (asyncTaskLoader.f13628h == this) {
                    SystemClock.uptimeMillis();
                    asyncTaskLoader.f13628h = null;
                    asyncTaskLoader.d();
                }
            } finally {
                this.mDone.countDown();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public void onPostExecute(D d) {
            try {
                AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
                if (asyncTaskLoader.g != this) {
                    if (asyncTaskLoader.f13628h == this) {
                        SystemClock.uptimeMillis();
                        asyncTaskLoader.f13628h = null;
                        asyncTaskLoader.d();
                    }
                } else if (!asyncTaskLoader.f13631c) {
                    SystemClock.uptimeMillis();
                    asyncTaskLoader.g = null;
                    LoaderManagerImpl.LoaderInfo loaderInfo = asyncTaskLoader.f13629a;
                    if (loaderInfo != null) {
                        loaderInfo.c(d);
                    }
                }
            } finally {
                this.mDone.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.waiting = false;
            AsyncTaskLoader.this.d();
        }

        public void waitForLoader() {
            try {
                this.mDone.await();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncTaskLoader(Context context) {
        super(context);
        Executor executor = ModernAsyncTask.THREAD_POOL_EXECUTOR;
        this.f13627f = executor;
    }

    @Override // androidx.loader.content.Loader
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        if (this.g != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.g);
            printWriter.print(" waiting=");
            printWriter.println(this.g.waiting);
        }
        if (this.f13628h != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f13628h);
            printWriter.print(" waiting=");
            printWriter.println(this.f13628h.waiting);
        }
    }

    @Override // androidx.loader.content.Loader
    public final boolean b() {
        if (this.g == null) {
            return false;
        }
        if (!this.f13630b) {
            this.f13632e = true;
        }
        LoadTask loadTask = this.f13628h;
        LoadTask loadTask2 = this.g;
        if (loadTask != null) {
            if (loadTask2.waiting) {
                this.g.waiting = false;
                throw null;
            }
            this.g = null;
            return false;
        }
        boolean z = loadTask2.waiting;
        LoadTask loadTask3 = this.g;
        if (z) {
            loadTask3.waiting = false;
            throw null;
        }
        boolean zCancel = loadTask3.cancel(false);
        if (zCancel) {
            this.f13628h = this.g;
        }
        this.g = null;
        return zCancel;
    }

    public final void d() {
        if (this.f13628h != null || this.g == null) {
            return;
        }
        boolean z = this.g.waiting;
        LoadTask loadTask = this.g;
        if (z) {
            loadTask.waiting = false;
            throw null;
        }
        loadTask.executeOnExecutor(this.f13627f, null);
    }

    public abstract void e();

    public final void f() {
        b();
        this.g = new LoadTask();
        d();
    }
}
