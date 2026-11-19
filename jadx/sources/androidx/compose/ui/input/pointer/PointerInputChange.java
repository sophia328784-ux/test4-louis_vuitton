package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import com.batch.android.s.b;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\n\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016Bq\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\n\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0017Be\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0018B]\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0019BS\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u001cB\u0087\u0001\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\u0006\u0010 \u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010!¨\u0006\""}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputChange;", "", "Landroidx/compose/ui/input/pointer/PointerId;", b.a.f24015b, "", "uptimeMillis", "Landroidx/compose/ui/geometry/Offset;", "position", "", "pressed", "", "pressure", "previousUptimeMillis", "previousPosition", "previousPressed", "isInitiallyConsumed", "Landroidx/compose/ui/input/pointer/PointerType;", "type", "scrollDelta", "scaleFactor", "panOffset", "<init>", "(JJJZFJJZZIJFJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJZJJZZIJFJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJZFJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJZJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/input/pointer/ConsumedData;", "consumed", "(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "Landroidx/compose/ui/input/pointer/HistoricalChange;", "historical", "originalEventPosition", "(JJJZFJJZZILjava/util/List;JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerInputChange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f9330c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f9332f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f9333h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f9335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f9336k;
    public final long l;
    public final List m;
    public final long n;
    public boolean o;
    public boolean p;
    public PointerInputChange q;

    /* JADX WARN: Illegal instructions before constructor call */
    public PointerInputChange(long j2, long j3, long j4, boolean z, float f2, long j5, long j6, boolean z2, boolean z3, int i2, long j7, float f3, long j8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        int i4;
        long j9;
        long j10;
        if ((i3 & 512) != 0) {
            PointerType.f9367b.getClass();
            i4 = PointerType.f9368c;
        } else {
            i4 = i2;
        }
        if ((i3 & 1024) != 0) {
            Offset.f8806b.getClass();
            j9 = 0;
        } else {
            j9 = j7;
        }
        float f4 = (i3 & 2048) != 0 ? 1.0f : f3;
        if ((i3 & 4096) != 0) {
            Offset.f8806b.getClass();
            j10 = 0;
        } else {
            j10 = j8;
        }
        this(j2, j3, j4, z, f2, j5, j6, z2, z3, i4, j9, f4, j10, (DefaultConstructorMarker) null);
    }

    public final void a() {
        PointerInputChange pointerInputChange = this.q;
        if (pointerInputChange == null) {
            this.o = true;
            this.p = true;
        } else if (pointerInputChange != null) {
            pointerInputChange.a();
        }
    }

    public final boolean b() {
        PointerInputChange pointerInputChange = this.q;
        if (pointerInputChange != null) {
            return pointerInputChange.b();
        }
        return this.o || this.p;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PointerInputChange(id=");
        sb.append((Object) PointerId.b(this.f9328a));
        sb.append(", uptimeMillis=");
        sb.append(this.f9329b);
        sb.append(", position=");
        sb.append((Object) Offset.h(this.f9330c));
        sb.append(", pressed=");
        sb.append(this.d);
        sb.append(", pressure=");
        sb.append(this.f9331e);
        sb.append(", previousUptimeMillis=");
        sb.append(this.f9332f);
        sb.append(", previousPosition=");
        sb.append((Object) Offset.h(this.g));
        sb.append(", previousPressed=");
        sb.append(this.f9333h);
        sb.append(", isConsumed=");
        sb.append(b());
        sb.append(", type=");
        sb.append((Object) PointerType.a(this.f9334i));
        sb.append(", historical=");
        Object obj = this.m;
        if (obj == null) {
            obj = EmptyList.f71768b;
        }
        sb.append(obj);
        sb.append(", scrollDelta=");
        sb.append((Object) Offset.h(this.f9335j));
        sb.append(", scaleFactor=");
        sb.append(this.f9336k);
        sb.append(", panOffset=");
        sb.append((Object) Offset.h(this.l));
        sb.append(')');
        return sb.toString();
    }

    public PointerInputChange(long j2, long j3, long j4, boolean z, float f2, long j5, long j6, boolean z2, boolean z3, int i2, long j7, float f3, long j8, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9328a = j2;
        this.f9329b = j3;
        this.f9330c = j4;
        this.d = z;
        this.f9331e = f2;
        this.f9332f = j5;
        this.g = j6;
        this.f9333h = z2;
        this.f9334i = i2;
        this.f9335j = j7;
        this.f9336k = f3;
        this.l = j8;
        Offset.f8806b.getClass();
        this.n = 0L;
        this.o = z3;
        this.p = z3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PointerInputChange(long j2, long j3, long j4, boolean z, long j5, long j6, boolean z2, boolean z3, int i2, long j7, float f2, long j8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        int i4;
        long j9;
        long j10;
        if ((i3 & 256) != 0) {
            PointerType.f9367b.getClass();
            i4 = PointerType.f9368c;
        } else {
            i4 = i2;
        }
        if ((i3 & 512) != 0) {
            Offset.f8806b.getClass();
            j9 = 0;
        } else {
            j9 = j7;
        }
        float f3 = (i3 & 1024) != 0 ? 1.0f : f2;
        if ((i3 & 2048) != 0) {
            Offset.f8806b.getClass();
            j10 = 0;
        } else {
            j10 = j8;
        }
        this(j2, j3, j4, z, j5, j6, z2, z3, i4, j9, f3, j10, (DefaultConstructorMarker) null);
    }

    public PointerInputChange(long j2, long j3, long j4, boolean z, long j5, long j6, boolean z2, boolean z3, int i2, long j7, float f2, long j8, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, j4, z, 1.0f, j5, j6, z2, z3, i2, j7, f2, j8, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PointerInputChange(long j2, long j3, long j4, boolean z, float f2, long j5, long j6, boolean z2, boolean z3, int i2, long j7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        int i4;
        long j8;
        if ((i3 & 512) != 0) {
            PointerType.f9367b.getClass();
            i4 = PointerType.f9368c;
        } else {
            i4 = i2;
        }
        if ((i3 & 1024) != 0) {
            Offset.f8806b.getClass();
            j8 = 0;
        } else {
            j8 = j7;
        }
        this(j2, j3, j4, z, f2, j5, j6, z2, z3, i4, j8, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public PointerInputChange(long j2, long j3, long j4, boolean z, float f2, long j5, long j6, boolean z2, boolean z3, int i2, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, j4, z, f2, j5, j6, z2, z3, i2, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 6144, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PointerInputChange(long j2, long j3, long j4, boolean z, long j5, long j6, boolean z2, boolean z3, int i2, long j7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        int i4;
        long j8;
        if ((i3 & 256) != 0) {
            PointerType.f9367b.getClass();
            i4 = PointerType.f9368c;
        } else {
            i4 = i2;
        }
        if ((i3 & 512) != 0) {
            Offset.f8806b.getClass();
            j8 = 0;
        } else {
            j8 = j7;
        }
        this(j2, j3, j4, z, j5, j6, z2, z3, i4, j8, (DefaultConstructorMarker) null);
    }

    @Deprecated
    public PointerInputChange(long j2, long j3, long j4, boolean z, long j5, long j6, boolean z2, boolean z3, int i2, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, j4, z, j5, j6, z2, z3, i2, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 3072, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PointerInputChange(long j2, long j3, long j4, boolean z, long j5, long j6, boolean z2, ConsumedData consumedData, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        int i4;
        if ((i3 & 256) != 0) {
            PointerType.f9367b.getClass();
            i4 = PointerType.f9368c;
        } else {
            i4 = i2;
        }
        this(j2, j3, j4, z, j5, j6, z2, consumedData, i4, null);
    }

    public PointerInputChange(long j2, long j3, long j4, boolean z, float f2, long j5, long j6, boolean z2, boolean z3, int i2, List list, long j7, float f3, long j8, long j9, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, j4, z, f2, j5, j6, z2, z3, i2, j7, f3, j8, (DefaultConstructorMarker) null);
        this.m = list;
        this.n = j9;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002c  */
    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public PointerInputChange(long j2, long j3, long j4, boolean z, long j5, long j6, boolean z2, ConsumedData consumedData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        boolean z3;
        boolean z4;
        boolean z5;
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        PointerInputChange pointerInputChange3 = consumedData.f9266a;
        if (pointerInputChange3 != null && (pointerInputChange2 = pointerInputChange3.q) != null) {
            z3 = pointerInputChange2.o;
        } else {
            z3 = pointerInputChange3 != null ? pointerInputChange3.o : consumedData.f9268c;
        }
        if (z3) {
            z4 = true;
        } else {
            if (pointerInputChange3 != null && (pointerInputChange = pointerInputChange3.q) != null) {
                z5 = pointerInputChange.p;
            } else {
                z5 = pointerInputChange3 != null ? pointerInputChange3.p : consumedData.f9267b;
            }
            if (z5) {
                z4 = true;
            } else {
                z4 = false;
            }
        }
        boolean z6 = z4;
        Offset.f8806b.getClass();
        this(j2, j3, j4, z, 1.0f, j5, j6, z2, z6, i2, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 6144, null);
    }
}
