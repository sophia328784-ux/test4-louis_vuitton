package defpackage;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a2 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Placeable f368c;

    public /* synthetic */ a2(Placeable placeable, int i2) {
        this.f367b = i2;
        this.f368c = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f367b;
        Placeable placeable = this.f368c;
        switch (i2) {
            case 0:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 1:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 2:
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 3:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 4:
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 5:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 6:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 7:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                IntOffset.f11012b.getClass();
                if (placementScope.getD() == LayoutDirection.Ltr || placementScope.getF9566c() == 0) {
                    Placeable.PlacementScope.c(placementScope, placeable);
                    placeable.p0(IntOffset.d(0L, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
                } else {
                    long f9566c = ((long) (placementScope.getF9566c() - placeable.f9548b)) << 32;
                    Placeable.PlacementScope.c(placementScope, placeable);
                    placeable.p0(IntOffset.d(f9566c, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
                }
                break;
            case 8:
                LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 lazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 = LazyLayoutBeyondBoundsProviderModifierNode.t;
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 9:
                Placeable.PlacementScope.F((Placeable.PlacementScope) obj, this.f368c, 0, 0, null, 12);
                break;
            case 10:
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                placementScope2.getClass();
                placementScope2.j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 11:
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 12:
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                placementScope3.getClass();
                Placeable.PlacementScope.y(placementScope3, placeable, 0, -placeable.f9549c);
                break;
            case 13:
                Placeable.PlacementScope placementScope4 = (Placeable.PlacementScope) obj;
                placementScope4.getClass();
                Placeable.PlacementScope.y(placementScope4, placeable, 0, 0);
                break;
            case 14:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 15:
                SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 16:
                Placeable.PlacementScope placementScope5 = (Placeable.PlacementScope) obj;
                placementScope5.getClass();
                Placeable.PlacementScope.y(placementScope5, placeable, 0, 0);
                break;
            case 17:
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 18:
                float f2 = TextFieldImplKt.f7647a;
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 19:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 20:
                ((Placeable.PlacementScope) obj).j(placeable, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            default:
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
        }
        return Unit.f71739a;
    }
}
