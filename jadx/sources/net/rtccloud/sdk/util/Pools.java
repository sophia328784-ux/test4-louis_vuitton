package net.rtccloud.sdk.util;

import defpackage.md;

/* JADX INFO: loaded from: classes4.dex */
public final class Pools {

    public interface Pool<T> {
        T acquire();

        boolean release(T t);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i2) {
            if (i2 > 0) {
                this.mPool = new Object[i2];
            } else {
                md.n("The max pool size must be > 0");
                throw null;
            }
        }

        private boolean isInPool(T t) {
            for (int i2 = 0; i2 < this.mPoolSize; i2++) {
                if (this.mPool[i2] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // net.rtccloud.sdk.util.Pools.Pool
        public T acquire() {
            int i2 = this.mPoolSize;
            if (i2 <= 0) {
                return null;
            }
            int i3 = i2 - 1;
            Object[] objArr = this.mPool;
            T t = (T) objArr[i3];
            objArr[i3] = null;
            this.mPoolSize = i2 - 1;
            return t;
        }

        @Override // net.rtccloud.sdk.util.Pools.Pool
        public boolean release(T t) {
            if (isInPool(t)) {
                md.k("Already in the pool!");
                return false;
            }
            int i2 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i2 >= objArr.length) {
                return false;
            }
            objArr[i2] = t;
            this.mPoolSize = i2 + 1;
            return true;
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int i2) {
            super(i2);
            this.mLock = new Object();
        }

        @Override // net.rtccloud.sdk.util.Pools.SimplePool, net.rtccloud.sdk.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.mLock) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // net.rtccloud.sdk.util.Pools.SimplePool, net.rtccloud.sdk.util.Pools.Pool
        public boolean release(T t) {
            boolean zRelease;
            synchronized (this.mLock) {
                zRelease = super.release(t);
            }
            return zRelease;
        }
    }

    private Pools() {
    }
}
