package androidx.camera.core.internal.compat.workaround;

import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.compat.quirk.IncorrectJpegMetadataQuirk;

/* JADX INFO: loaded from: classes.dex */
public class JpegMetadataCorrector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IncorrectJpegMetadataQuirk f2508a;

    public JpegMetadataCorrector(Quirks quirks) {
        this.f2508a = (IncorrectJpegMetadataQuirk) quirks.b(IncorrectJpegMetadataQuirk.class);
    }
}
