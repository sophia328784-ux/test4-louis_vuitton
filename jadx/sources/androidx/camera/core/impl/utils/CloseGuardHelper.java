package androidx.camera.core.impl.utils;

import android.os.Build;
import android.util.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public final class CloseGuardHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CloseGuardImpl f2387a;

    public static final class CloseGuardApi30Impl implements CloseGuardImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CloseGuard f2388a = new CloseGuard();

        @Override // androidx.camera.core.impl.utils.CloseGuardHelper.CloseGuardImpl
        public final void a(String str) {
            this.f2388a.open(str);
        }

        @Override // androidx.camera.core.impl.utils.CloseGuardHelper.CloseGuardImpl
        public final void b() {
            this.f2388a.warnIfOpen();
        }

        @Override // androidx.camera.core.impl.utils.CloseGuardHelper.CloseGuardImpl
        public final void close() {
            this.f2388a.close();
        }
    }

    public interface CloseGuardImpl {
        void a(String str);

        void b();

        void close();
    }

    public static final class CloseGuardNoOpImpl implements CloseGuardImpl {
        @Override // androidx.camera.core.impl.utils.CloseGuardHelper.CloseGuardImpl
        public final void a(String str) {
        }

        @Override // androidx.camera.core.impl.utils.CloseGuardHelper.CloseGuardImpl
        public final void b() {
        }

        @Override // androidx.camera.core.impl.utils.CloseGuardHelper.CloseGuardImpl
        public final void close() {
        }
    }

    public CloseGuardHelper(CloseGuardImpl closeGuardImpl) {
        this.f2387a = closeGuardImpl;
    }

    public static CloseGuardHelper b() {
        return Build.VERSION.SDK_INT >= 30 ? new CloseGuardHelper(new CloseGuardApi30Impl()) : new CloseGuardHelper(new CloseGuardNoOpImpl());
    }

    public final void a() {
        this.f2387a.close();
    }

    public final void c(String str) {
        this.f2387a.a(str);
    }

    public final void d() {
        this.f2387a.b();
    }
}
