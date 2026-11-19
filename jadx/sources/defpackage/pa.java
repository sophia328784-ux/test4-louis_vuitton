package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailSubModeOverlayKt;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pa implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78801b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f78802c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78803e;

    public /* synthetic */ pa(int i2, String str, long j2, boolean z) {
        this.f78803e = str;
        this.f78802c = j2;
        this.d = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        String strB;
        int i3 = this.f78801b;
        Object obj3 = this.f78803e;
        switch (i3) {
            case 0:
                TrackDetailUiModel trackDetailUiModel = (TrackDetailUiModel) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("AudioGuideMiniPlayer_bogVsAg$lambda$0$1"), LVAppDesignKitTheme.d(composer).o), "audioGuide_miniPlayerPlayPause_button");
                    boolean z = this.d;
                    if (z) {
                        composer.L(1106818084);
                        i2 = LVAppDesignKitTheme.g(composer).b0;
                        composer.F();
                    } else {
                        composer.L(1106907364);
                        i2 = LVAppDesignKitTheme.g(composer).Z;
                        composer.F();
                    }
                    Painter painterA = PainterResources_androidKt.a(i2, composer, 0);
                    if (z) {
                        strB = o60.k(composer, 1107062922, R.string.alt_pause, composer);
                    } else {
                        composer.L(1107147025);
                        strB = StringResources_androidKt.b(R.string.alt_play_track, new Object[]{trackDetailUiModel.f53231b}, composer);
                        composer.F();
                    }
                    IconKt.a(painterA, strB, modifierE, this.f78802c, composer, 8, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                TrackDetailSubModeOverlayKt.a((String) obj3, this.f78802c, this.d, (Composer) obj, RecomposeScopeImplKt.a(3073));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ pa(boolean z, TrackDetailUiModel trackDetailUiModel, long j2) {
        this.d = z;
        this.f78803e = trackDetailUiModel;
        this.f78802c = j2;
    }
}
