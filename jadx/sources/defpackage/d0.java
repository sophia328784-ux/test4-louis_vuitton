package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVNotificationKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.TrackDetailSubMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f68376c;

    public /* synthetic */ d0(int i2, MutableState mutableState) {
        this.f68375b = i2;
        this.f68376c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68375b;
        MutableState mutableState = this.f68376c;
        switch (i2) {
            case 0:
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 1:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 2:
                float f2 = AICompanionTooltipKt.f52836a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 3:
                float f3 = AICompanionTooltipKt.f52836a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 4:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 5:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) mutableState.getF10755b();
                if (layoutCoordinates != null) {
                    return layoutCoordinates;
                }
                InlineClassHelperKt.d("Required value was null.");
                os.d();
                return null;
            case 6:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 7:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 8:
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 9:
                float f4 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                mutableState.setValue(TrackDetailSubMode.None);
                return Unit.f71739a;
            case 10:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 11:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) mutableState.getF10755b();
                if (layoutCoordinates2 != null) {
                    return layoutCoordinates2;
                }
                InlineClassHelperKt.d("Required value was null.");
                os.d();
                return null;
            case 12:
                if (mutableState != null) {
                    return (List) mutableState.getF10755b();
                }
                return null;
            case 13:
                float f5 = BeautyVtoScreenKt.f62031a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 14:
                float f6 = BeautyVtoScreenKt.f62031a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 15:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 16:
                float f7 = ((Dp) mutableState.getF10755b()).f11006b;
                float f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (Dp.a(f7, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0) {
                    f8 = ((Dp) mutableState.getF10755b()).f11006b - 160.0f;
                }
                return new Dp(f8);
            case 17:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 18:
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt = ComposableSingletons$LVNotificationKt.f50950a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 19:
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt2 = ComposableSingletons$LVNotificationKt.f50950a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 20:
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt3 = ComposableSingletons$LVNotificationKt.f50950a;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 21:
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt4 = ComposableSingletons$LVNotificationKt.f50950a;
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 22:
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.booleanValue();
                return bool;
            case 23:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 24:
                float f9 = DatePickerKt.f6780a;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 25:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 26:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 27:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 28:
                Unit unit = Unit.f71739a;
                mutableState.setValue(unit);
                return unit;
            default:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
        }
    }
}
