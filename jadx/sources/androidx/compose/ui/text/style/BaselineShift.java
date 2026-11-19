package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/BaselineShift;", "", "Companion", "multiplier", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class BaselineShift {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10922b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f10923c = 0.5f;
    public static final float d = -0.5f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10924a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/BaselineShift$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BaselineShift) {
            return Float.compare(this.f10924a, ((BaselineShift) obj).f10924a) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.f10924a);
    }

    public final String toString() {
        return "BaselineShift(multiplier=" + this.f10924a + ')';
    }
}
