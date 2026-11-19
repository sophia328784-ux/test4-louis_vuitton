package androidx.compose.ui;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/compose/ui/BiasAlignment;", "Landroidx/compose/ui/Alignment;", "", "horizontalBias", "verticalBias", "<init>", "(FF)V", "Horizontal", "Vertical", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BiasAlignment implements Alignment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8596c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/BiasAlignment$Horizontal;", "Landroidx/compose/ui/Alignment$Horizontal;", "", "bias", "<init>", "(F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Horizontal implements Alignment.Horizontal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f8597a;

        public Horizontal(float f2) {
            this.f8597a = f2;
        }

        @Override // androidx.compose.ui.Alignment.Horizontal
        public final int a(int i2, int i3, LayoutDirection layoutDirection) {
            float f2 = (i3 - i2) / 2.0f;
            LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
            float f3 = this.f8597a;
            if (layoutDirection != layoutDirection2) {
                f3 *= -1.0f;
            }
            return Math.round((1.0f + f3) * f2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Horizontal) && Float.compare(this.f8597a, ((Horizontal) obj).f8597a) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f8597a);
        }

        public final String toString() {
            return a.m(new StringBuilder("Horizontal(bias="), this.f8597a, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/BiasAlignment$Vertical;", "Landroidx/compose/ui/Alignment$Vertical;", "", "bias", "<init>", "(F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Vertical implements Alignment.Vertical {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f8598a;

        public Vertical(float f2) {
            this.f8598a = f2;
        }

        @Override // androidx.compose.ui.Alignment.Vertical
        public final int a(int i2, int i3) {
            return Math.round((1.0f + this.f8598a) * ((i3 - i2) / 2.0f));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Vertical) && Float.compare(this.f8598a, ((Vertical) obj).f8598a) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f8598a);
        }

        public final String toString() {
            return a.m(new StringBuilder("Vertical(bias="), this.f8598a, ')');
        }
    }

    public BiasAlignment(float f2, float f3) {
        this.f8595b = f2;
        this.f8596c = f3;
    }

    @Override // androidx.compose.ui.Alignment
    public final long a(long j2, long j3, LayoutDirection layoutDirection) {
        float f2 = (((int) (j3 >> 32)) - ((int) (j2 >> 32))) / 2.0f;
        float f3 = (((int) (j3 & BodyPartID.bodyIdMax)) - ((int) (j2 & BodyPartID.bodyIdMax))) / 2.0f;
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f4 = this.f8595b;
        if (layoutDirection != layoutDirection2) {
            f4 *= -1.0f;
        }
        float f5 = (1.0f + this.f8596c) * f3;
        int iRound = Math.round((f4 + 1.0f) * f2);
        long jRound = (((long) Math.round(f5)) & BodyPartID.bodyIdMax) | (((long) iRound) << 32);
        IntOffset.Companion companion = IntOffset.f11012b;
        return jRound;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAlignment)) {
            return false;
        }
        BiasAlignment biasAlignment = (BiasAlignment) obj;
        return Float.compare(this.f8595b, biasAlignment.f8595b) == 0 && Float.compare(this.f8596c, biasAlignment.f8596c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f8596c) + (Float.hashCode(this.f8595b) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BiasAlignment(horizontalBias=");
        sb.append(this.f8595b);
        sb.append(", verticalBias=");
        return a.m(sb, this.f8596c, ')');
    }
}
