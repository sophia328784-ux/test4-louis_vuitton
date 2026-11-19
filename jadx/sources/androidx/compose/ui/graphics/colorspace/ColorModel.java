package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/ColorModel;", "", "Companion", "packedValue", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class ColorModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8948a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f8949b = 12884901888L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f8950c = 12884901889L;
    public static final long d = 12884901890L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f8951e = 17179869187L;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final boolean a(long j2, long j3) {
        return j2 == j3;
    }

    public static String b(long j2) {
        if (a(j2, f8949b)) {
            return "Rgb";
        }
        if (a(j2, f8950c)) {
            return "Xyz";
        }
        if (a(j2, d)) {
            return "Lab";
        }
        return a(j2, f8951e) ? "Cmyk" : "Unknown";
    }
}
