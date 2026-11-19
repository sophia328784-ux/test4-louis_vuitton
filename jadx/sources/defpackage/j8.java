package defpackage;

import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContainer;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVTextFieldInternal;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSItemKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.compose.components.LVDatePickerKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideTrackItemKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldPhoneKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.imageviewer.components.PagerImageViewerKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSlideUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialRecommendedKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.ApplyFiltersButtonKt;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j8 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71330c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f71332f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71333h;

    public /* synthetic */ j8(int i2, ArrayList arrayList, ProductBackground productBackground, boolean z, Function0 function0, Function0 function1, int i3) {
        this.f71329b = 11;
        this.f71332f = i2;
        this.f71330c = arrayList;
        this.g = productBackground;
        this.d = z;
        this.f71331e = function0;
        this.f71333h = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71329b;
        int i3 = this.f71332f;
        Object obj3 = this.f71331e;
        Object obj4 = this.f71333h;
        Object obj5 = this.g;
        Object obj6 = this.f71330c;
        switch (i2) {
            case 0:
                ((Integer) obj2).intValue();
                ApplyFiltersButtonKt.a((Modifier) obj6, (String) obj5, (Integer) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                AudioGuideTrackItemKt.c((Modifier) obj6, (AudioGuideUiModel.TrackUiModel) obj5, (AudioGuideUiModel.AudioGuideColorsUiModel) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                CarouselSItemKt.a((Modifier) obj6, (CarouselSItemUiModel) obj5, this.d, (LVColorScheme) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                DatePickerKt.h((Function0) obj3, (ImageVector) obj4, (String) obj5, (Modifier) obj6, this.d, (Composer) obj, RecomposeScopeImplKt.a(1), this.f71332f);
                break;
            case 4:
                ((Integer) obj2).getClass();
                FormFieldPhoneKt.c((FormFieldUiModel) obj5, (Function1) obj4, (Modifier) obj6, this.d, (LVColorScheme) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).intValue();
                ImmersiveArticleSliderKt.a((ImmersiveArticleSlideUiModel) obj6, (SectionThemeUiModel) obj5, (ImmersiveArticleSizeCardUiModel) obj4, this.d, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                LVDatePickerKt.a((Modifier) obj6, (Long) obj5, this.d, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                LVPushCardKt.c((Modifier) obj6, (ConfigurationPushCardContainer) obj5, this.d, (Function0) obj3, (Function3) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 8:
                String str = (String) obj5;
                ConfigurationSearchBar configurationSearchBar = (ConfigurationSearchBar) obj6;
                Function0 function0 = (Function0) obj3;
                Function0 function1 = (Function0) obj4;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSearchBarKt.f48654a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48685a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVSearchBarInternal$lambda$18$0");
                    if (str == null) {
                        str = "search_back_button";
                    }
                    lVTextFieldInternal.b(ModifierExtKt.e(dTFunctionNameModifier, str), this.f71332f, configurationSearchBar, this.d ? function0 : function1, composer, 24576);
                } else {
                    composer.D();
                }
                break;
            case 9:
                ((Integer) obj2).getClass();
                OrderDetailScreenKt.e(this.d, (Set) obj6, (Function0) obj3, (Function0) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                OrderExchangeVariantSelectionScreenKt.a((Modifier) obj6, (List) obj5, (CategoryOptionUiModel) obj4, (Function1) obj3, this.d, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                PagerImageViewerKt.a(this.f71332f, (ArrayList) obj6, (ProductBackground) obj5, this.d, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                SettingsComposableKt.b((Boolean) obj6, this.d, (Function0) obj3, (Function0) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                TutorialRecommendedKt.b((Modifier) obj6, (List) obj5, this.d, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ j8(Modifier modifier, ConfigurationPushCardContainer configurationPushCardContainer, boolean z, Function0 function0, Function3 function3, int i2) {
        this.f71329b = 7;
        this.f71330c = modifier;
        this.g = configurationPushCardContainer;
        this.d = z;
        this.f71331e = function0;
        this.f71333h = function3;
        this.f71332f = i2;
    }

    public /* synthetic */ j8(Modifier modifier, Object obj, boolean z, Object obj2, Function function, int i2, int i3) {
        this.f71329b = i3;
        this.f71330c = modifier;
        this.g = obj;
        this.d = z;
        this.f71333h = obj2;
        this.f71331e = function;
        this.f71332f = i2;
    }

    public /* synthetic */ j8(Modifier modifier, List list, CategoryOptionUiModel categoryOptionUiModel, Function1 function1, boolean z, int i2) {
        this.f71329b = 10;
        this.f71330c = modifier;
        this.g = list;
        this.f71333h = categoryOptionUiModel;
        this.f71331e = function1;
        this.d = z;
        this.f71332f = i2;
    }

    public /* synthetic */ j8(FormFieldUiModel formFieldUiModel, Function1 function1, Modifier modifier, boolean z, LVColorScheme lVColorScheme, int i2) {
        this.f71329b = 4;
        this.g = formFieldUiModel;
        this.f71333h = function1;
        this.f71330c = modifier;
        this.d = z;
        this.f71331e = lVColorScheme;
        this.f71332f = i2;
    }

    public /* synthetic */ j8(Boolean bool, boolean z, Function0 function0, Function0 function1, Function1 function2, int i2) {
        this.f71329b = 12;
        this.f71330c = bool;
        this.d = z;
        this.f71331e = function0;
        this.g = function1;
        this.f71333h = function2;
        this.f71332f = i2;
    }

    public /* synthetic */ j8(Object obj, Object obj2, Object obj3, boolean z, Function function, int i2, int i3) {
        this.f71329b = i3;
        this.f71330c = obj;
        this.g = obj2;
        this.f71333h = obj3;
        this.d = z;
        this.f71331e = function;
        this.f71332f = i2;
    }

    public /* synthetic */ j8(String str, int i2, ConfigurationSearchBar configurationSearchBar, boolean z, Function0 function0, Function0 function1) {
        this.f71329b = 8;
        this.g = str;
        this.f71332f = i2;
        this.f71330c = configurationSearchBar;
        this.d = z;
        this.f71331e = function0;
        this.f71333h = function1;
    }

    public /* synthetic */ j8(Function0 function0, ImageVector imageVector, String str, Modifier modifier, boolean z, int i2, int i3) {
        this.f71329b = 3;
        this.f71331e = function0;
        this.f71333h = imageVector;
        this.g = str;
        this.f71330c = modifier;
        this.d = z;
        this.f71332f = i3;
    }

    public /* synthetic */ j8(boolean z, Set set, Function0 function0, Function0 function1, Function1 function2, int i2) {
        this.f71329b = 9;
        this.d = z;
        this.f71330c = set;
        this.f71331e = function0;
        this.g = function1;
        this.f71333h = function2;
        this.f71332f = i2;
    }
}
