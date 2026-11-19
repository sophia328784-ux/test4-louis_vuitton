package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/LazyWindowInfo;", "Landroidx/compose/ui/platform/WindowInfo;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyWindowInfo implements WindowInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Function0 f10113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f10114b = SnapshotStateKt.g(Boolean.FALSE);

    @Override // androidx.compose.ui.platform.WindowInfo
    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f10114b).getF10755b()).booleanValue();
    }
}
