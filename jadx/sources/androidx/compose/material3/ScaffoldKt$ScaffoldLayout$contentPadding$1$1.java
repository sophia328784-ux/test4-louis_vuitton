package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1", "Landroidx/compose/foundation/layout/PaddingValues;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ScaffoldKt$ScaffoldLayout$contentPadding$1$1 implements PaddingValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f7180a;

    public ScaffoldKt$ScaffoldLayout$contentPadding$1$1() {
        Dp.Companion companion = Dp.f11004c;
        this.f7180a = SnapshotStateKt.g(PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: a */
    public final float getD() {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.f7180a).getF10755b()).getD();
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float b(LayoutDirection layoutDirection) {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.f7180a).getF10755b()).b(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float c(LayoutDirection layoutDirection) {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.f7180a).getF10755b()).c(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: d */
    public final float getF5031b() {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.f7180a).getF10755b()).getF5031b();
    }
}
