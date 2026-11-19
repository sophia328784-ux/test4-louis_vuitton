package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation.SavedStateHandleKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.scene.Scene;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.plp.GetSkusPLPUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusUiModel;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuTrackingUiModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuViewState;
import com.vuitton.android.presentation.screen.orders.models.DeliveryUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaDestinations;
import com.vuitton.android.presentation.screen.osa.OsaDestinationsKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModelKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySkusDelegate;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTracker;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackingUiModel;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class of0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76772c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76773e;

    public /* synthetic */ of0(MutableState mutableState, PdpViewModel pdpViewModel, Context context) {
        this.f76771b = 25;
        this.f76773e = mutableState;
        this.f76772c = pdpViewModel;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        DeliveryUiModel deliveryUiModel;
        Object obj;
        String str;
        int i2 = this.f76771b;
        int i3 = 0;
        Object obj2 = this.f76773e;
        Object obj3 = this.d;
        Object obj4 = this.f76772c;
        switch (i2) {
            case 0:
                NavHostController navHostController = (NavHostController) obj4;
                NativeRegisterViewModel nativeRegisterViewModel = (NativeRegisterViewModel) obj3;
                MutableState mutableState = (MutableState) obj2;
                FormUiModel formUiModel = ((NativeRegisterViewState) mutableState.getF10755b()).l;
                FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.POSTAL_CODE;
                FormUiModel.Companion companion = FormUiModel.f57485b;
                String strE = formUiModel.e(formSectionTypeUiModel, true);
                if (StringsKt.w(strE)) {
                    strE = ((NativeRegisterViewState) mutableState.getF10755b()).l.e(FormSectionTypeUiModel.ADDRESS1, true);
                }
                NavController.d(navHostController, new NativeRegisterRoutes.JusoSearch(strE, nativeRegisterViewModel.getV()), null, 6);
                return Unit.f71739a;
            case 1:
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj4;
                NativeRegisterViewState nativeRegisterViewState = (NativeRegisterViewState) obj3;
                Function1 function1 = (Function1) obj2;
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                if (nativeRegisterViewState.f54037k.f53992a) {
                    function1.invoke(Step.REGISTRATION_ADDRESS);
                }
                return Unit.f71739a;
            case 2:
                Function0 function0 = (Function0) obj2;
                int size = ((ArrayList) obj4).size() - ((Scene) obj3).getF18419c().size();
                while (i3 < size) {
                    function0.mo47invoke();
                    i3++;
                }
                return Unit.f71739a;
            case 3:
                ((LVModalBottomSheetState) obj3).b(new k40(28));
                ((PrivacyViewModelImpl) obj2).O4();
                NavController.d((NavHostController) obj4, OnboardingRoutes.Login.INSTANCE, null, 6);
                return Unit.f71739a;
            case 4:
                GapAnchor gapAnchor = (GapAnchor) obj4;
                SlotWriter slotWriter = (SlotWriter) obj3;
                OperationErrorContext operationErrorContext = (OperationErrorContext) obj2;
                if (gapAnchor != null) {
                    slotWriter.a(slotWriter.c(gapAnchor) - slotWriter.t);
                }
                List listA = ComposeStackTraceBuilderKt.a(slotWriter, null, slotWriter.t, null);
                ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) CollectionsKt.N(listA);
                Integer num = composeStackTraceFrame != null ? composeStackTraceFrame.f8556c : null;
                List listA2 = operationErrorContext.a(num);
                if (num != null && !listA2.isEmpty()) {
                    ComposeStackTraceFrame composeStackTraceFrame2 = (ComposeStackTraceFrame) CollectionsKt.B(listA2);
                    listA2 = CollectionsKt.Y(CollectionsKt.O(new ComposeStackTraceFrame(composeStackTraceFrame2.f8554a, composeStackTraceFrame2.f8555b, num)), CollectionsKt.w(listA2, 1));
                }
                return new ComposeStackTrace(CollectionsKt.Y(listA, listA2), operationErrorContext.b());
            case 5:
                Context context = (Context) obj3;
                State state = (State) obj2;
                ((OptOutPrivacyMenuViewModel) obj4).H2(OptOutPrivacyMenuTrackingUiModel.OnEmailUsEvent.f59978a);
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    ActivityExtKt.j(appCompatActivityB, ((OptOutPrivacyMenuViewState) state.getF10755b()).f59983b, StringResourceUiModelKt.a(((OptOutPrivacyMenuViewState) state.getF10755b()).f59982a, context), 4);
                }
                return Unit.f71739a;
            case 6:
                OrderViewState orderViewState = (OrderViewState) obj4;
                Function4 function4 = (Function4) obj3;
                OrderStatusUiModel orderStatusUiModel = (OrderStatusUiModel) obj2;
                TransactionUiModel transactionUiModel = orderViewState.f60376c;
                if (transactionUiModel != null && (deliveryUiModel = transactionUiModel.g) != null && (obj = deliveryUiModel.d) != null) {
                    function4.g(obj, transactionUiModel, orderViewState.d, orderStatusUiModel != null ? orderStatusUiModel.f60327e : null);
                }
                return Unit.f71739a;
            case 7:
                Function0 function2 = (Function0) obj3;
                MutableIntState mutableIntState = (MutableIntState) obj2;
                for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : ((OrderReturnOrExchangeViewState) obj4).f60310e) {
                    if (orderReturnOrExchangeItemUiModel.d && orderReturnOrExchangeItemUiModel.f60305e == null) {
                        mutableIntState.i(i3);
                        function2.mo47invoke();
                        return Unit.f71739a;
                    }
                    i3++;
                }
                i3 = -1;
                mutableIntState.i(i3);
                function2.mo47invoke();
                return Unit.f71739a;
            case 8:
                OsaActivity osaActivity = (OsaActivity) obj4;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj3;
                ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj2;
                OsaActivity.Companion companion2 = OsaActivity.u;
                if (((OsaContactFormViewState) osaActivity.J().getU().getValue()).m) {
                    AccountStatusUiModel accountStatusUiModel = ((OsaContactFormViewState) osaActivity.J().getU().getValue()).q;
                    IntentExtensionKt.b(OsaDestinationsKt.a(new OsaDestinations.ToRegisterWithPrefilledEmailPage(accountStatusUiModel != null ? accountStatusUiModel.f52671b : null, ((OsaContactFormViewState) osaActivity.J().getU().getValue()).n), osaActivity), managedActivityResultLauncher);
                } else {
                    IntentExtensionKt.b(OsaDestinationsKt.a(OsaDestinations.ToRegisterPage.f60570a, osaActivity), managedActivityResultLauncher2);
                }
                return Unit.f71739a;
            case 9:
                Function0 function3 = (Function0) obj4;
                OsaContactFormViewModel osaContactFormViewModel = (OsaContactFormViewModel) obj3;
                MutableState mutableState2 = (MutableState) obj2;
                if (((OsaContactFormBottomSheetScreen) mutableState2.getF10755b()) instanceof OsaContactFormBottomSheetScreen.AppointmentConfirmBottomSheet) {
                    function3.mo47invoke();
                }
                if (((OsaContactFormBottomSheetScreen) mutableState2.getF10755b()) != null) {
                    osaContactFormViewModel.W8();
                    osaContactFormViewModel.sc();
                    mutableState2.setValue(null);
                }
                return Unit.f71739a;
            case 10:
                OsaContactFormViewState osaContactFormViewState = (OsaContactFormViewState) obj3;
                Function2 function5 = (Function2) obj2;
                ((Function1) obj4).invoke(new OsaTrackingUiModel.BottomSheetAddCalendarClickedEvent(osaContactFormViewState.l));
                OsaItemUiModel osaItemUiModel = osaContactFormViewState.s;
                if (osaItemUiModel != null) {
                    function5.invoke(osaContactFormViewState.f60736a, osaItemUiModel);
                }
                return Unit.f71739a;
            case 11:
                Function0 function6 = (Function0) obj3;
                Function0 function7 = (Function0) obj2;
                if (Intrinsics.c(((OsaContactFormViewState) obj4).f60743j, Boolean.TRUE)) {
                    function6.mo47invoke();
                } else {
                    function7.mo47invoke();
                }
                return Unit.f71739a;
            case 12:
                ((Function2) obj4).invoke((InAppDispatch) obj3, (OsaItemUiModel) obj2);
                return Unit.f71739a;
            case 13:
                Function1 function8 = (Function1) obj3;
                Function0 function9 = (Function0) obj2;
                LocalDate localDate = (LocalDate) ((Ref$ObjectRef) obj4).f71921b;
                if (localDate != null) {
                    function8.invoke(localDate);
                    function9.mo47invoke();
                }
                return Unit.f71739a;
            case 14:
                ((OsaLocationFormViewModel) obj4).t();
                ((OsaReasonsFormViewModel) obj3).t();
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 15:
                Function1 function10 = (Function1) obj3;
                Function0 function11 = (Function0) obj2;
                if (((OsaLocationFormViewState) obj4).r) {
                    function10.invoke(OsaLocationFormBottomSheetScreen.OsaModificationAbortBottomSheet.f60804a);
                } else {
                    function11.mo47invoke();
                }
                return Unit.f71739a;
            case 16:
                Function0 function12 = (Function0) obj3;
                Function0 function13 = (Function0) obj2;
                if (((OsaLocationFormBottomSheetScreen) obj4) instanceof OsaLocationFormBottomSheetScreen.OsaPreBookErrorBottomSheet) {
                    function12.mo47invoke();
                } else {
                    function13.mo47invoke();
                }
                return Unit.f71739a;
            case 17:
                OsaReasonsFormViewModel osaReasonsFormViewModel = (OsaReasonsFormViewModel) obj4;
                osaReasonsFormViewModel.o(new OsaTrackingUiModel.ModifyReasonFromContactInfoClickedEvent(((OsaLocationFormViewState) ((OsaLocationFormViewModel) obj3).getU().getValue()).r));
                osaReasonsFormViewModel.e4();
                Nav3ExtKt.b((NavBackStack) obj2);
                return Unit.f71739a;
            case 18:
                FocusedProductUiModel focusedProductUiModel = (FocusedProductUiModel) obj2;
                ((Function0) obj4).mo47invoke();
                ((Function2) obj3).invoke(focusedProductUiModel.f62873a, Integer.valueOf(focusedProductUiModel.f62874b));
                return Unit.f71739a;
            case 19:
                PLPSkusViewModelImpl pLPSkusViewModelImpl = (PLPSkusViewModelImpl) obj4;
                GetSkusPLPUseCase getSkusPLPUseCase = (GetSkusPLPUseCase) obj3;
                IsProductInWishlistUseCase isProductInWishlistUseCase = (IsProductInWishlistUseCase) obj2;
                CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(pLPSkusViewModelImpl);
                SavedStateHandle savedStateHandle = pLPSkusViewModelImpl.f63086c;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase = pLPSkusViewModelImpl.g;
                try {
                    str = ((CatalogRoutes.SkuList) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(CatalogRoutes.SkuList.class), MapsKt.c())).f55287a;
                    break;
                } catch (Exception unused) {
                    String str2 = (String) savedStateHandle.a("nav_arg_plp_list_sku");
                    str = str2 != null ? str2 : "";
                }
                List<String> listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{", "}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listSplit$default, 10));
                for (String str3 : listSplit$default) {
                    SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                    str3.getClass();
                    arrayList.add(new SkuIdUiModel(str3));
                }
                return new PLPBySkusDelegate(isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_V3_GRID_VIEW}), isFeatureAvailableUseCase.b(new Feature[]{Feature.AI_COMPANION}), closeableCoroutineScopeA, arrayList, true, getSkusPLPUseCase, new tb0(pLPSkusViewModelImpl, 22), isProductInWishlistUseCase);
            case 20:
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) obj3;
                MutableState mutableState3 = (MutableState) obj2;
                ((ProductFilterViewModel) obj4).zc(null, true);
                String str4 = ((ProductFilterViewState) mutableState3.getF10755b()).f65027h;
                pSPStoreModeViewModel.l(str4 != null ? str4 : "", ((ProductFilterViewState) mutableState3.getF10755b()).f65028i);
                return Unit.f71739a;
            case 21:
                PdpActivity.Companion companion4 = PdpActivity.D;
                ((PdpActivity) obj3).startActivity(PdpDestinationsKt.a(new PdpDestinations.ToStoreLocatorPage(((PdpViewState) ((MutableState) obj2).getF10755b()).f61572j.f61553f), (Context) obj4));
                return Unit.f71739a;
            case 22:
                Function0 function14 = (Function0) obj3;
                LegalConsentsTracker legalConsentsTracker = (LegalConsentsTracker) obj2;
                LegalConsentContextUiModel legalConsentContextUiModel = ((BeautyLegalConsentUiModel) obj4).d;
                if (legalConsentContextUiModel != null) {
                    legalConsentsTracker.getClass();
                    legalConsentsTracker.f65397a.a(LegalConsentsTrackingUiModelKt.a(new LegalConsentsTrackingUiModel.DeclineConsentsClickedEvent(BeautyLegalConsentUiModelKt.a(legalConsentContextUiModel))));
                }
                function14.mo47invoke();
                return Unit.f71739a;
            case 23:
                ContactUsMethod.Chat chat = ContactUsMethod.Chat.f51131a;
                ((ContactUsTracker) obj4).b(chat);
                ((Function0) obj3).mo47invoke();
                ((Function1) obj2).invoke(chat);
                return Unit.f71739a;
            case 24:
                PdpTracker pdpTracker = (PdpTracker) obj3;
                Function2 function15 = (Function2) obj2;
                PdpBottomSheetType.EditCustomization editCustomization = (PdpBottomSheetType.EditCustomization) ((PdpBottomSheetType) obj4);
                int i4 = PdpBottomSheetContentKt.WhenMappings.f61369b[editCustomization.f61379b.ordinal()];
                if (i4 == 1) {
                    pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnEditHotstampingBottomSheetEditEvent.f61620a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                } else if (i4 == 2) {
                    pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnEditPerfumeEngravingBottomSheetEditEvent.f61622a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                }
                function15.invoke(editCustomization.f61378a, editCustomization.f61379b);
                return Unit.f71739a;
            case 25:
                PdpViewModel pdpViewModel = (PdpViewModel) obj4;
                Context context2 = (Context) obj3;
                ProductUiModel productUiModel = ((PdpViewState) ((MutableState) obj2).getF10755b()).f61566b;
                if (productUiModel != null) {
                    String string = ContextCompat.getString(context2, R.string.back_in_stock_notification_title);
                    string.getClass();
                    String str5 = String.format(string, Arrays.copyOf(new Object[]{productUiModel.f61736c}, 1));
                    String string2 = ContextCompat.getString(context2, R.string.back_in_stock_notification_subtitle);
                    string2.getClass();
                    String string3 = ContextCompat.getString(context2, R.string.back_in_stock_notification_message_text);
                    string3.getClass();
                    pdpViewModel.G9(productUiModel, str5, string2, string3);
                }
                return Unit.f71739a;
            case 26:
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj2;
                ((PdpViewModel) obj4).c();
                ((Function0) obj3).mo47invoke();
                contactUsTracker.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnPowerfrontAcceptConsentEvent(contactUsTracker.f51123b)));
                return Unit.f71739a;
            case 27:
                PdpTracker pdpTracker2 = (PdpTracker) obj3;
                Function1 function16 = (Function1) obj2;
                SizeGuideUiModel sizeGuideUiModel = ((PdpViewState) obj4).o;
                if (sizeGuideUiModel != null) {
                    pdpTracker2.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnSizeGuideClickEvent.f61647a, pdpTracker2.f61586b, pdpTracker2.f61587c, pdpTracker2.d));
                    function16.invoke(new PdpBottomSheetType.SizeGuide(sizeGuideUiModel));
                }
                return Unit.f71739a;
            case 28:
                PdpTracker pdpTracker3 = (PdpTracker) obj4;
                pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnClickOnFindInStoreEvent.f61610a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                ((Function0) obj3).mo47invoke();
                ((Function1) obj2).invoke(PdpBottomSheetType.FindInStore.f61380a);
                return Unit.f71739a;
            default:
                PdpTracker pdpTracker4 = (PdpTracker) obj3;
                ((Function0) obj4).mo47invoke();
                pdpTracker4.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnSeeYourCartEvent.f61643a, pdpTracker4.f61586b, pdpTracker4.f61587c, pdpTracker4.d));
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ of0(LVModalBottomSheetState lVModalBottomSheetState, PrivacyViewModelImpl privacyViewModelImpl, NavHostController navHostController) {
        this.f76771b = 3;
        this.d = lVModalBottomSheetState;
        this.f76773e = privacyViewModelImpl;
        this.f76772c = navHostController;
    }

    public /* synthetic */ of0(Object obj, Object obj2, Object obj3, int i2) {
        this.f76771b = i2;
        this.f76772c = obj;
        this.d = obj2;
        this.f76773e = obj3;
    }
}
