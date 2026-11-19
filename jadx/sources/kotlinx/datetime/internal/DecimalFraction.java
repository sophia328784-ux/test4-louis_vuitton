package kotlinx.datetime.internal;

import defpackage.b21;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/DecimalFraction;", "", "", "fractionalPart", "digits", "<init>", "(II)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DecimalFraction implements Comparable<DecimalFraction> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f75378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75379c;

    public DecimalFraction(int i2, int i3) {
        this.f75378b = i2;
        this.f75379c = i3;
        if (i3 >= 0) {
            return;
        }
        b21.n(pq0.k(i3, "Digits must be non-negative, but was "));
        throw null;
    }

    public final int a(int i2) {
        int i3 = this.f75378b;
        int i4 = this.f75379c;
        if (i2 == i4) {
            return i3;
        }
        int[] iArr = MathKt.f75380a;
        return i2 > i4 ? i3 * iArr[i2 - i4] : i3 / iArr[i4 - i2];
    }

    @Override // java.lang.Comparable
    public final int compareTo(DecimalFraction decimalFraction) {
        DecimalFraction decimalFraction2 = decimalFraction;
        decimalFraction2.getClass();
        int iMax = Math.max(this.f75379c, decimalFraction2.f75379c);
        return Intrinsics.d(a(iMax), decimalFraction2.a(iMax));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DecimalFraction)) {
            return false;
        }
        DecimalFraction decimalFraction = (DecimalFraction) obj;
        int iMax = Math.max(this.f75379c, decimalFraction.f75379c);
        return Intrinsics.d(a(iMax), decimalFraction.a(iMax)) == 0;
    }

    public final int hashCode() {
        throw new UnsupportedOperationException("DecimalFraction is not supposed to be used as a hash key");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i2 = MathKt.f75380a[this.f75379c];
        int i3 = this.f75378b;
        sb.append(i3 / i2);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(StringsKt.E(String.valueOf((i3 % i2) + i2), "1"));
        return sb.toString();
    }
}
