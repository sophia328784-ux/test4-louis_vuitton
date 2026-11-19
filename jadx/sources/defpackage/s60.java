package defpackage;

import androidx.compose.ui.text.font.FontVariation$Setting;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s60 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Density f79724c;

    public /* synthetic */ s60(Density density, int i2) {
        this.f79723b = i2;
        this.f79724c = density;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79723b;
        Density density = this.f79724c;
        switch (i2) {
            case 0:
                return Integer.valueOf(-(density.B0(LVNotificationKt.f50993a) + ((Integer) obj).intValue()));
            case 1:
                return Integer.valueOf(-(density.B0(LVNotificationKt.f50993a) + ((Integer) obj).intValue()));
            case 2:
                ((Integer) obj).intValue();
                Dp.Companion companion = Dp.f11004c;
                return Integer.valueOf(density.B0(Call.Parameters.DEFAULT_CAMERA_ZOOM));
            default:
                FontVariation$Setting fontVariation$Setting = (FontVariation$Setting) obj;
                return "'" + fontVariation$Setting.b() + "' " + fontVariation$Setting.a();
        }
    }
}
