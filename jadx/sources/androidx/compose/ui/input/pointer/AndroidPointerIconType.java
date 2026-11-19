package androidx.compose.ui.input.pointer;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/AndroidPointerIconType;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "", "type", "<init>", "(I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidPointerIconType implements PointerIcon {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9264b;

    public AndroidPointerIconType(int i2) {
        this.f9264b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidPointerIconType.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return this.f9264b == ((AndroidPointerIconType) obj).f9264b;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF9264b() {
        return this.f9264b;
    }

    public final String toString() {
        return tr.k(new StringBuilder("AndroidPointerIcon(type="), this.f9264b, ')');
    }
}
