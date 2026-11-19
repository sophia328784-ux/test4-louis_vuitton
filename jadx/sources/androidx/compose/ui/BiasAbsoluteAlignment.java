package androidx.compose.ui;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/ui/BiasAbsoluteAlignment;", "Landroidx/compose/ui/Alignment;", "", "horizontalBias", "verticalBias", "<init>", "(FF)V", "Horizontal", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BiasAbsoluteAlignment implements Alignment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8593c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;", "Landroidx/compose/ui/Alignment$Horizontal;", "", "bias", "<init>", "(F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Horizontal implements Alignment.Horizontal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f8594a;

        public Horizontal(float f2) {
            this.f8594a = f2;
        }

        @Override // androidx.compose.ui.Alignment.Horizontal
        public final int a(int i2, int i3, LayoutDirection layoutDirection) {
            return Math.round((1.0f + this.f8594a) * ((i3 - i2) / 2.0f));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Horizontal) && Float.compare(this.f8594a, ((Horizontal) obj).f8594a) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f8594a);
        }

        public final String toString() {
            return a.m(new StringBuilder("Horizontal(bias="), this.f8594a, ')');
        }
    }

    public BiasAbsoluteAlignment(float f2, float f3) {
        this.f8592b = f2;
        this.f8593c = f3;
    }

    @Override // androidx.compose.ui.Alignment
    public final long a(long j2, long j3, LayoutDirection layoutDirection) {
        long j4 = (((long) (((int) (j3 >> 32)) - ((int) (j2 >> 32)))) << 32) | (((long) (((int) (j3 & BodyPartID.bodyIdMax)) - ((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        float f2 = ((int) (j4 >> 32)) / 2.0f;
        float f3 = ((int) (j4 & BodyPartID.bodyIdMax)) / 2.0f;
        float f4 = (this.f8592b + 1.0f) * f2;
        long jRound = (((long) Math.round((1.0f + this.f8593c) * f3)) & BodyPartID.bodyIdMax) | (((long) Math.round(f4)) << 32);
        IntOffset.Companion companion2 = IntOffset.f11012b;
        return jRound;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAbsoluteAlignment)) {
            return false;
        }
        BiasAbsoluteAlignment biasAbsoluteAlignment = (BiasAbsoluteAlignment) obj;
        return Float.compare(this.f8592b, biasAbsoluteAlignment.f8592b) == 0 && Float.compare(this.f8593c, biasAbsoluteAlignment.f8593c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f8593c) + (Float.hashCode(this.f8592b) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BiasAbsoluteAlignment(horizontalBias=");
        sb.append(this.f8592b);
        sb.append(", verticalBias=");
        return a.m(sb, this.f8593c, ')');
    }
}
