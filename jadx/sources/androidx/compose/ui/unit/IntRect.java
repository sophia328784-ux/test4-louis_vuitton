package androidx.compose.ui.unit;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\tB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/ui/unit/IntRect;", "", "", "left", "top", "right", "bottom", "<init>", "(IIII)V", "Companion", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class IntRect {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f11015e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final IntRect f11016f = new IntRect(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11019c;
    public final int d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntRect$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public IntRect(int i2, int i3, int i4, int i5) {
        this.f11017a = i2;
        this.f11018b = i3;
        this.f11019c = i4;
        this.d = i5;
    }

    public final long a() {
        long jB = (((long) ((b() / 2) + this.f11018b)) & BodyPartID.bodyIdMax) | (((long) ((d() / 2) + this.f11017a)) << 32);
        IntOffset.Companion companion = IntOffset.f11012b;
        return jB;
    }

    public final int b() {
        return this.d - this.f11018b;
    }

    public final long c() {
        long j2 = (((long) this.f11017a) << 32) | (((long) this.f11018b) & BodyPartID.bodyIdMax);
        IntOffset.Companion companion = IntOffset.f11012b;
        return j2;
    }

    public final int d() {
        return this.f11019c - this.f11017a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntRect)) {
            return false;
        }
        IntRect intRect = (IntRect) obj;
        return this.f11017a == intRect.f11017a && this.f11018b == intRect.f11018b && this.f11019c == intRect.f11019c && this.d == intRect.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + tr.b(this.f11019c, tr.b(this.f11018b, Integer.hashCode(this.f11017a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IntRect.fromLTRB(");
        sb.append(this.f11017a);
        sb.append(", ");
        sb.append(this.f11018b);
        sb.append(", ");
        sb.append(this.f11019c);
        sb.append(", ");
        return tr.k(sb, this.d, ')');
    }
}
