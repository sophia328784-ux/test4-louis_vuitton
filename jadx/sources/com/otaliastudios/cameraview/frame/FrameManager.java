package com.otaliastudios.cameraview.frame;

import android.graphics.ImageFormat;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Axis;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.size.Size;
import defpackage.md;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FrameManager<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CameraLogger f38973f = CameraLogger.a("FrameManager");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f38974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f38975b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Size f38976c = null;
    public final LinkedBlockingQueue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Angles f38977e;

    public FrameManager(int i2, Class cls) {
        this.f38974a = i2;
        this.d = new LinkedBlockingQueue(i2);
    }

    public final Frame a(long j2, Object obj) {
        if (this.f38976c == null) {
            md.k("Can't call getFrame() after releasing or before setUp.");
            return null;
        }
        Frame frame = (Frame) this.d.poll();
        CameraLogger cameraLogger = f38973f;
        if (frame == null) {
            cameraLogger.b(1, "getFrame for time:", Long.valueOf(j2), "NOT AVAILABLE.");
            b(obj, false);
            return null;
        }
        cameraLogger.b(0, "getFrame for time:", Long.valueOf(j2), "RECYCLING.");
        Angles angles = this.f38977e;
        Reference reference = Reference.SENSOR;
        Reference reference2 = Reference.OUTPUT;
        Axis axis = Axis.RELATIVE_TO_SENSOR;
        angles.c(reference, reference2, axis);
        this.f38977e.c(reference, Reference.VIEW, axis);
        frame.f38971b = obj;
        frame.f38972c = j2;
        frame.d = j2;
        return frame;
    }

    public abstract void b(Object obj, boolean z);

    public void c() {
        Size size = this.f38976c;
        CameraLogger cameraLogger = f38973f;
        if (size == null) {
            cameraLogger.b(2, "release called twice. Ignoring.");
            return;
        }
        cameraLogger.b(1, "release: Clearing the frame and buffer queue.");
        this.d.clear();
        this.f38975b = -1;
        this.f38976c = null;
        this.f38977e = null;
    }

    public void d(int i2, Size size, Angles angles) {
        this.f38976c = size;
        this.f38975b = (int) Math.ceil(((double) ((size.f39087c * size.f39086b) * ImageFormat.getBitsPerPixel(i2))) / 8.0d);
        for (int i3 = 0; i3 < this.f38974a; i3++) {
            this.d.offer(new Frame(this));
        }
        this.f38977e = angles;
    }
}
