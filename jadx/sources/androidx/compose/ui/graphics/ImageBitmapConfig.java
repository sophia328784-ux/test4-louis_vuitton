package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/ImageBitmapConfig;", "", "Companion", "value", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class ImageBitmapConfig {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8892b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f8893c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f8894e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8895f = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8896a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ImageBitmapConfig) {
            return this.f8896a == ((ImageBitmapConfig) obj).f8896a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8896a);
    }

    public final String toString() {
        int i2 = this.f8896a;
        if (i2 == 0) {
            return "Argb8888";
        }
        if (i2 == f8893c) {
            return "Alpha8";
        }
        if (i2 == d) {
            return "Rgb565";
        }
        if (i2 == f8894e) {
            return "F16";
        }
        return i2 == f8895f ? "Gpu" : "Unknown";
    }
}
