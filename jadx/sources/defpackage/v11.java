package defpackage;

import androidx.compose.material3.TooltipKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v11 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f80475c;

    public /* synthetic */ v11(int i2, MutableState mutableState) {
        this.f80474b = i2;
        this.f80475c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80474b;
        MutableState mutableState = this.f80475c;
        switch (i2) {
            case 0:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 1:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 2:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 3:
                float f2 = ThankYouScreenKt.f65243a;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 4:
                mutableState.setValue(ThemeAnimationState.ToolboxRestoring.f55499a);
                return Unit.f71739a;
            case 5:
                float f3 = TooltipKt.f7402a;
                return (LayoutCoordinates) mutableState.getF10755b();
            default:
                mutableState.setValue(null);
                return Unit.f71739a;
        }
    }
}
