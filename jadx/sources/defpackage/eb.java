package defpackage;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material3.SwitchColors;
import androidx.compose.material3.SwitchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTagButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlConfiguration;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideTrackItemKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersDropdownKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.SimpleFilterLineKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class eb implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68815c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68817f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68818h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68819i;

    public /* synthetic */ eb(Modifier modifier, String str, String str2, boolean z, boolean z2, Function0 function0, int i2) {
        this.f68814b = 4;
        this.f68815c = modifier;
        this.f68818h = str;
        this.f68819i = str2;
        this.d = z;
        this.f68816e = z2;
        this.f68817f = function0;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68814b;
        int i3 = this.g;
        Object obj3 = this.f68817f;
        Object obj4 = this.f68819i;
        Object obj5 = this.f68818h;
        Object obj6 = this.f68815c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                AudioGuideTrackItemKt.b((Modifier) obj6, (AudioGuideUiModel.TrackUiModel) obj5, this.d, this.f68816e, (AudioGuideUiModel.AudioGuideColorsUiModel) obj4, (Function0) obj3, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                LVSegmentedControlKt.b((Modifier) obj6, (SegmentedControlState) obj5, this.d, (SegmentedControlConfiguration) obj4, this.f68816e, (Function0) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                LVTagButtonKt.a((Modifier) obj6, (String) obj5, this.d, this.f68816e, (ConfigurationTagButton) obj4, (Function0) obj3, (Composer) obj, iA3);
                break;
            case 3:
                String str = (String) obj3;
                ((Integer) obj2).getClass();
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                ((LVTextFieldInternal) obj5).e(iA4, (Composer) obj, (Modifier) obj6, (ConfigurationTextField) obj4, str, this.d, this.f68816e);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                QuickAccessFiltersDropdownKt.a((Modifier) obj6, (String) obj5, (String) obj4, this.d, this.f68816e, (Function0) obj3, (Composer) obj, iA5);
                break;
            case 5:
                ((Integer) obj2).intValue();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                SimpleFilterLineKt.a((String) obj6, (ProductFilterDataTypeUiModel.Simple) obj5, this.d, (Function1) obj4, this.f68816e, (Function0) obj3, (Composer) obj, iA6);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(i3 | 1);
                SwitchKt.b((Modifier) obj6, this.d, this.f68816e, (SwitchColors) obj5, (InteractionSource) obj4, (Shape) obj3, (Composer) obj, iA7);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ eb(Modifier modifier, Object obj, boolean z, boolean z2, Object obj2, Function0 function0, int i2, int i3) {
        this.f68814b = i3;
        this.f68815c = modifier;
        this.f68818h = obj;
        this.d = z;
        this.f68816e = z2;
        this.f68819i = obj2;
        this.f68817f = function0;
        this.g = i2;
    }

    public /* synthetic */ eb(Modifier modifier, boolean z, boolean z2, SwitchColors switchColors, InteractionSource interactionSource, Shape shape, int i2) {
        this.f68814b = 6;
        this.f68815c = modifier;
        this.d = z;
        this.f68816e = z2;
        this.f68818h = switchColors;
        this.f68819i = interactionSource;
        this.f68817f = shape;
        this.g = i2;
    }

    public /* synthetic */ eb(LVTextFieldInternal lVTextFieldInternal, Modifier modifier, ConfigurationTextField configurationTextField, boolean z, boolean z2, String str, int i2) {
        this.f68814b = 3;
        this.f68818h = lVTextFieldInternal;
        this.f68815c = modifier;
        this.f68819i = configurationTextField;
        this.d = z;
        this.f68816e = z2;
        this.f68817f = str;
        this.g = i2;
    }

    public /* synthetic */ eb(Object obj, Object obj2, boolean z, Object obj3, boolean z2, Function0 function0, int i2, int i3) {
        this.f68814b = i3;
        this.f68815c = obj;
        this.f68818h = obj2;
        this.d = z;
        this.f68819i = obj3;
        this.f68816e = z2;
        this.f68817f = function0;
        this.g = i2;
    }
}
