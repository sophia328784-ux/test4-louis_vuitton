package androidx.compose.ui.input.pointer;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/input/pointer/ConsumedData;", "", "", "positionChange", "downChange", "<init>", "(ZZ)V", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "change", "(Landroidx/compose/ui/input/pointer/PointerInputChange;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConsumedData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PointerInputChange f9266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f9267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f9268c;

    public /* synthetic */ ConsumedData(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2);
    }

    public ConsumedData(PointerInputChange pointerInputChange) {
        this(pointerInputChange.p, pointerInputChange.o);
        this.f9266a = pointerInputChange;
    }

    public ConsumedData(boolean z, boolean z2) {
        this.f9267b = z;
        this.f9268c = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ConsumedData() {
        boolean z = false;
        this(z, z, 3, null);
    }
}
