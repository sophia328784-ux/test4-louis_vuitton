package androidx.camera.camera2.internal;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.util.Size;
import android.view.Display;
import androidx.camera.camera2.internal.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.camera2.internal.compat.quirk.SmallDisplaySizeQuirk;
import androidx.camera.camera2.internal.compat.workaround.DisplaySizeCorrector;
import androidx.camera.camera2.internal.compat.workaround.MaxPreviewSize;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.internal.utils.SizeUtil;
import com.sightcall.uvc.Camera;
import defpackage.md;
import java.util.Locale;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes.dex */
public class DisplayInfoManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Size f1565e = new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Size f1566f = new Size(DilithiumEngine.DilithiumPolyT1PackedBytes, 240);
    public static final Size g = new Size(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f1567h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile DisplayInfoManager f1568i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayManager f1569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Size f1570b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MaxPreviewSize f1571c = new MaxPreviewSize();
    public final DisplaySizeCorrector d = new DisplaySizeCorrector();

    public DisplayInfoManager(Context context) {
        this.f1569a = (DisplayManager) context.getSystemService("display");
    }

    public static DisplayInfoManager b(Context context) {
        if (f1568i == null) {
            synchronized (f1567h) {
                try {
                    if (f1568i == null) {
                        f1568i = new DisplayInfoManager(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1568i;
    }

    public static Display d(Display[] displayArr, boolean z) {
        Display display = null;
        int i2 = -1;
        for (Display display2 : displayArr) {
            if (!z || display2.getState() != 1) {
                Point point = new Point();
                display2.getRealSize(point);
                int i3 = point.x * point.y;
                if (i3 > i2) {
                    display = display2;
                    i2 = i3;
                }
            }
        }
        return display;
    }

    public final Size a() {
        Size sizeF;
        Point point = new Point();
        c(false).getRealSize(point);
        Size size = new Size(point.x, point.y);
        Size size2 = SizeUtil.f2515a;
        if (size.getHeight() * size.getWidth() < SizeUtil.a(f1566f)) {
            size = this.d.f1763a != null ? (Size) SmallDisplaySizeQuirk.f1755a.get(Build.MODEL.toUpperCase(Locale.US)) : null;
            if (size == null) {
                size = g;
            }
        }
        if (size.getHeight() > size.getWidth()) {
            size = new Size(size.getHeight(), size.getWidth());
        }
        int height = size.getHeight() * size.getWidth();
        Size size3 = f1565e;
        if (height > size3.getHeight() * size3.getWidth()) {
            size = size3;
        }
        if (this.f1571c.f1770a != null && (sizeF = ExtraCroppingQuirk.f(SurfaceConfig.ConfigType.PRIV)) != null) {
            if (sizeF.getHeight() * sizeF.getWidth() > size.getHeight() * size.getWidth()) {
                return sizeF;
            }
        }
        return size;
    }

    public final Display c(boolean z) {
        Display[] displays = this.f1569a.getDisplays();
        if (displays.length == 1) {
            return displays[0];
        }
        Display displayD = d(displays, z);
        if (displayD == null && z) {
            displayD = d(displays, false);
        }
        if (displayD != null) {
            return displayD;
        }
        md.n("No display can be found from the input display manager!");
        return null;
    }

    public final Size e() {
        if (this.f1570b != null) {
            return this.f1570b;
        }
        this.f1570b = a();
        return this.f1570b;
    }
}
