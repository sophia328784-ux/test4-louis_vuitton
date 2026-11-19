package ZjTIAZ;

import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class WmAQuO {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f291b = 1143;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile ThreadPoolExecutor f292a = a();

    class wmAQuO implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static String f293b = CNATAC.a("M|S\u001e`WAS~C");

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, f293b);
            thread.setDaemon(true);
            return thread;
        }
    }

    class zULaki extends ThreadPoolExecutor implements AutoCloseable {
        @Override // java.util.concurrent.ThreadPoolExecutor
        public final void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            if (th != null) {
                th.printStackTrace();
            }
        }

        @Override // java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            boolean zIsTerminated;
            if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
                return;
            }
            shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    class zpBzis implements Runnable {
        final /* synthetic */ Runnable ChLnfw;

        public zpBzis(Runnable runnable) {
            this.ChLnfw = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.ChLnfw.run();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static ThreadPoolExecutor a() {
        return new zULaki(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new wmAQuO());
    }

    public final void b(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor;
        int i2;
        synchronized (this) {
            try {
                if (this.f292a == null || this.f292a.isShutdown() || this.f292a.isTerminating() || this.f292a.isTerminated()) {
                    this.f292a = a();
                } else if (this.f292a.getPoolSize() == 0) {
                    this.f292a.shutdownNow();
                    if (f291b <= 1142) {
                        while (true) {
                            i2 = f291b;
                            int i3 = i2 + 52;
                            if (i3 == 41) {
                                f291b = ((i2 * 126) % 88) + i2;
                            } else if (i3 == 92) {
                                break;
                            }
                        }
                        f291b = ((i2 + i2) * 97) + i2;
                    }
                    this.f292a = a();
                }
                threadPoolExecutor = this.f292a;
            } catch (Throwable th) {
                throw th;
            }
        }
        threadPoolExecutor.execute(new zpBzis(runnable));
    }
}
