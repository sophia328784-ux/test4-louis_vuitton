package androidx.core.view.insets;

import android.graphics.drawable.ColorDrawable;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.Insets;
import defpackage.md;
import defpackage.pq0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class Protection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Attributes f12289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Insets f12290c;
    public Insets d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f12291e;

    public static class Attributes {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Insets f12294c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ColorDrawable f12295e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f12296f;
        public float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f12297h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Callback f12298i;

        public interface Callback {
            default void a(ColorDrawable colorDrawable) {
            }

            default void b(int i2) {
            }

            default void c(boolean z) {
            }

            default void d(Insets insets) {
            }

            default void e(float f2) {
            }

            default void f(int i2) {
            }

            default void g(float f2) {
            }

            default void h(float f2) {
            }
        }
    }

    static {
        new PathInterpolator(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        new PathInterpolator(0.6f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
        new PathInterpolator(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2f, 1.0f);
        new PathInterpolator(0.4f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
    }

    public Protection(int i2) {
        Attributes attributes = new Attributes();
        attributes.f12292a = -1;
        attributes.f12293b = -1;
        Insets insets = Insets.f12053e;
        attributes.f12294c = insets;
        attributes.d = false;
        attributes.f12295e = null;
        attributes.f12296f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        attributes.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        attributes.f12297h = 1.0f;
        this.f12289b = attributes;
        this.f12290c = insets;
        this.d = insets;
        this.f12291e = null;
        if (i2 == 1 || i2 == 2 || i2 == 4 || i2 == 8) {
            this.f12288a = i2;
        } else {
            md.n(pq0.k(i2, "Unexpected side: "));
            throw null;
        }
    }

    public void a(int i2) {
    }

    public final void b(float f2) {
        float f3 = f2 * 1.0f;
        Attributes attributes = this.f12289b;
        if (attributes.f12297h != f3) {
            attributes.f12297h = f3;
            Attributes.Callback callback = attributes.f12298i;
            if (callback != null) {
                callback.e(f3);
            }
        }
    }

    public final void c(float f2) {
        float f3 = f2 * 1.0f;
        Attributes attributes = this.f12289b;
        int i2 = this.f12288a;
        if (i2 == 1) {
            float f4 = (-(1.0f - f3)) * attributes.f12292a;
            if (attributes.f12296f != f4) {
                attributes.f12296f = f4;
                Attributes.Callback callback = attributes.f12298i;
                if (callback != null) {
                    callback.g(f4);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 2) {
            float f5 = (-(1.0f - f3)) * attributes.f12293b;
            if (attributes.g != f5) {
                attributes.g = f5;
                Attributes.Callback callback2 = attributes.f12298i;
                if (callback2 != null) {
                    callback2.h(f5);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 4) {
            float f6 = (1.0f - f3) * attributes.f12292a;
            if (attributes.f12296f != f6) {
                attributes.f12296f = f6;
                Attributes.Callback callback3 = attributes.f12298i;
                if (callback3 != null) {
                    callback3.g(f6);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 != 8) {
            return;
        }
        float f7 = (1.0f - f3) * attributes.f12293b;
        if (attributes.g != f7) {
            attributes.g = f7;
            Attributes.Callback callback4 = attributes.f12298i;
            if (callback4 != null) {
                callback4.h(f7);
            }
        }
    }
}
