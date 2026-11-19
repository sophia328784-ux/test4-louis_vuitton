package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.account.lvpass.QRCodeScreenState;
import com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailSectionKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.TransferCertificateConfirmationComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.components.returns.OrderReturnSummaryScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.VtoConsentBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt;
import com.vuitton.android.presentation.screen.privacy.components.precompliance.PrivacyPreComplianceFooterKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailInformationKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeComposableKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oi0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f76794c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76796f;
    public final /* synthetic */ Object g;

    public /* synthetic */ oi0(int i2, int i3, String str, String str2, String str3, Function0 function0) {
        this.f76793b = 1;
        this.d = function0;
        this.f76795e = str;
        this.f76796f = str2;
        this.g = str3;
        this.f76794c = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76793b;
        int i3 = this.f76794c;
        Object obj3 = this.g;
        Object obj4 = this.f76796f;
        Object obj5 = this.f76795e;
        Object obj6 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                OrderListScreenKt.d((OrderViewState) obj6, (SnackbarHostState) obj5, (ComposableLambdaImpl) obj4, (Function3) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                int i4 = this.f76794c;
                OrderReturnOrExchangeComponentsKt.m(iA, i4, composer, (String) obj5, (String) obj4, (String) obj3, (Function0) obj6);
                break;
            case 2:
                ((Integer) obj2).intValue();
                OrderReturnSummaryScreenKt.a((OrderReturnOrExchangeViewState) obj6, (SnackbarHostState) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                OsaContactFormBottomSheetScreenKt.a((Modifier) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                PLPStoreModeComposableKt.a((PLPStoreModeViewModel) obj6, (LinkedHashMap) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                PLPWishlistFeedbackWatcherKt.a((LazyPagingItems) obj6, (Flow) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                PersonalSelectionsListScreenKt.d((ComposableLambdaImpl) obj4, (PersonalSelectionsListUiModel) obj6, (Function2) obj5, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).intValue();
                PrivacyPreComplianceFooterKt.a((PrivacyType) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                QRCodeComposableKt.a((QRCodeScreenState) obj6, (UserWorldwideIdViewModel) obj5, (AppsFlyerUiTracker) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 9:
                ((Integer) obj2).intValue();
                RepairDetailInformationKt.b((InAppDispatch) obj6, (AssessmentViewState) obj5, (CareServiceDetailUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                SharedWishlistScreenKt.b((Modifier) obj6, (WishlistViewState) obj5, (String) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 11:
                ((Integer) obj2).intValue();
                SuggestionCarouselComposableKt.a((String) obj6, (SearchListState) obj5, (Function2) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                ThankYouScreenKt.d((Modifier) obj6, (String) obj5, (String) obj4, (List) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                TrackDetailSectionKt.a((EditorialModuleUiModel) obj6, (LVColorScheme) obj5, (A11ySettings) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                TransferCertificateConfirmationComposableKt.e((Modifier) obj6, (String) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).intValue();
                VtoConsentBottomSheetKt.b((BeautyLegalConsentUiModel) obj6, (Function1) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ oi0(ComposableLambdaImpl composableLambdaImpl, PersonalSelectionsListUiModel personalSelectionsListUiModel, Function2 function2, Function1 function1, int i2) {
        this.f76793b = 6;
        this.f76796f = composableLambdaImpl;
        this.d = personalSelectionsListUiModel;
        this.f76795e = function2;
        this.g = function1;
        this.f76794c = i2;
    }

    public /* synthetic */ oi0(Object obj, Object obj2, Object obj3, Object obj4, int i2, int i3) {
        this.f76793b = i3;
        this.d = obj;
        this.f76795e = obj2;
        this.f76796f = obj3;
        this.g = obj4;
        this.f76794c = i2;
    }
}
