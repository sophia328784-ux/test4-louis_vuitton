package defpackage;

import android.content.ClipData;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.tooling.PreviewActivity;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import com.vuitton.android.domain.monitoring.search.SearchPanelExitContext;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.SlideShowItemUiModel;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetType;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModelKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditorialContentUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.HighlightUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.portal.PortalSliderViewModel;
import com.vuitton.android.presentation.screen.portal.models.PortalTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairDetailUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistProductItemKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jm0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71434c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jm0(Object obj, Object obj2, int i2) {
        this.f71433b = i2;
        this.f71434c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0162 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x0164 A[LOOP:0: B:53:0x012f->B:63:0x0164, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:95:0x0167 A[SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        SavedStateHandle savedStateHandleA;
        int i2 = this.f71433b;
        int i3 = 0;
        Object obj = this.d;
        Object obj2 = this.f71434c;
        switch (i2) {
            case 0:
                ((Function3) obj2).A(((ConfigurationUiModel) obj).f61664b, Boolean.FALSE, CustomizationType.DIAMOND_ENGRAVING);
                return Unit.f71739a;
            case 1:
                EditorialContentUiModel editorialContentUiModel = (EditorialContentUiModel) obj;
                ((Function2) obj2).invoke(editorialContentUiModel.f61690f, editorialContentUiModel.f61687b);
                return Unit.f71739a;
            case 2:
                ((Function1) obj2).invoke((ProductDisclaimerUiModel) obj);
                return Unit.f71739a;
            case 3:
                ((Function1) obj2).invoke((PdpVirtualStudioConfigValues) obj);
                return Unit.f71739a;
            case 4:
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj2;
                contactUsTracker.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnViewMoreClickEvent(contactUsTracker.f51123b)));
                ((Function1) obj).invoke(PdpBottomSheetType.TermsAndConditions.f61390a);
                return Unit.f71739a;
            case 5:
                HighlightUiModel highlightUiModel = (HighlightUiModel) obj;
                ((Function2) obj2).invoke(highlightUiModel.f61696f, highlightUiModel.f61694c);
                return Unit.f71739a;
            case 6:
                ((Function1) obj2).invoke((ProductImageUiModel) obj);
                return Unit.f71739a;
            case 7:
                ((Function1) obj2).invoke(((PersonalSelectionsCurationAdvisorViewModel) obj).i6());
                return Unit.f71739a;
            case 8:
                PersonalSharingUiModel personalSharingUiModel = (PersonalSharingUiModel) obj;
                ((Function2) obj2).invoke(personalSharingUiModel.f62649b, personalSharingUiModel.f62650c);
                return Unit.f71739a;
            case 9:
                ((PortalSliderViewModel) obj2).bc(PortalTrackingUiModel.OnHitClosePortalEvent.f63317a);
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 10:
                MutableIntState mutableIntState = (MutableIntState) obj2;
                int i4 = PreviewActivity.f10996h;
                mutableIntState.i((mutableIntState.f() + 1) % ((Object[]) obj).length);
                return Unit.f71739a;
            case 11:
                ProductCarouselItemUiModel productCarouselItemUiModel = (ProductCarouselItemUiModel) obj;
                ((Function2) obj2).invoke(new SkuIdUiModel(productCarouselItemUiModel.f50867a), Boolean.valueOf(productCarouselItemUiModel.g));
                return Unit.f71739a;
            case 12:
                ProductBooleanFilterUiModel productBooleanFilterUiModel = (ProductBooleanFilterUiModel) obj;
                String str = productBooleanFilterUiModel.f62955b;
                ((Function5) obj2).D(str, str, productBooleanFilterUiModel.f62956c, null, Boolean.FALSE);
                return Unit.f71739a;
            case 13:
                ProductUiModel.Companion companion = ProductUiModel.d1;
                ((Function1) obj2).invoke((PanelInfoUiModel) obj);
                return Unit.f71739a;
            case 14:
                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                ControlledComposition controlledComposition = (ControlledComposition) obj;
                Recomposer.Companion companion2 = Recomposer.z;
                Object[] objArr = mutableScatterSet.f3368b;
                long[] jArr = mutableScatterSet.f3367a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i5 = 0;
                    while (true) {
                        long j2 = jArr[i5];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i6 = 8 - ((~(i5 - length)) >>> 31);
                            for (int i7 = 0; i7 < i6; i7++) {
                                if ((255 & j2) < 128) {
                                    controlledComposition.t(objArr[(i5 << 3) + i7]);
                                }
                                j2 >>= 8;
                            }
                            if (i6 == 8) {
                                if (i5 != length) {
                                    i5++;
                                }
                            }
                        } else if (i5 != length) {
                            i5++;
                        }
                    }
                }
                return Unit.f71739a;
            case 15:
                Regex.Companion companion3 = Regex.INSTANCE;
                return ((Regex) obj2).b((CharSequence) obj);
            case 16:
                ((Function1) obj2).invoke(new CareServiceTransactionIdUiModel(((RepairDetailUiModel) obj).f64075b));
                return Unit.f71739a;
            case 17:
                return SerialDescriptorsKt.e((String) obj2, PolymorphicKind.SEALED.f75537a, new SerialDescriptor[0], new lu0((SealedClassSerializer) obj, i3));
            case 18:
                ((SearchViewModel) obj2).S5(SearchPanelExitContext.DISMISS);
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 19:
                ((MyInformationViewModel) obj2).d2();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 20:
                ((ServicesViewModel) obj2).c();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 21:
                ((MyInformationViewModel) obj2).Da();
                NavBackStackEntry navBackStackEntryB = ((NavHostController) obj).b();
                if (navBackStackEntryB != null && (savedStateHandleA = navBackStackEntryB.a()) != null) {
                    savedStateHandleA.b(Boolean.TRUE, "already_saved_info");
                }
                return Unit.f71739a;
            case 22:
                ((Function1) obj2).invoke(new SkuIdUiModel(((RecommendationUiModel) obj).f62170a.d));
                return Unit.f71739a;
            case 23:
                float f2 = SharedWishlistProductItemKt.f65768a;
                ((Function2) obj2).invoke(new SkuIdUiModel(((WishlistItemUiModel) obj).f65740b), null);
                return Unit.f71739a;
            case 24:
                ((Function1) obj2).invoke(((SlideShowItemUiModel) obj).d);
                return Unit.f71739a;
            case 25:
                SocialLoginBottomSheetState socialLoginBottomSheetState = (SocialLoginBottomSheetState) obj2;
                socialLoginBottomSheetState.f54155c.b(new k40(28));
                (((SocialLoginBottomSheetType.AuthSelection) obj).f54161a ? socialLoginBottomSheetState.f54157f : socialLoginBottomSheetState.f54156e).mo47invoke();
                return Unit.f71739a;
            case 26:
                ((Clipboard) obj2).b().setPrimaryClip(ClipData.newPlainText(null, StringsKt.b0(SocialLoginUiModelKt.a(((SocialLoginViewState) obj).f54193a, false))));
                return Unit.f71739a;
            case 27:
                SocialLoginBottomSheetState socialLoginBottomSheetState2 = (SocialLoginBottomSheetState) obj2;
                SocialLoginBottomSheetType.SocialSignInDebug socialSignInDebug = (SocialLoginBottomSheetType.SocialSignInDebug) obj;
                socialLoginBottomSheetState2.f54155c.b(new k40(28));
                socialLoginBottomSheetState2.f54153a.rb(socialSignInDebug.f54162a, socialLoginBottomSheetState2.g, socialSignInDebug.f54163b);
                return Unit.f71739a;
            case 28:
                Function0 function0 = (Function0) obj;
                if (((SocialRegisterViewState) obj2).f54238e) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            default:
                Function0 function1 = (Function0) obj2;
                if (((SocialRegisterViewState) ((State) obj).getF10755b()).f54238e) {
                    function1.mo47invoke();
                }
                return Unit.f71739a;
        }
    }
}
