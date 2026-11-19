package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideLanguageSelectorKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.booking.components.BookingImageSize;
import com.vuitton.android.presentation.screen.booking.components.BookingOverviewKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.options.notifications.components.StickyBottomAreaKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import defpackage.a20;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oa implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76735c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f76736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76737f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76738h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76740j;

    public /* synthetic */ oa(PagerState pagerState, Modifier modifier, List list, ModelSizeVariationUiModel modelSizeVariationUiModel, CoroutineScope coroutineScope, Function1 function1, int i2, int i3) {
        this.f76734b = 5;
        this.f76737f = pagerState;
        this.f76735c = modifier;
        this.f76738h = list;
        this.g = modelSizeVariationUiModel;
        this.f76740j = coroutineScope;
        this.f76739i = function1;
        this.d = i2;
        this.f76736e = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76734b;
        int i3 = this.d;
        Object obj3 = this.f76739i;
        Object obj4 = this.f76740j;
        Object obj5 = this.f76738h;
        Object obj6 = this.g;
        Object obj7 = this.f76737f;
        Object obj8 = this.f76735c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AudioGuideLanguageSelectorKt.b((Modifier) obj8, (FeatureThemeUiModel) obj7, (AudioGuideUiModel.AvailableLanguageUiModel) obj6, (List) obj5, (Function1) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.f76736e);
                break;
            case 1:
                ((Integer) obj2).getClass();
                BookingOverviewKt.a((Modifier) obj8, (String) obj7, (String) obj6, (String) obj5, (String) obj3, (BookingImageSize) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.f76736e);
                break;
            case 2:
                ((Integer) obj2).getClass();
                CollapsingDetailListKt.b((Modifier) obj8, (Modifier) obj7, (String) obj6, (CollapsingState) obj5, (Function1) obj3, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.f76736e);
                break;
            case 3:
                ((Integer) obj2).getClass();
                FlowLayoutKt.b((Modifier) obj8, (Arrangement.Horizontal) obj7, (Arrangement.Vertical) obj6, (Alignment.Vertical) obj5, this.d, (FlowRowOverflow) obj3, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(this.f76736e | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                Lv3dCardViewerComposableKt.a((Modifier) obj8, (Lv3dCardViewerUiModel) obj7, true, (Function1) obj3, (Function0) obj4, (Scene3DConfiguration.BlossomConfiguration) obj6, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.f76736e);
                break;
            case 5:
                ((Integer) obj2).getClass();
                ModelSizeBottomBarKt.b((PagerState) obj7, (Modifier) obj8, (List) obj5, (ModelSizeVariationUiModel) obj6, (CoroutineScope) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.f76736e);
                break;
            case 6:
                PersonalSelectionsCurationAdvisorViewState.Success success = (PersonalSelectionsCurationAdvisorViewState.Success) obj8;
                Function0 function0 = (Function0) obj4;
                final Function0 function1 = (Function0) obj7;
                final ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj6;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                final Function3 function3 = (Function3) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    String str = success.f62507a.f62569b;
                    if (str == null) {
                        str = "";
                    }
                    String str2 = str;
                    final int i4 = this.d;
                    final int i5 = this.f76736e;
                    LVStandardTopBarKt.a(null, null, false, str2, null, null, function0, ComposableLambdaKt.b(145078384, new Function4() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.b
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj9, Object obj10, Object obj11, Object obj12) {
                            TopBarActionScope topBarActionScope = (TopBarActionScope) obj9;
                            LVColorScheme lVColorScheme = (LVColorScheme) obj10;
                            Composer composer2 = (Composer) obj11;
                            int iIntValue2 = ((Integer) obj12).intValue();
                            topBarActionScope.getClass();
                            lVColorScheme.getClass();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            TopBarActionScope.ComposeDefaultImpls.a(null, LVAppDesignKitTheme.g(composer2).t, StringResources_androidKt.c(composer2, R.string.alt_share), function1, lVColorScheme, null, null, false, topBarActionScope, composer2, ((iIntValue2 << 9) & 57344) | ((iIntValue2 << 24) & 234881024), 225);
                            ContactUsUiModel contactUsUiModel2 = contactUsUiModel;
                            if (contactUsUiModel2.f51154a) {
                                composer2.L(1293435793);
                                LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                                boolean zY = composer2.y(lVModalBottomSheetState2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new PersonalSelectionsCurationAdvisorScreenKt$PersonalSelectionsCurationAdvisorScreen$2$1$1$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "show", "show()V", 0);
                                    composer2.q(objX);
                                }
                                Function0 function2 = (Function0) ((KFunction) objX);
                                Function3 function4 = function3;
                                boolean zK = composer2.K(function4);
                                int i6 = i4;
                                boolean zD = zK | composer2.d(i6);
                                int i7 = i5;
                                boolean zD2 = zD | composer2.d(i7);
                                Object objX2 = composer2.x();
                                if (zD2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new a20(i6, i7, 2, function4);
                                    composer2.q(objX2);
                                }
                                ContactUsIconKt.a(null, contactUsUiModel2, function2, (Function0) objX2, false, "personalSelectionsDetail_contactUs_button", composer2, ImageMetadata.EDGE_MODE, 17);
                                composer2.F();
                            } else {
                                composer2.L(1293867282);
                                composer2.F();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), null, null, null, composer, 12582912, 0, 3895);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                StickyBottomAreaKt.a((Modifier) obj8, (String) obj7, (String) obj6, (String) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.f76736e);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ oa(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i2, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, int i3) {
        this.f76734b = 3;
        this.f76735c = modifier;
        this.f76737f = horizontal;
        this.g = vertical;
        this.f76738h = vertical2;
        this.d = i2;
        this.f76739i = flowRowOverflow;
        this.f76740j = composableLambdaImpl;
        this.f76736e = i3;
    }

    public /* synthetic */ oa(Modifier modifier, Lv3dCardViewerUiModel lv3dCardViewerUiModel, Function1 function1, Function0 function0, Scene3DConfiguration.BlossomConfiguration blossomConfiguration, Function0 function2, int i2, int i3) {
        this.f76734b = 4;
        this.f76735c = modifier;
        this.f76737f = lv3dCardViewerUiModel;
        this.f76739i = function1;
        this.f76740j = function0;
        this.g = blossomConfiguration;
        this.f76738h = function2;
        this.d = i2;
        this.f76736e = i3;
    }

    public /* synthetic */ oa(Modifier modifier, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2, int i3, int i4) {
        this.f76734b = i4;
        this.f76735c = modifier;
        this.f76737f = obj;
        this.g = obj2;
        this.f76738h = obj3;
        this.f76739i = obj4;
        this.f76740j = obj5;
        this.d = i2;
        this.f76736e = i3;
    }

    public /* synthetic */ oa(Modifier modifier, String str, String str2, String str3, Function0 function0, Function0 function1, int i2, int i3) {
        this.f76734b = 7;
        this.f76735c = modifier;
        this.f76737f = str;
        this.g = str2;
        this.f76738h = str3;
        this.f76740j = function0;
        this.f76739i = function1;
        this.d = i2;
        this.f76736e = i3;
    }

    public /* synthetic */ oa(PersonalSelectionsCurationAdvisorViewState.Success success, Function0 function0, Function0 function1, ContactUsUiModel contactUsUiModel, LVModalBottomSheetState lVModalBottomSheetState, Function3 function3, int i2, int i3) {
        this.f76734b = 6;
        this.f76735c = success;
        this.f76740j = function0;
        this.f76737f = function1;
        this.g = contactUsUiModel;
        this.f76738h = lVModalBottomSheetState;
        this.f76739i = function3;
        this.d = i2;
        this.f76736e = i3;
    }
}
