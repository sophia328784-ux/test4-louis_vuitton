package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment;", "", "Companion", "VerticalCrossAxisAlignment", "HorizontalCrossAxisAlignment", "Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CrossAxisAlignment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f4951a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "Landroidx/compose/ui/Alignment$Horizontal;", "horizontal", "<init>", "(Landroidx/compose/ui/Alignment$Horizontal;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class HorizontalCrossAxisAlignment extends CrossAxisAlignment {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Alignment.Horizontal f4952b;

        public HorizontalCrossAxisAlignment(Alignment.Horizontal horizontal) {
            super(null);
            this.f4952b = horizontal;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public final int a(int i2, int i3, LayoutDirection layoutDirection) {
            return this.f4952b.a(i3, i2, layoutDirection);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HorizontalCrossAxisAlignment) && Intrinsics.c(this.f4952b, ((HorizontalCrossAxisAlignment) obj).f4952b);
        }

        public final int hashCode() {
            return this.f4952b.hashCode();
        }

        public final String toString() {
            return "HorizontalCrossAxisAlignment(horizontal=" + this.f4952b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "Landroidx/compose/ui/Alignment$Vertical;", "vertical", "<init>", "(Landroidx/compose/ui/Alignment$Vertical;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class VerticalCrossAxisAlignment extends CrossAxisAlignment {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Alignment.Vertical f4953b;

        public VerticalCrossAxisAlignment(Alignment.Vertical vertical) {
            super(null);
            this.f4953b = vertical;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public final int a(int i2, int i3, LayoutDirection layoutDirection) {
            return this.f4953b.a(i3, i2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VerticalCrossAxisAlignment) && Intrinsics.c(this.f4953b, ((VerticalCrossAxisAlignment) obj).f4953b);
        }

        public final int hashCode() {
            return this.f4953b.hashCode();
        }

        public final String toString() {
            return "VerticalCrossAxisAlignment(vertical=" + this.f4953b + ')';
        }
    }

    public CrossAxisAlignment(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract int a(int i2, int i3, LayoutDirection layoutDirection);
}
