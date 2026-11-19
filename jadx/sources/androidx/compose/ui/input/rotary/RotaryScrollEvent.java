package androidx.compose.ui.input.rotary;

import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "", "", "verticalScrollPixels", "horizontalScrollPixels", "", "uptimeMillis", "", "inputDeviceId", "<init>", "(FFJI)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RotaryScrollEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f9411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f9413c;
    public final int d;

    public RotaryScrollEvent(float f2, float f3, long j2, int i2) {
        this.f9411a = f2;
        this.f9412b = f3;
        this.f9413c = j2;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RotaryScrollEvent)) {
            return false;
        }
        RotaryScrollEvent rotaryScrollEvent = (RotaryScrollEvent) obj;
        return rotaryScrollEvent.f9411a == this.f9411a && rotaryScrollEvent.f9412b == this.f9412b && rotaryScrollEvent.f9413c == this.f9413c && rotaryScrollEvent.d == this.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + fc.a(pq0.b(Float.hashCode(this.f9411a) * 31, 31, this.f9412b), 31, this.f9413c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RotaryScrollEvent(verticalScrollPixels=");
        sb.append(this.f9411a);
        sb.append(",horizontalScrollPixels=");
        sb.append(this.f9412b);
        sb.append(",uptimeMillis=");
        sb.append(this.f9413c);
        sb.append(",deviceId=");
        return tr.k(sb, this.d, ')');
    }
}
