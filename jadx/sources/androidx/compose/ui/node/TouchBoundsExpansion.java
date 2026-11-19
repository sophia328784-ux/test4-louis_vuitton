package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/node/TouchBoundsExpansion;", "", "Companion", "packedValue", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class TouchBoundsExpansion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f9834a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f9835b = Companion.b(0, 0, true, 0, 0);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;", "", "", "MASK", "I", "SHIFT", "MAX_VALUE", "", "IS_LAYOUT_DIRECTION_AWARE", "J", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final int a(Companion companion, long j2, int i2) {
            companion.getClass();
            return ((int) (j2 >> (i2 * 15))) & 32767;
        }

        public static long b(int i2, int i3, boolean z, int i4, int i5) {
            return (((long) (i3 & 32767)) << 15) | ((long) (i2 & 32767)) | (((long) (i4 & 32767)) << 30) | (((long) (i5 & 32767)) << 45) | (z ? Long.MIN_VALUE : 0L);
        }
    }
}
