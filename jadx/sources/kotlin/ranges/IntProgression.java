package kotlin.ranges;

import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\b\n\u0002\b\b\b\u0016\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/ranges/IntProgression;", "", "", "start", "endInclusive", "step", "<init>", "(III)V", "e", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class IntProgression implements Iterable<Integer>, KMappedMarker {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f71951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71952c;
    public final int d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/ranges/IntProgression$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public IntProgression(int i2, int i3, int i4) {
        if (i4 == 0) {
            md.n("Step must be non-zero.");
            throw null;
        }
        if (i4 == Integer.MIN_VALUE) {
            md.n("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        this.f71951b = i2;
        this.f71952c = ProgressionUtilKt.a(i2, i3, i4);
        this.d = i4;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IntProgression)) {
            return false;
        }
        if (isEmpty() && ((IntProgression) obj).isEmpty()) {
            return true;
        }
        IntProgression intProgression = (IntProgression) obj;
        return this.f71951b == intProgression.f71951b && this.f71952c == intProgression.f71952c && this.d == intProgression.d;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f71951b * 31) + this.f71952c) * 31) + this.d;
    }

    public boolean isEmpty() {
        int i2 = this.f71952c;
        int i3 = this.d;
        int i4 = this.f71951b;
        if (i3 > 0) {
            return i4 > i2;
        }
        return i4 < i2;
    }

    @Override // java.lang.Iterable
    public final Iterator<Integer> iterator() {
        return new IntProgressionIterator(this.f71951b, this.f71952c, this.d);
    }

    public String toString() {
        StringBuilder sb;
        int i2 = this.f71952c;
        int i3 = this.d;
        int i4 = this.f71951b;
        if (i3 > 0) {
            sb = new StringBuilder();
            sb.append(i4);
            sb.append("..");
            sb.append(i2);
            sb.append(" step ");
            sb.append(i3);
        } else {
            sb = new StringBuilder();
            sb.append(i4);
            sb.append(" downTo ");
            sb.append(i2);
            sb.append(" step ");
            sb.append(-i3);
        }
        return sb.toString();
    }
}
