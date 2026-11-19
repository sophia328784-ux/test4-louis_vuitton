package androidx.camera.camera2.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ExposureControl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1577c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExposureStateImpl f1575a = new ExposureStateImpl();

    public ExposureControl(Camera2CameraControlImpl camera2CameraControlImpl, Executor executor) {
        this.f1576b = executor;
    }
}
