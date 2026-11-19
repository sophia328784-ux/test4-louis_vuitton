package defpackage;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.MotionScheme;
import androidx.compose.material3.Shapes;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.Typography;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.designkit.components.components.LVTooltipKt;
import com.vuitton.android.designkit.components.components.TooltipGravity;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.components.productcarousel.ProductCarouselItemKt;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.components.UserAvatarSectionKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoLocaleFlags;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoUiModel;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationPasswordStepKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusScreenKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.options.legaltext.components.LegalTextScreenKt;
import com.vuitton.android.presentation.screen.options.notifications.components.ExpandableHeaderKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.VirtualStudioConsentsBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpReferencesRowKt;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeSnackBarKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b3 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f20728c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f20729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f20730f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f20731h;

    public /* synthetic */ b3(String str, String str2, int i2, String str3, String str4, String str5, int i3) {
        this.f20727b = 24;
        this.d = str;
        this.f20729e = str2;
        this.f20728c = i2;
        this.f20730f = str3;
        this.g = str4;
        this.f20731h = str5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20727b;
        int i3 = this.f20728c;
        Object obj3 = this.g;
        Object obj4 = this.f20730f;
        Object obj5 = this.f20731h;
        Object obj6 = this.f20729e;
        Object obj7 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).intValue();
                AccountActivationPasswordStepKt.a((ColumnScope) obj7, (AccountActivationViewState) obj6, (Function2) obj4, (Function0) obj3, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                AssessmentReceiveComponentKt.a((AddressUiModel) obj7, (AddressUiModel) obj6, (String) obj4, (Function1) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                BasicTooltipKt.a((PopupPositionProvider) obj7, (ComposableLambdaImpl) obj6, (TooltipState) obj4, (Modifier) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                BookingAccountStatusScreenKt.a((BookingPersonalInfoViewState) obj7, (Function1) obj6, (Function0) obj3, (Function0) obj5, (SnackbarHostState) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 4:
                ((Integer) obj2).intValue();
                CancellationReasonsScreenKt.a((Function2) obj4, (CancellationReasonsViewState) obj7, (RepairStatusUiModel) obj6, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                CardKt.a((Modifier) obj7, (Shape) obj6, (CardColors) obj4, (CardElevation) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, RecomposeScopeImplKt.a(196609), this.f20728c);
                break;
            case 6:
                ((Integer) obj2).getClass();
                CertificateListItemsKt.d((Modifier) obj7, (String) obj6, (CertificateStatusUiModel) obj4, (Alignment.Horizontal) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).intValue();
                CertificateNfcScanBottomSheetKt.a((NfcScanState) obj7, (LVModalBottomSheetState) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3) | 1;
                ((ComposableLambdaImpl) obj7).f(this.f20729e, this.f20730f, this.g, this.f20731h, (Composer) obj, iA);
                break;
            case 9:
                ((Integer) obj2).intValue();
                ContactUsBottomSheetKt.a((ContactUsUiModel) obj7, (LVModalBottomSheetState) obj6, (LVModalBottomSheetState) obj4, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 10:
                ((Integer) obj2).intValue();
                ExpandableHeaderKt.a((Modifier) obj7, (String) obj6, (String) obj4, (CollapsingState) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                InboxNotificationListScreenKt.b((Modifier) obj7, (InAppDispatch) obj6, (InboxNotificationUiModel) obj4, (Function1) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                LVTooltipKt.a((TooltipGravity) obj7, (PaddingValues) obj6, (String) obj4, (String) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                LegalTextScreenKt.a((String) obj7, (String) obj6, (String) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                MaterialThemeKt.a((ColorScheme) obj7, (MotionScheme) obj6, (Shapes) obj3, (Typography) obj5, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 15:
                ((Integer) obj2).intValue();
                MyInformationScreenKt.c((MyInfoUiModel) obj7, (MyInfoLocaleFlags) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 16:
                ((Integer) obj2).intValue();
                PLPStoreModeSnackBarKt.a((SnackbarHostState) obj7, (LazyPagingItems) obj6, (StoreModeContentUiModel) obj4, (Flow) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                PdpReferencesRowKt.b((Modifier) obj7, (String) obj6, (ProductBackground) obj4, (String) obj3, (String) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 18:
                ((Integer) obj2).intValue();
                PersonalSelectionsListScreenKt.c((PaddingValues) obj7, (List) obj6, (String) obj3, (Function2) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 19:
                ((Integer) obj2).intValue();
                PersonalSelectionsListScreenKt.e((PaddingValues) obj7, (List) obj6, (List) obj3, (Function2) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 20:
                ((Integer) obj2).getClass();
                PersonalSelectionsListScreenKt.b((PaddingValuesImpl) obj7, (List) obj6, (String) obj3, (Function2) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 21:
                ((Integer) obj2).getClass();
                ProductCarouselItemKt.a((Modifier) obj7, (ProductCarouselItemUiModel) obj6, (LVColorScheme) obj4, (Function0) obj3, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 22:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                TransitionKt.a((Transition) obj7, (Transition.TransitionAnimationState) obj6, this.f20730f, this.g, (FiniteAnimationSpec) obj5, (Composer) obj, iA2);
                break;
            case 23:
                ((Integer) obj2).getClass();
                UserAvatarSectionKt.a((Modifier) obj7, (String) obj6, (String) obj4, (AvatarItemUiModel) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 24:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(224257);
                VirtualStudioConsentsBottomSheetKt.a((String) obj7, (String) obj6, this.f20728c, (String) obj4, (String) obj3, (String) obj5, (Composer) obj, iA3);
                break;
            default:
                ((Integer) obj2).getClass();
                WishlistAnimationKt.a((Modifier) obj7, (PlpProductUiModel) obj6, (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ b3(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f20727b = 5;
        this.d = modifier;
        this.f20729e = shape;
        this.f20730f = cardColors;
        this.g = cardElevation;
        this.f20731h = composableLambdaImpl;
        this.f20728c = i3;
    }

    public /* synthetic */ b3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2, int i3) {
        this.f20727b = i3;
        this.d = obj;
        this.f20729e = obj2;
        this.f20730f = obj3;
        this.g = obj4;
        this.f20731h = obj5;
        this.f20728c = i2;
    }

    public /* synthetic */ b3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2, int i3, boolean z) {
        this.f20727b = i3;
        this.d = obj;
        this.f20729e = obj2;
        this.g = obj3;
        this.f20731h = obj4;
        this.f20730f = obj5;
        this.f20728c = i2;
    }

    public /* synthetic */ b3(Object obj, Object obj2, Object obj3, Object obj4, Function0 function0, int i2, int i3) {
        this.f20727b = i3;
        this.d = obj;
        this.f20729e = obj2;
        this.f20730f = obj3;
        this.f20731h = obj4;
        this.g = function0;
        this.f20728c = i2;
    }

    public /* synthetic */ b3(PaddingValues paddingValues, List list, Object obj, Function2 function2, Function1 function1, int i2, int i3) {
        this.f20727b = i3;
        this.d = paddingValues;
        this.f20729e = list;
        this.g = obj;
        this.f20730f = function2;
        this.f20731h = function1;
        this.f20728c = i2;
    }

    public /* synthetic */ b3(Function2 function2, CancellationReasonsViewState cancellationReasonsViewState, RepairStatusUiModel repairStatusUiModel, Function1 function1, Function0 function0, int i2) {
        this.f20727b = 4;
        this.f20730f = function2;
        this.d = cancellationReasonsViewState;
        this.f20729e = repairStatusUiModel;
        this.f20731h = function1;
        this.g = function0;
        this.f20728c = i2;
    }
}
