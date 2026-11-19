package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0081\b\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\t\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputEventData;", "", "Landroidx/compose/ui/input/pointer/PointerId;", b.a.f24015b, "", "uptime", "Landroidx/compose/ui/geometry/Offset;", "positionOnScreen", "position", "", "down", "", "pressure", "Landroidx/compose/ui/input/pointer/PointerType;", "type", "activeHover", "", "Landroidx/compose/ui/input/pointer/HistoricalChange;", "historical", "scrollDelta", "scaleGestureFactor", "panGestureOffset", "originalEventPosition", "<init>", "(JJJJZFIZLjava/util/List;JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PointerInputEventData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f9345c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f9346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f9347f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f9348h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f9349i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f9350j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f9351k;
    public final long l;
    public final long m;

    /* JADX WARN: Illegal instructions before constructor call */
    public PointerInputEventData(long j2, long j3, long j4, long j5, boolean z, float f2, int i2, boolean z2, List list, long j6, float f3, long j7, long j8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        long j9;
        long j10;
        boolean z3 = (i3 & 128) != 0 ? false : z2;
        List arrayList = (i3 & 256) != 0 ? new ArrayList() : list;
        if ((i3 & 512) != 0) {
            Offset.f8806b.getClass();
            j9 = 0;
        } else {
            j9 = j6;
        }
        if ((i3 & 4096) != 0) {
            Offset.f8806b.getClass();
            j10 = 0;
        } else {
            j10 = j8;
        }
        this(j2, j3, j4, j5, z, f2, i2, z3, arrayList, j9, f3, j7, j10, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerInputEventData)) {
            return false;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (!PointerId.a(this.f9343a, pointerInputEventData.f9343a) || this.f9344b != pointerInputEventData.f9344b || !Offset.c(this.f9345c, pointerInputEventData.f9345c) || !Offset.c(this.d, pointerInputEventData.d) || this.f9346e != pointerInputEventData.f9346e || Float.compare(this.f9347f, pointerInputEventData.f9347f) != 0) {
            return false;
        }
        int i2 = pointerInputEventData.g;
        PointerType.Companion companion = PointerType.f9367b;
        return this.g == i2 && this.f9348h == pointerInputEventData.f9348h && Intrinsics.c(this.f9349i, pointerInputEventData.f9349i) && Offset.c(this.f9350j, pointerInputEventData.f9350j) && Float.compare(this.f9351k, pointerInputEventData.f9351k) == 0 && Offset.c(this.l, pointerInputEventData.l) && Offset.c(this.m, pointerInputEventData.m);
    }

    public final int hashCode() {
        int iA = fc.a(Long.hashCode(this.f9343a) * 31, 31, this.f9344b);
        Offset.Companion companion = Offset.f8806b;
        int iB = pq0.b(o60.b(fc.a(fc.a(iA, 31, this.f9345c), 31, this.d), 31, this.f9346e), 31, this.f9347f);
        PointerType.Companion companion2 = PointerType.f9367b;
        return Long.hashCode(this.m) + fc.a(pq0.b(fc.a(n00.a(o60.b(tr.b(this.g, iB, 31), 31, this.f9348h), 31, this.f9349i), 31, this.f9350j), 31, this.f9351k), 31, this.l);
    }

    public final String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.b(this.f9343a)) + ", uptime=" + this.f9344b + ", positionOnScreen=" + ((Object) Offset.h(this.f9345c)) + ", position=" + ((Object) Offset.h(this.d)) + ", down=" + this.f9346e + ", pressure=" + this.f9347f + ", type=" + ((Object) PointerType.a(this.g)) + ", activeHover=" + this.f9348h + ", historical=" + this.f9349i + ", scrollDelta=" + ((Object) Offset.h(this.f9350j)) + ", scaleGestureFactor=" + this.f9351k + ", panGestureOffset=" + ((Object) Offset.h(this.l)) + ", originalEventPosition=" + ((Object) Offset.h(this.m)) + ')';
    }

    public PointerInputEventData(long j2, long j3, long j4, long j5, boolean z, float f2, int i2, boolean z2, List list, long j6, float f3, long j7, long j8, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9343a = j2;
        this.f9344b = j3;
        this.f9345c = j4;
        this.d = j5;
        this.f9346e = z;
        this.f9347f = f2;
        this.g = i2;
        this.f9348h = z2;
        this.f9349i = list;
        this.f9350j = j6;
        this.f9351k = f3;
        this.l = j7;
        this.m = j8;
    }
}
