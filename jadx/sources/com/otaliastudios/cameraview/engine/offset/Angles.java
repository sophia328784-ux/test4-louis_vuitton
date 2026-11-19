package com.otaliastudios.cameraview.engine.offset;

import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.controls.Facing;
import defpackage.md;
import defpackage.pq0;
import defpackage.x1;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class Angles {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f38944e = CameraLogger.a("Angles");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Facing f38945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f38946b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f38947c = 0;
    public int d = 0;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.offset.Angles$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f38948a;

        static {
            int[] iArr = new int[Reference.values().length];
            f38948a = iArr;
            try {
                iArr[Reference.VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38948a[Reference.OUTPUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38948a[Reference.SENSOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void e(int i2) {
        if (i2 == 0 || i2 == 90 || i2 == 180 || i2 == 270) {
            return;
        }
        md.k(pq0.k(i2, "This value is not sanitized: "));
    }

    public static int f(int i2) {
        return (i2 + 360) % 360;
    }

    public final int a(Reference reference, Reference reference2) {
        if (reference == reference2) {
            return 0;
        }
        Reference reference3 = Reference.BASE;
        if (reference2 == reference3) {
            return f(360 - a(reference2, reference));
        }
        if (reference != reference3) {
            return f(a(reference3, reference2) - a(reference3, reference));
        }
        int i2 = AnonymousClass1.f38948a[reference2.ordinal()];
        if (i2 == 1) {
            return f(360 - this.f38947c);
        }
        if (i2 == 2) {
            return f(this.d);
        }
        if (i2 == 3) {
            return f(360 - this.f38946b);
        }
        x1.n(reference2, "Unknown reference: ");
        return 0;
    }

    public final boolean b(Reference reference, Reference reference2) {
        return c(reference, reference2, Axis.ABSOLUTE) % Sink.ORIENTATION_180 != 0;
    }

    public final int c(Reference reference, Reference reference2, Axis axis) {
        int iA = a(reference, reference2);
        return (axis == Axis.RELATIVE_TO_SENSOR && this.f38945a == Facing.FRONT) ? f(360 - iA) : iA;
    }

    public final void d() {
        f38944e.b(1, "Angles changed:", "sensorOffset:", Integer.valueOf(this.f38946b), "displayOffset:", Integer.valueOf(this.f38947c), "deviceOrientation:", Integer.valueOf(this.d));
    }
}
