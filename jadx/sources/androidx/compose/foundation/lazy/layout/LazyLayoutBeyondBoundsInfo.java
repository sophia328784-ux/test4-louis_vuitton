package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "", "<init>", "()V", "Interval", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutBeyondBoundsInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f5412a = new MutableVector(new Interval[16], 0);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;", "", "", "start", "end", "<init>", "(II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Interval {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5414b;

        public Interval(int i2, int i3) {
            this.f5413a = i2;
            this.f5414b = i3;
            if (!(i2 >= 0)) {
                InlineClassHelperKt.a("negative start index");
            }
            if (i3 >= i2) {
                return;
            }
            InlineClassHelperKt.a("end index greater than start");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interval)) {
                return false;
            }
            Interval interval = (Interval) obj;
            return this.f5413a == interval.f5413a && this.f5414b == interval.f5414b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f5414b) + (Integer.hashCode(this.f5413a) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Interval(start=");
            sb.append(this.f5413a);
            sb.append(", end=");
            return tr.k(sb, this.f5414b, ')');
        }
    }
}
