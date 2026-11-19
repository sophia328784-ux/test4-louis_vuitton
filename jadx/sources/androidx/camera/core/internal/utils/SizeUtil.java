package androidx.camera.core.internal.utils;

import android.util.Size;
import com.sightcall.uvc.Camera;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes.dex */
public abstract class SizeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Size f2515a = new Size(0, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Size f2516b = new Size(DilithiumEngine.DilithiumPolyT1PackedBytes, 240);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Size f2517c = new Size(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT);
    public static final Size d = new Size(Sink.Video.MAX_DIMENSION_LOW, Camera.DEFAULT_PREVIEW_HEIGHT);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Size f2518e = new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Size f2519f = new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW);
    public static final Size g = new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, 1440);

    static {
        new Size(2560, 1440);
        new Size(3840, 2160);
    }

    public static int a(Size size) {
        return size.getHeight() * size.getWidth();
    }
}
