package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/platform/WindowInfoImpl;", "Landroidx/compose/ui/platform/WindowInfo;", "<init>", "()V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WindowInfoImpl implements WindowInfo {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final MutableState f10177e = SnapshotStateKt.g(new PointerKeyboardModifiers(0));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f10178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f10179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f10180c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/platform/WindowInfoImpl$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WindowInfoImpl() {
        IntSize.f11020b.getClass();
        this.f10178a = SnapshotStateKt.g(new IntSize(0L));
        DpSize.f11009b.getClass();
        this.f10179b = SnapshotStateKt.g(new DpSize(0L));
        this.f10180c = SnapshotStateKt.g(Boolean.FALSE);
    }

    @Override // androidx.compose.ui.platform.WindowInfo
    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f10180c).getF10755b()).booleanValue();
    }
}
