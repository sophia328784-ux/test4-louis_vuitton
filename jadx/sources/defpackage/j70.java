package defpackage;

import androidx.compose.foundation.text.selection.SelectableInfo;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j70 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f71322c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j70(Object obj, int i2, int i3) {
        this.f71321b = i3;
        this.d = obj;
        this.f71322c = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71321b;
        int i3 = this.f71322c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                return new SegmentedControlState((List) obj, i3);
            case 1:
                ((SnapshotStateMap) obj).put(Integer.valueOf(i3 - 1), Boolean.TRUE);
                return Unit.f71739a;
            default:
                return Integer.valueOf(((SelectableInfo) obj).f6390f.f10553b.d(i3));
        }
    }
}
