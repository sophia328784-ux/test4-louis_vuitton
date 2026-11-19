package androidx.camera.core.internal;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import defpackage.pi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/core/internal/ScreenFlashWrapper;", "Landroidx/camera/core/ImageCapture$ScreenFlash;", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ScreenFlashWrapper implements ImageCapture.ScreenFlash {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f2482e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageCapture.ScreenFlash f2483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2484b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2485c;
    public ImageCapture.ScreenFlashListener d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;", "", "", "TAG", "Ljava/lang/String;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ScreenFlashWrapper(ImageCapture.ScreenFlash screenFlash, DefaultConstructorMarker defaultConstructorMarker) {
        this.f2483a = screenFlash;
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlash
    public final void a(long j2, ImageCapture.ScreenFlashListener screenFlashListener) {
        int i2;
        screenFlashListener.getClass();
        synchronized (this.f2484b) {
            i2 = 1;
            this.f2485c = true;
            this.d = screenFlashListener;
        }
        ImageCapture.ScreenFlash screenFlash = this.f2483a;
        if (screenFlash != null) {
            screenFlash.a(j2, new pi(this, i2));
        } else {
            Logger.a("ScreenFlashWrapper");
            c();
        }
    }

    public final void b() {
        synchronized (this.f2484b) {
            try {
                if (this.f2485c) {
                    ImageCapture.ScreenFlash screenFlash = this.f2483a;
                    if (screenFlash != null) {
                        screenFlash.clear();
                    } else {
                        Logger.a("ScreenFlashWrapper");
                    }
                } else {
                    Logger.c(5, "ScreenFlashWrapper");
                }
                this.f2485c = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this.f2484b) {
            try {
                ImageCapture.ScreenFlashListener screenFlashListener = this.d;
                if (screenFlashListener != null) {
                    screenFlashListener.onCompleted();
                }
                this.d = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlash
    public final void clear() {
        b();
    }
}
