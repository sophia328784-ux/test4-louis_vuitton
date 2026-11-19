package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.util.Preconditions;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
final class DiskCacheWriteLocker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f24591a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WriteLockPool f24592b = new WriteLockPool();

    public static class WriteLock {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ReentrantLock f24593a = new ReentrantLock();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f24594b;
    }

    public static class WriteLockPool {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayDeque f24595a = new ArrayDeque();
    }

    public final void a(String str) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = (WriteLock) this.f24591a.get(str);
                Preconditions.c(writeLock, "Argument must not be null");
                int i2 = writeLock.f24594b;
                if (i2 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + writeLock.f24594b);
                }
                int i3 = i2 - 1;
                writeLock.f24594b = i3;
                if (i3 == 0) {
                    WriteLock writeLock2 = (WriteLock) this.f24591a.remove(str);
                    if (!writeLock2.equals(writeLock)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + writeLock2 + ", safeKey: " + str);
                    }
                    WriteLockPool writeLockPool = this.f24592b;
                    synchronized (writeLockPool.f24595a) {
                        try {
                            if (writeLockPool.f24595a.size() < 10) {
                                writeLockPool.f24595a.offer(writeLock2);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        writeLock.f24593a.unlock();
    }
}
