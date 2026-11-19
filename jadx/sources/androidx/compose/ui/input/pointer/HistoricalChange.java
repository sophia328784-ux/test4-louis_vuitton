package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nB\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u000bB1\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/input/pointer/HistoricalChange;", "", "", "uptimeMillis", "Landroidx/compose/ui/geometry/Offset;", "position", "", "scaleFactor", "panOffset", "<init>", "(JJFJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "originalEventPosition", "(JJFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HistoricalChange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f9271c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f9272e;

    /* JADX WARN: Illegal instructions before constructor call */
    public HistoricalChange(long j2, long j3, float f2, long j4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j5;
        float f3 = (i2 & 4) != 0 ? 1.0f : f2;
        if ((i2 & 8) != 0) {
            Offset.f8806b.getClass();
            j5 = 0;
        } else {
            j5 = j4;
        }
        this(j2, j3, f3, j5, null);
    }

    public final String toString() {
        return "HistoricalChange(uptimeMillis=" + this.f9269a + ", position=" + ((Object) Offset.h(this.f9270b)) + ", scaleFactor=" + this.f9271c + ", panOffset=" + ((Object) Offset.h(this.d)) + ')';
    }

    public HistoricalChange(long j2, long j3, float f2, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9269a = j2;
        this.f9270b = j3;
        this.f9271c = f2;
        this.d = j4;
        Offset.f8806b.getClass();
        this.f9272e = 0L;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public HistoricalChange(long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, 1.0f, 0L, null);
        Offset.f8806b.getClass();
    }

    public HistoricalChange(long j2, long j3, float f2, long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, f2, j4, null);
        this.f9272e = j5;
    }
}
