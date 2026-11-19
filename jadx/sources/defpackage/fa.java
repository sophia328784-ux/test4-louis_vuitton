package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Density;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fa implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f69091c;

    public /* synthetic */ fa(long j2, int i2) {
        this.f69090b = i2;
        this.f69091c = j2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f69090b;
        long j2 = this.f69091c;
        switch (i2) {
            case 0:
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                boxWithConstraintsScope.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(boxWithConstraintsScope) ? 4 : 2;
                }
                if (composer.p(1 & iIntValue, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    float fU1 = ((Density) composer.k(CompositionLocalsKt.f10031h)).u1(boxWithConstraintsScope.i());
                    Modifier modifierO = new DTFunctionNameModifier("AudioGuideBackground_XO_JAsU$lambda$0").o(SizeKt.f5052c);
                    Brush.Companion companion = Brush.f8862a;
                    Color.f8866b.getClass();
                    BoxKt.a(BackgroundKt.a(modifierO, Brush.Companion.b(companion, CollectionsKt.P(new Color(Color.f8870h), new Color(j2)), 0.25f * fU1, fU1, 8)), composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(tr.d("FeedDiscoverSuccessScreen$lambda$4$0$0", 1.0f), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).l, composer2, 0);
                    BlendModeColorFilter blendModeColorFilterA = ColorFilter.Companion.a(ColorFilter.f8873b, j2);
                    String strC = StringResources_androidKt.c(composer2, R.string.louis_vuitton);
                    ContentScale.f9447a.getClass();
                    ImageKt.a(painterA, strC, modifierK, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, blendModeColorFilterA, composer2, 24584, 40);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
