package androidx.compose.material3;

import androidx.compose.ui.Alignment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/material3/TextFieldLabelPosition;", "", "Attached", "Above", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class TextFieldLabelPosition {
    public TextFieldLabelPosition(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/material3/TextFieldLabelPosition$Above;", "Landroidx/compose/material3/TextFieldLabelPosition;", "Landroidx/compose/ui/Alignment$Horizontal;", "alignment", "<init>", "(Landroidx/compose/ui/Alignment$Horizontal;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Above extends TextFieldLabelPosition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Alignment.Horizontal f7375a;

        /* JADX WARN: Illegal instructions before constructor call */
        public Above(Alignment.Horizontal horizontal, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i2 & 1) != 0) {
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
            }
            this(horizontal);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Above)) {
                return false;
            }
            return Intrinsics.c(this.f7375a, ((Above) obj).f7375a);
        }

        public final int hashCode() {
            return this.f7375a.hashCode();
        }

        public final String toString() {
            return "Above(alignment=" + this.f7375a + ')';
        }

        public Above(Alignment.Horizontal horizontal) {
            super(null);
            this.f7375a = horizontal;
        }

        public Above() {
            this(null, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/TextFieldLabelPosition$Attached;", "Landroidx/compose/material3/TextFieldLabelPosition;", "", "alwaysMinimize", "Landroidx/compose/ui/Alignment$Horizontal;", "minimizedAlignment", "expandedAlignment", "<init>", "(ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Attached extends TextFieldLabelPosition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f7376a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Alignment.Horizontal f7377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Alignment.Horizontal f7378c;

        /* JADX WARN: Illegal instructions before constructor call */
        public Attached(boolean z, Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            z = (i2 & 1) != 0 ? false : z;
            if ((i2 & 2) != 0) {
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
            }
            if ((i2 & 4) != 0) {
                Alignment.f8582a.getClass();
                horizontal2 = Alignment.Companion.n;
            }
            this(z, horizontal, horizontal2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Attached)) {
                return false;
            }
            Attached attached = (Attached) obj;
            return this.f7376a == attached.f7376a && Intrinsics.c(this.f7377b, attached.f7377b) && Intrinsics.c(this.f7378c, attached.f7378c);
        }

        public final int hashCode() {
            return this.f7378c.hashCode() + ((this.f7377b.hashCode() + (Boolean.hashCode(this.f7376a) * 31)) * 31);
        }

        public final String toString() {
            return "Attached(alwaysMinimize=" + this.f7376a + ", minimizedAlignment=" + this.f7377b + ", expandedAlignment=" + this.f7378c + ')';
        }

        public Attached() {
            this(false, null, null, 7, null);
        }

        public Attached(boolean z, Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2) {
            super(null);
            this.f7376a = z;
            this.f7377b = horizontal;
            this.f7378c = horizontal2;
        }
    }
}
