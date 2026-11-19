package androidx.compose.ui.input.indirect;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerId;
import com.batch.android.s.b;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;", "", "Landroidx/compose/ui/input/pointer/PointerId;", b.a.f24015b, "", "uptimeMillis", "Landroidx/compose/ui/geometry/Offset;", "position", "", "pressed", "", "pressure", "previousUptimeMillis", "previousPosition", "previousPressed", "<init>", "(JJJZFJJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IndirectPointerInputChange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f9221c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f9223f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f9224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9225i;

    public IndirectPointerInputChange(long j2, long j3, long j4, boolean z, float f2, long j5, long j6, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9219a = j2;
        this.f9220b = j3;
        this.f9221c = j4;
        this.d = z;
        this.f9222e = f2;
        this.f9223f = j5;
        this.g = j6;
        this.f9224h = z2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IndirectPointerInputChange(id=");
        sb.append((Object) PointerId.b(this.f9219a));
        sb.append(", uptimeMillis=");
        sb.append(this.f9220b);
        sb.append(", position=");
        sb.append((Object) Offset.h(this.f9221c));
        sb.append(", pressed=");
        sb.append(this.d);
        sb.append(", pressure=");
        sb.append(this.f9222e);
        sb.append(", previousUptimeMillis=");
        sb.append(this.f9223f);
        sb.append(", previousPosition=");
        sb.append((Object) Offset.h(this.g));
        sb.append(", previousPressed=");
        sb.append(this.f9224h);
        sb.append(", isConsumed=");
        return d21.q(sb, this.f9225i, ')');
    }
}
