package androidx.camera.video.internal.compat.quirk;

import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import defpackage.ot;

/* JADX INFO: loaded from: classes.dex */
public abstract class DeviceQuirks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile Quirks f2947a;

    static {
        QuirkSettingsHolder.f2320c.a(CameraXExecutors.a(), new ot(1));
    }
}
