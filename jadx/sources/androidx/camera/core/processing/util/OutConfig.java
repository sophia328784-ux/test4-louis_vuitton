package androidx.camera.core.processing.util;

import android.graphics.Rect;
import android.util.Size;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class OutConfig {
    public static OutConfig h(int i2, int i3, Rect rect, Size size, int i4, boolean z) {
        return new AutoValue_OutConfig(UUID.randomUUID(), i2, i3, rect, size, i4, z);
    }

    public abstract Rect a();

    public abstract int b();

    public abstract int c();

    public abstract Size d();

    public abstract int e();

    public abstract UUID f();

    public abstract boolean g();

    public abstract boolean i();
}
