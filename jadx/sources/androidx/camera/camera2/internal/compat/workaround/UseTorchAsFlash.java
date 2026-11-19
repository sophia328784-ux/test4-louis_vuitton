package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.UseTorchAsFlashQuirk;
import androidx.camera.core.impl.Quirks;

/* JADX INFO: loaded from: classes.dex */
public class UseTorchAsFlash {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1790a;

    public UseTorchAsFlash(Quirks quirks) {
        this.f1790a = quirks.a(UseTorchAsFlashQuirk.class);
    }
}
