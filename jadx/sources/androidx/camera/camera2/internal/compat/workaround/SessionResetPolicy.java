package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.Preview3AThreadCrashQuirk;
import androidx.camera.core.impl.Quirks;

/* JADX INFO: loaded from: classes.dex */
public class SessionResetPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1781a;

    public SessionResetPolicy(Quirks quirks) {
        this.f1781a = quirks.a(Preview3AThreadCrashQuirk.class);
    }
}
