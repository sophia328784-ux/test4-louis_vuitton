package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.broadcast.ShareBroadcastReceiver;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.model.common.CtaUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import com.vuitton.android.presentation.screen.options.OptionsRoutes;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutOthers;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.PdpRoutes;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPByCategoryDelegate;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rh0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79528c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rh0(NavHostController navHostController, Function1 function1) {
        this.f79527b = 8;
        this.d = navHostController;
        this.f79528c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String str;
        List list;
        int i2 = this.f79527b;
        PLPTrackingUiModel.SearchOpenedEvent searchOpenedEvent = PLPTrackingUiModel.SearchOpenedEvent.f62898a;
        String str2 = "";
        Object obj = this.d;
        Object obj2 = this.f79528c;
        switch (i2) {
            case 0:
                ((OptOutPrivacyMenuViewModel) obj2).H2(OptOutPrivacyMenuTrackingUiModel.OnOptOutOthersChoiceEvent.f59979a);
                NavController.d((NavHostController) obj, OptOutOthers.INSTANCE, null, 6);
                return Unit.f71739a;
            case 1:
                LVModalBottomSheetState.Companion companion = LVModalBottomSheetState.d;
                ((LVModalBottomSheetState) obj2).b(new k40(28));
                ((OptionsViewModel) obj).q();
                return Unit.f71739a;
            case 2:
                OptionsViewModel optionsViewModel = (OptionsViewModel) obj;
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) obj2);
                if (appCompatActivityB != null) {
                    String strVb = optionsViewModel.Vb();
                    strVb.getClass();
                    String string = appCompatActivityB.getString(R.string.share_app_sharing_text);
                    string.getClass();
                    String string2 = appCompatActivityB.getString(R.string.share_app_label);
                    ShareBroadcastReceiver.Companion companion2 = ShareBroadcastReceiver.d;
                    Context applicationContext = appCompatActivityB.getApplicationContext();
                    applicationContext.getClass();
                    companion2.getClass();
                    Intent intent = new Intent(applicationContext, (Class<?>) ShareBroadcastReceiver.class);
                    intent.putExtra("PAGE_NAME", "LVPass/ShareApp");
                    intent.putExtra("PAGE_POSITION", "Share");
                    ShareUtilsKt.b(appCompatActivityB, string, string2, intent, strVb);
                }
                optionsViewModel.U0(OptionsTrackingUiModel.ShareScreen.f59855a);
                return Unit.f71739a;
            case 3:
                ((NotificationsPreferencesViewModel) obj2).O7();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 4:
                ((NotificationsPreferencesViewModel) obj2).m8();
                NavController.d((NavHostController) obj, OptionsRoutes.Notifications.INSTANCE, null, 6);
                return Unit.f71739a;
            case 5:
                Function2 function2 = (Function2) obj2;
                TransactionUiModel transactionUiModel = ((OrderViewState) obj).f60376c;
                String str3 = transactionUiModel != null ? transactionUiModel.d : null;
                if (str3 == null) {
                    str3 = "";
                }
                String str4 = transactionUiModel != null ? transactionUiModel.f60421a : null;
                function2.invoke(str3, str4 != null ? str4 : "");
                return Unit.f71739a;
            case 6:
                ((Function1) obj2).invoke(((ProductExchangeCategoryUiModel) obj).f60388e);
                return Unit.f71739a;
            case 7:
                Function1 function1 = (Function1) obj2;
                CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) CollectionsKt.N(((OrderReturnOrExchangeViewState) obj).f60315k);
                if (categoryOptionUiModel != null && (str = categoryOptionUiModel.f60229b) != null) {
                    str2 = str;
                }
                function1.invoke(str2);
                return Unit.f71739a;
            case 8:
                Function1 function3 = (Function1) obj2;
                if (!((NavHostController) obj).e()) {
                    function3.invoke(Boolean.FALSE);
                }
                return Unit.f71739a;
            case 9:
                NavBackStack navBackStack = (NavBackStack) obj;
                OsaActivity.Companion companion3 = OsaActivity.u;
                ((OsaLocationFormViewModel) ((OsaActivity) obj2).q.getF71699b()).o8();
                OsaRoutes.List list2 = OsaRoutes.List.INSTANCE;
                if (navBackStack.contains(list2)) {
                    Nav3ExtKt.c(navBackStack, list2, false);
                } else {
                    Nav3ExtKt.c(navBackStack, OsaRoutes.ContactForm.INSTANCE, true);
                    navBackStack.a(list2);
                }
                return Unit.f71739a;
            case 10:
                ((OsaListViewModel) obj2).o(OsaTrackingUiModel.BookAppointmentEvent.f60986a);
                ((Function0) ((MutableState) obj).getF10755b()).mo47invoke();
                return Unit.f71739a;
            case 11:
                ((Function1) obj2).invoke(((CtaUiModel) obj).f51788c);
                return Unit.f71739a;
            case 12:
                ((OsaLocationFormViewModel) obj2).I0(new AuthenticationTrackingUiModel.RegisterClickEvent(true));
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 13:
                NavBackStack navBackStack2 = (NavBackStack) obj;
                ((OsaLocationFormViewModel) obj2).I0(new AuthenticationTrackingUiModel.ContinueAsGuestClickedEvent(true));
                OsaRoutes.LocationForm locationForm = OsaRoutes.LocationForm.INSTANCE;
                Nav3ExtKt.c(navBackStack2, locationForm, true);
                navBackStack2.a(locationForm);
                return Unit.f71739a;
            case 14:
                String str5 = (String) obj;
                String str6 = (String) ((PLPByCategoryDelegate) obj2).f63204b.getValue();
                return str6 == null ? str5 : str6;
            case 15:
                ((PLPCategoryViewModel) obj2).c();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 16:
                Context context = (Context) obj;
                ((PLPCategoryViewModel) obj2).O0(searchOpenedEvent);
                context.startActivity(SearchActivity.Companion.a(SearchActivity.y, context));
                return Unit.f71739a;
            case 17:
                ((Function1) obj2).invoke((PlpSectionUiModel.HalfEdito) obj);
                return Unit.f71739a;
            case 18:
                ((Function1) obj2).invoke((PlpSectionUiModel.ProductFullscreen) obj);
                return Unit.f71739a;
            case 19:
                ((Function1) obj2).invoke((PlpSectionUiModel.ProductSlider) obj);
                return Unit.f71739a;
            case 20:
                ((AICompanionTracker) obj2).b(ScreenOrigin.PLP);
                ((MutableState) obj).setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 21:
                Context context2 = (Context) obj;
                ((PLPViewModel) obj2).O0(searchOpenedEvent);
                context2.startActivity(SearchActivity.Companion.a(SearchActivity.y, context2));
                return Unit.f71739a;
            case 22:
                Function0 function0 = (Function0) obj;
                if (((PLPStoreModeViewModel) obj2).q0()) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 23:
                ((Function1) obj2).invoke(StoreModeContentUiModel.b().get(((SegmentedControlState) obj).a()));
                return Unit.f71739a;
            case 24:
                ((PSPViewModel) obj2).l("", null);
                ((QuickAccessFiltersViewModel) obj).l0(new QuickAccessFiltersTrackingUiModel.ClearAllFiltersEvent(QafSource.SEARCH));
                return Unit.f71739a;
            case 25:
                Function0 function4 = (Function0) obj;
                if (((PSPStoreModeViewModel) obj2).q0()) {
                    function4.mo47invoke();
                }
                return Unit.f71739a;
            case 26:
                NavBackStack navBackStack3 = (NavBackStack) obj2;
                PdpActivity.Companion companion4 = PdpActivity.D;
                ProductUiModel productUiModel = ((PdpViewState) ((MutableState) obj).getF10755b()).f61566b;
                if (productUiModel != null && (list = productUiModel.Z) != null) {
                    List list3 = list;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            if (CollectionExtKt.a(((ModelSizeVariationUiModel) it.next()).g)) {
                                navBackStack3.a(PdpRoutes.ContextualSize.INSTANCE);
                            }
                        }
                    }
                }
                return Unit.f71739a;
            case 27:
                PdpActivity.Companion companion5 = PdpActivity.D;
                ((PdpActivity) obj2).J((ProductUiModel) obj);
                return Unit.f71739a;
            case 28:
                PdpActivity pdpActivity = (PdpActivity) obj2;
                PdpTracker pdpTracker = (PdpTracker) obj;
                PdpActivity.Companion companion6 = PdpActivity.D;
                ProductUiModel productUiModel2 = ((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b;
                String str7 = productUiModel2 != null ? productUiModel2.t0 : null;
                if (str7 != null) {
                    ShareUtilsKt.c(pdpActivity, str7, null, 28);
                }
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnShareOnScreenshotEvent.f61646a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                return Unit.f71739a;
            default:
                ((Function1) obj2).invoke((PdpBottomSheetType.Permissions) obj);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ rh0(Object obj, Object obj2, int i2) {
        this.f79527b = i2;
        this.f79528c = obj;
        this.d = obj2;
    }
}
