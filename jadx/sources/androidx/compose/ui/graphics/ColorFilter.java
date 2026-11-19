package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/ColorFilter;", "", "Landroid/graphics/ColorFilter;", "Landroidx/compose/ui/graphics/NativeColorFilter;", "nativeColorFilter", "<init>", "(Landroid/graphics/ColorFilter;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ColorFilter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8873b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.graphics.ColorFilter f8874a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/ColorFilter$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static BlendModeColorFilter a(Companion companion, long j2) {
            BlendMode.f8847a.getClass();
            int i2 = BlendMode.f8851f;
            companion.getClass();
            return new BlendModeColorFilter(j2, i2, null);
        }
    }

    public ColorFilter(android.graphics.ColorFilter colorFilter) {
        this.f8874a = colorFilter;
    }
}
