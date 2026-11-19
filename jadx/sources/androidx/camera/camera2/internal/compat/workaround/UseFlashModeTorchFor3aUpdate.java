package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.TorchFlashRequiredFor3aUpdateQuirk;
import androidx.camera.core.impl.Quirks;

/* JADX INFO: loaded from: classes.dex */
public class UseFlashModeTorchFor3aUpdate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TorchFlashRequiredFor3aUpdateQuirk f1789a;

    public UseFlashModeTorchFor3aUpdate(Quirks quirks) {
        this.f1789a = (TorchFlashRequiredFor3aUpdateQuirk) quirks.b(TorchFlashRequiredFor3aUpdateQuirk.class);
    }
}
