package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.components.TopBarAvatarKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModel;
import com.vuitton.android.presentation.screen.options.settings.components.ProfileSettingRowKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialRecommendedKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailInformationKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.search.components.NoResultSearchComposableKt;
import com.vuitton.android.presentation.screen.search.components.SuccessSearchComposableKt;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class og0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f76781c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76783f;

    public /* synthetic */ og0(SnackbarData snackbarData, Modifier modifier, Function3 function3, int i2) {
        this.f76780b = 6;
        this.f76782e = snackbarData;
        this.d = modifier;
        this.f76783f = function3;
        this.f76781c = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76780b;
        int i3 = this.f76781c;
        Object obj3 = this.f76783f;
        Object obj4 = this.f76782e;
        Object obj5 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                NoResultSearchComposableKt.c((Modifier) obj5, (TrendingItemUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.l((String) obj5, (String) obj4, (TextStyle) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.f76781c);
                break;
            case 2:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.d((Modifier) obj5, (String) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.f76781c);
                break;
            case 3:
                ((Integer) obj2).getClass();
                ProfileSettingRowKt.a((Modifier) obj5, (String) obj4, (Boolean) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.f76781c);
                break;
            case 4:
                ((Integer) obj2).intValue();
                RepairDetailInformationKt.d((InAppDispatch) obj5, (CareServiceDetailUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).intValue();
                RepairShippingConfirmationComposableKt.e((AssessmentViewState) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                SnackbarHostKt.a((SnackbarData) obj4, (Modifier) obj5, (Function3) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                SuccessSearchComposableKt.a((Modifier) obj5, (List) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                SuccessSearchComposableKt.b((Modifier) obj5, (List) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 9:
                ((Integer) obj2).intValue();
                SuggestionCarouselComposableKt.c((LazyListState) obj5, (SearchListState.Result) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                SuggestionCarouselComposableKt.d((Modifier) obj5, (SuggestionItemUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                ((TextLinkScope) obj5).b((Object[]) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                TopBarAvatarKt.a((Modifier) obj5, (TopBarAvatarViewModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.f76781c);
                break;
            default:
                ((Integer) obj2).getClass();
                TutorialRecommendedKt.a((Modifier) obj5, (CarouselSItemUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ og0(Object obj, Object obj2, Object obj3, int i2, int i3, int i4) {
        this.f76780b = i4;
        this.d = obj;
        this.f76782e = obj2;
        this.f76783f = obj3;
        this.f76781c = i3;
    }

    public /* synthetic */ og0(Object obj, Object obj2, Function function, int i2, int i3) {
        this.f76780b = i3;
        this.d = obj;
        this.f76782e = obj2;
        this.f76783f = function;
        this.f76781c = i2;
    }
}
