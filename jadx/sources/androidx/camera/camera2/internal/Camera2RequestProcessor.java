package androidx.camera.camera2.internal;

import androidx.camera.core.impl.RequestProcessor;
import androidx.camera.core.impl.SessionProcessorSurface;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Camera2RequestProcessor implements RequestProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1530a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1531b;

    public Camera2RequestProcessor(CaptureSession captureSession, List<SessionProcessorSurface> list) {
        Preconditions.b(captureSession.f1550j == CaptureSession.State.OPENED, "CaptureSession state must be OPENED. Current state:" + captureSession.f1550j);
        this.f1531b = Collections.unmodifiableList(new ArrayList(list));
    }
}
