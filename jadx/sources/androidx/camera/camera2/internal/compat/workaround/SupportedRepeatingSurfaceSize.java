package androidx.camera.camera2.internal.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.RepeatingStreamConstraintForVideoRecordingQuirk;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes.dex */
public class SupportedRepeatingSurfaceSize {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Size f1783b = new Size(DilithiumEngine.DilithiumPolyT1PackedBytes, 240);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CompareSizesByArea f1784c = new CompareSizesByArea();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepeatingStreamConstraintForVideoRecordingQuirk f1785a = (RepeatingStreamConstraintForVideoRecordingQuirk) DeviceQuirks.f1731a.b(RepeatingStreamConstraintForVideoRecordingQuirk.class);
}
