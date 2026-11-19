package kotlin.ranges;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/ranges/ClosedFloatRange;", "Lkotlin/ranges/ClosedFloatingPointRange;", "", "start", "endInclusive", "<init>", "(FF)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class ClosedFloatRange implements ClosedFloatingPointRange<Float> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f71948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f71949c;

    public ClosedFloatRange(float f2, float f3) {
        this.f71948b = f2;
        this.f71949c = f3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public final boolean a(Comparable comparable, Comparable comparable2) {
        return ((Number) comparable).floatValue() <= ((Number) comparable2).floatValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ClosedFloatRange)) {
            return false;
        }
        if (isEmpty() && ((ClosedFloatRange) obj).isEmpty()) {
            return true;
        }
        ClosedFloatRange closedFloatRange = (ClosedFloatRange) obj;
        return this.f71948b == closedFloatRange.f71948b && this.f71949c == closedFloatRange.f71949c;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Float f() {
        return Float.valueOf(this.f71949c);
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange
    public final boolean h(Float f2) {
        float fFloatValue = f2.floatValue();
        return fFloatValue >= this.f71948b && fFloatValue <= this.f71949c;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return Float.hashCode(this.f71949c) + (Float.hashCode(this.f71948b) * 31);
    }

    @Override // kotlin.ranges.ClosedRange
    public final Float i() {
        return Float.valueOf(this.f71948b);
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange
    public final boolean isEmpty() {
        return this.f71948b > this.f71949c;
    }

    public final String toString() {
        return this.f71948b + ".." + this.f71949c;
    }
}
