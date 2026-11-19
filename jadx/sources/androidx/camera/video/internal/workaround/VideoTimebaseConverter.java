package androidx.camera.video.internal.workaround;

import android.os.Build;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.internal.compat.quirk.CameraUseInconsistentTimebaseQuirk;
import androidx.camera.video.internal.encoder.TimeProvider;
import defpackage.bm;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class VideoTimebaseConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f3119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timebase f3120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraUseInconsistentTimebaseQuirk f3121c;
    public long d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Timebase f3122e;

    /* JADX INFO: renamed from: androidx.camera.video.internal.workaround.VideoTimebaseConverter$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3123a;

        static {
            int[] iArr = new int[Timebase.values().length];
            f3123a = iArr;
            try {
                iArr[Timebase.REALTIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3123a[Timebase.UPTIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public VideoTimebaseConverter(TimeProvider timeProvider, Timebase timebase, CameraUseInconsistentTimebaseQuirk cameraUseInconsistentTimebaseQuirk) {
        this.f3119a = timeProvider;
        this.f3120b = timebase;
        this.f3121c = cameraUseInconsistentTimebaseQuirk;
    }

    public final long a(long j2) {
        boolean z;
        Timebase timebase = this.f3122e;
        TimeProvider timeProvider = this.f3119a;
        if (timebase == null) {
            CameraUseInconsistentTimebaseQuirk cameraUseInconsistentTimebaseQuirk = this.f3121c;
            Timebase timebase2 = this.f3120b;
            if (cameraUseInconsistentTimebaseQuirk != null) {
                Logger.c(5, "VideoTimebaseConverter");
            } else {
                z = timeProvider.a() - timeProvider.b() > 3000000;
                this.f3122e = timebase2;
            }
            Timebase timebase3 = Math.abs(j2 - timeProvider.a()) < Math.abs(j2 - timeProvider.b()) ? Timebase.REALTIME : Timebase.UPTIME;
            if (!z || timebase3 == timebase2) {
                Objects.toString(timebase3);
                Logger.c(3, "VideoTimebaseConverter");
            } else {
                int i2 = Build.VERSION.SDK_INT;
                String.format("Detected camera timebase inconsistent. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: %s, Model: %s, Hardware: %s, API Level: %d%s].\nCamera timebase is inconsistent. The timebase reported by the camera is %s, but the actual timebase contained in the frame is detected as %s.", Build.MANUFACTURER, Build.MODEL, Build.HARDWARE, Integer.valueOf(i2), i2 >= 31 ? ", SOC: " + Build.SOC_MODEL : "", this.f3120b, timebase3);
                Logger.a("VideoTimebaseConverter");
            }
            timebase2 = timebase3;
            this.f3122e = timebase2;
        }
        int i3 = AnonymousClass1.f3123a[this.f3122e.ordinal()];
        if (i3 != 1) {
            if (i3 == 2) {
                return j2;
            }
            bm.d(this.f3122e, "Unknown timebase: ");
            return 0L;
        }
        if (this.d == -1) {
            long j3 = Long.MAX_VALUE;
            long j4 = 0;
            for (int i4 = 0; i4 < 3; i4++) {
                long jB = timeProvider.b();
                long jA = timeProvider.a();
                long jB2 = timeProvider.b();
                long j5 = jB2 - jB;
                if (i4 == 0 || j5 < j3) {
                    j4 = jA - ((jB + jB2) >> 1);
                    j3 = j5;
                }
            }
            this.d = Math.max(0L, j4);
            Logger.c(3, "VideoTimebaseConverter");
        }
        return j2 - this.d;
    }
}
