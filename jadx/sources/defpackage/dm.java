package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerFormatter;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.DatePickerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticle3DAssetKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.options.settings.components.ProfileConsentCardKt;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightListKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68610b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68611c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68613f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f68616j;

    public /* synthetic */ dm(DatePickerState datePickerState, Modifier modifier, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, Function2 function2, Function2 function3, boolean z, FocusRequester focusRequester, int i2) {
        this.f68613f = datePickerState;
        this.f68611c = modifier;
        this.g = datePickerFormatter;
        this.f68614h = datePickerColors;
        this.d = function2;
        this.f68615i = function3;
        this.f68612e = z;
        this.f68616j = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68610b;
        Object obj3 = this.f68616j;
        Object obj4 = this.d;
        Object obj5 = this.f68615i;
        Object obj6 = this.f68614h;
        Object obj7 = this.g;
        Object obj8 = this.f68613f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                CertificateScreenKt.a(this.f68611c, (List) obj8, this.f68612e, (Function1) obj7, (Function1) obj6, (Function0) obj3, (Function1) obj5, (Function2) obj4, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1572865);
                DatePickerKt.b((DatePickerState) obj8, this.f68611c, (DatePickerFormatter) obj7, (DatePickerColors) obj6, (Function2) obj4, (Function2) obj5, this.f68612e, (FocusRequester) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                ImmersiveArticle3DAssetKt.a(this.f68611c, (Lv3dViewerUiModel) obj8, this.f68612e, (Function1) obj7, (Function0) obj3, (Function1) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(1);
                ProfileConsentCardKt.b(this.f68611c, (List) obj8, (PrivacyType) obj7, this.f68612e, (Function0) obj3, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(7);
                SearchScreenComposableKt.a(this.f68611c, (SearchViewModel) obj8, (ContributionLinkNavigator) obj5, this.f68612e, (Function0) obj3, (Function0) obj4, (Function1) obj7, (Function1) obj6, (Composer) obj, iA5);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(1);
                SpotlightListKt.a(this.f68611c, (List) obj8, (Function1) obj7, (SpotlightContainerStateUiModel) obj6, this.f68612e, (PagerState) obj5, (Set) obj4, (Function0) obj3, (Composer) obj, iA6);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ dm(Modifier modifier, Lv3dViewerUiModel lv3dViewerUiModel, boolean z, Function1 function1, Function0 function0, Function1 function2, Function0 function3, Function0 function4, int i2) {
        this.f68611c = modifier;
        this.f68613f = lv3dViewerUiModel;
        this.f68612e = z;
        this.g = function1;
        this.f68616j = function0;
        this.f68614h = function2;
        this.f68615i = function3;
        this.d = function4;
    }

    public /* synthetic */ dm(Modifier modifier, SearchViewModel searchViewModel, ContributionLinkNavigator contributionLinkNavigator, boolean z, Function0 function0, Function0 function1, Function1 function2, Function1 function3, int i2) {
        this.f68611c = modifier;
        this.f68613f = searchViewModel;
        this.f68615i = contributionLinkNavigator;
        this.f68612e = z;
        this.f68616j = function0;
        this.d = function1;
        this.g = function2;
        this.f68614h = function3;
    }

    public /* synthetic */ dm(Modifier modifier, List list, PrivacyType privacyType, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i2) {
        this.f68611c = modifier;
        this.f68613f = list;
        this.g = privacyType;
        this.f68612e = z;
        this.f68616j = function0;
        this.f68614h = function1;
        this.f68615i = function2;
        this.d = function3;
    }

    public /* synthetic */ dm(Modifier modifier, List list, Function1 function1, SpotlightContainerStateUiModel spotlightContainerStateUiModel, boolean z, PagerState pagerState, Set set, Function0 function0, int i2) {
        this.f68611c = modifier;
        this.f68613f = list;
        this.g = function1;
        this.f68614h = spotlightContainerStateUiModel;
        this.f68612e = z;
        this.f68615i = pagerState;
        this.d = set;
        this.f68616j = function0;
    }

    public /* synthetic */ dm(Modifier modifier, List list, boolean z, Function1 function1, Function1 function2, Function0 function0, Function1 function3, Function2 function4, int i2) {
        this.f68611c = modifier;
        this.f68613f = list;
        this.f68612e = z;
        this.g = function1;
        this.f68614h = function2;
        this.f68616j = function0;
        this.f68615i = function3;
        this.d = function4;
    }
}
