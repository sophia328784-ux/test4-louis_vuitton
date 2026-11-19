package defpackage;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.spotlight.SpotlightActivity;
import com.vuitton.android.presentation.screen.spotlight.SpotlightDestinations;
import com.vuitton.android.presentation.screen.spotlight.SpotlightDestinationsKt;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotContentUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightProductUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o01 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightActivity f76656c;

    public /* synthetic */ o01(SpotlightActivity spotlightActivity, int i2) {
        this.f76655b = i2;
        this.f76656c = spotlightActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        List list;
        SpotlightHotspotUiModel spotlightHotspotUiModel;
        HotspotContentUiModel hotspotContentUiModel;
        int i2 = this.f76655b;
        int i3 = 2;
        boolean z = false;
        DefaultConstructorMarker defaultConstructorMarker = null;
        SpotlightActivity spotlightActivity = this.f76656c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                SpotlightActivity.Companion companion = SpotlightActivity.r;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(107735557, new es0(spotlightActivity, (View) composer.k(AndroidCompositionLocals_androidKt.f9939f), 9), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                int iIntValue2 = ((Integer) obj).intValue();
                int iIntValue3 = ((Integer) obj2).intValue();
                SpotlightActivity.Companion companion2 = SpotlightActivity.r;
                List list2 = ((SpotlightViewState) spotlightActivity.H().getB().getValue()).f64679a;
                if (iIntValue2 >= 0 && iIntValue2 < list2.size()) {
                    SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) CollectionsKt.G(iIntValue2, list2);
                    SpotlightProductUiModel spotlightProductUiModel = (spotlightSlideUiModel == null || (list = spotlightSlideUiModel.g) == null || (spotlightHotspotUiModel = (SpotlightHotspotUiModel) list.get(iIntValue3)) == null || (hotspotContentUiModel = spotlightHotspotUiModel.d) == null) ? null : hotspotContentUiModel.f64626c;
                    if (spotlightProductUiModel != null) {
                        str = spotlightProductUiModel.f64647a;
                    } else {
                        SkuIdUiModel.f61763c.getClass();
                        str = SkuIdUiModel.d;
                    }
                    spotlightActivity.startActivity(SpotlightDestinationsKt.a(new SpotlightDestinations.ToProductPage(str, z, i3, defaultConstructorMarker), spotlightActivity));
                }
                spotlightActivity.H().p7(iIntValue2, iIntValue3);
                break;
        }
        return Unit.f71739a;
    }
}
