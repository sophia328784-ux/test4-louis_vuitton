package androidx.compose.ui.text.style;

import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/style/TextGeometricTransform;", "", "", "scaleX", "skewX", "<init>", "(FF)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextGeometricTransform {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f10975c = new Companion(null);
    public static final TextGeometricTransform d = new TextGeometricTransform(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10977b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ TextGeometricTransform(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0f : f2, (i2 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextGeometricTransform)) {
            return false;
        }
        TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj;
        return this.f10976a == textGeometricTransform.f10976a && this.f10977b == textGeometricTransform.f10977b;
    }

    public final int hashCode() {
        return Float.hashCode(this.f10977b) + (Float.hashCode(this.f10976a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextGeometricTransform(scaleX=");
        sb.append(this.f10976a);
        sb.append(", skewX=");
        return a.m(sb, this.f10977b, ')');
    }

    public TextGeometricTransform(float f2, float f3) {
        this.f10976a = f2;
        this.f10977b = f3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextGeometricTransform() {
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this(f2, f2, 3, null);
    }
}
