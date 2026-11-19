package defpackage;

import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.material3.TooltipState;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation3.runtime.NavEntry;
import com.appsflyer.AppsFlyerLib;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.core.OutDateStyle;
import com.kizitonwose.calendar.data.MonthData;
import com.vuitton.android.data.repository.AppsFlyerRepositoryImpl;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLMultipleItemUiModel;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.databinding.ActivityAirportListBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.booking.BookingRoutes;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseListBottomSheet;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Airport;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.AbstractMap;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c1 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21021c;

    public /* synthetic */ c1(Object obj, int i2) {
        this.f21020b = i2;
        this.f21021c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List list;
        String strK;
        int i2 = this.f21020b;
        int i3 = 3;
        boolean z = false;
        size = 0;
        int size = 0;
        z = false;
        Object obj2 = this.f21021c;
        switch (i2) {
            case 0:
                final LvExoPlayer lvExoPlayer = (LvExoPlayer) obj2;
                int i4 = AICompanionOnboardingScreenKt.f52870b;
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lvExoPlayer.f50900a.release();
                    }
                };
            case 1:
                return obj == ((AbstractCollection) obj2) ? "(this Collection)" : String.valueOf(obj);
            case 2:
                AbstractMap abstractMap = (AbstractMap) obj2;
                Map.Entry entry = (Map.Entry) obj;
                AbstractMap.Companion companion = AbstractMap.INSTANCE;
                entry.getClass();
                StringBuilder sb = new StringBuilder();
                Object key = entry.getKey();
                sb.append(key == abstractMap ? "(this Map)" : String.valueOf(key));
                sb.append('=');
                Object value = entry.getValue();
                sb.append(value != abstractMap ? String.valueOf(value) : "(this Map)");
                return sb.toString();
            case 3:
                AccountActivationActivity accountActivationActivity = (AccountActivationActivity) obj2;
                int iIntValue = ((Integer) obj).intValue();
                AccountActivationActivity.Companion companion2 = AccountActivationActivity.r;
                AccountActivationViewModel accountActivationViewModel = (AccountActivationViewModel) accountActivationActivity.q.getF71699b();
                AccountActivationTrackingUiModel.Step step = (iIntValue == 0 || iIntValue != 1) ? AccountActivationTrackingUiModel.Step.PASSWORD : AccountActivationTrackingUiModel.Step.ACTIVATION_CODE;
                accountActivationViewModel.s8(new AccountActivationTrackingUiModel.CloseClick(step));
                accountActivationActivity.finish();
                return Unit.f71739a;
            case 4:
                AccountActivationViewModelImpl accountActivationViewModelImpl = (AccountActivationViewModelImpl) obj2;
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                FormPasswordValidationRules formPasswordValidationRules = accountActivationViewModelImpl.f53335c;
                PasswordUiModel passwordUiModel = (PasswordUiModel) accountActivationViewModelImpl.f53340j.getValue();
                w1 w1Var = new w1(accountActivationViewModelImpl, i3);
                formPasswordValidationRules.getClass();
                return FormPasswordValidationRules.a(w1Var, passwordUiModel, formSectionTypeUiModel);
            case 5:
                HistoryItem.HistoryProduct historyProduct = (HistoryItem.HistoryProduct) obj2;
                HistoryItem historyItem = (HistoryItem) obj;
                historyItem.getClass();
                if (historyItem instanceof HistoryItem.HistoryProduct) {
                    String str = ((HistoryItem.HistoryProduct) historyItem).f68186a;
                    String str2 = historyProduct.f68186a;
                    SkuId.Companion companion3 = SkuId.INSTANCE;
                    if (Intrinsics.c(str, str2)) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            case 6:
                HistoryItem historyItem2 = (HistoryItem) obj;
                historyItem2.getClass();
                return Boolean.valueOf(Intrinsics.c(historyItem2.getF68191a(), ((HistoryItem.HistoryTextResearch) obj2).f68191a));
            case 7:
                AddressBookActivity addressBookActivity = (AddressBookActivity) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                AddressBookActivity.Companion companion4 = AddressBookActivity.q;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    addressBookActivity.H().h8();
                }
                return Unit.f71739a;
            case 8:
                AirportListActivity airportListActivity = (AirportListActivity) obj2;
                AirportListActivity.Companion companion5 = AirportListActivity.r;
                ((View) obj).getClass();
                airportListActivity.I(airportListActivity.c());
                ActivityAirportListBinding activityAirportListBinding = airportListActivity.p;
                if (activityAirportListBinding != null) {
                    ContextExtKt.d(airportListActivity, activityAirportListBinding.d.getWindowToken());
                    return Unit.f71739a;
                }
                Intrinsics.h("binding");
                throw null;
            case 9:
                Airport airport = (Airport) obj;
                AirportListFragment.Companion companion6 = AirportListFragment.K;
                airport.getClass();
                return ((Boolean) ((AirportListFragment) obj2).J.getF71699b()).booleanValue() ? airport.d : airport.f67356c;
            case 10:
                float f2 = AndroidCursorHandle_androidKt.f5847a;
                ((SemanticsPropertyReceiver) obj).a(SelectionHandlesKt.f6431c, new SelectionHandleInfo(Handle.Cursor, ((OffsetProvider) obj2).a(), SelectionHandleAnchor.Middle, true, null));
                return Unit.f71739a;
            case 11:
                AppsFlyerRepositoryImpl appsFlyerRepositoryImpl = (AppsFlyerRepositoryImpl) obj2;
                AppsFlyerLib.getInstance().updateServerUninstallToken(appsFlyerRepositoryImpl.f47302a, (String) obj);
                appsFlyerRepositoryImpl.f47303b.getClass();
                return Unit.f71739a;
            case 12:
                AudioGuideActivity audioGuideActivity = (AudioGuideActivity) obj2;
                String str3 = (String) obj;
                AudioGuideActivity.Companion companion7 = AudioGuideActivity.r;
                if (str3 != null) {
                    audioGuideActivity.startActivity(ImmersiveArticleActivity.Companion.a(ImmersiveArticleActivity.H, audioGuideActivity, str3, null, null, null, null, 124));
                }
                audioGuideActivity.finish();
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(((AudioGuideUiModel) obj2).m.size(), 1));
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver2, new CollectionInfo(1, ((AvatarSectionUiModel) obj2).f52333b.size()));
                return Unit.f71739a;
            case 15:
                return Boolean.valueOf(Intrinsics.c(((NavEntry) obj).f18398b, ((NavEntry) obj2).f18398b));
            case 16:
                BaseListBottomSheet.Companion companion8 = BaseListBottomSheet.S;
                ((View) obj).getClass();
                ((BaseListBottomSheet) obj2).dismiss();
                return Unit.f71739a;
            case 17:
                final BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt$basicTextContextMenuProvider$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        BasicTextContextMenuProvider.SessionImpl sessionImpl = (BasicTextContextMenuProvider.SessionImpl) ((SnapshotMutableStateImpl) basicTextContextMenuProvider.f6147c).getF10755b();
                        if (sessionImpl != null) {
                            sessionImpl.close();
                        }
                    }
                };
            case 18:
                final TooltipState tooltipState = (TooltipState) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.material3.internal.BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        tooltipState.b();
                    }
                };
            case 19:
                TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                if (tryOnProductUiModel != null && (list = tryOnProductUiModel.f62188h) != null) {
                    size = list.size();
                }
                SemanticsPropertiesKt.f(semanticsPropertyReceiver3, new CollectionInfo(1, size));
                return Unit.f71739a;
            case 20:
                BeautyVtoViewModel beautyVtoViewModel = (BeautyVtoViewModel) obj2;
                List list2 = (List) obj;
                list2.getClass();
                beautyVtoViewModel.ta(null, false);
                beautyVtoViewModel.y6(list2);
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver4, new CollectionInfo(((BookingFormModuleDataUiModel.SingleChoice) obj2).f54525b.size(), 1));
                return Unit.f71739a;
            case 22:
                BookingRoutes.Reservation reservation = (BookingRoutes.Reservation) obj2;
                BookingExperienceViewModelImpl.Factory factory = (BookingExperienceViewModelImpl.Factory) obj;
                factory.getClass();
                String str4 = reservation.f54321a;
                String str5 = reservation.f54322b;
                return BookingExperienceViewModelImpl.Factory.a(factory, str4, str5 == null ? null : str5, null, reservation.f54323c, 4);
            case 23:
                BookingPassViewModelImpl.Factory factory2 = (BookingPassViewModelImpl.Factory) obj;
                factory2.getClass();
                return factory2.a(((BookingRoutes.Pass) obj2).f54318a);
            case 24:
                BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl = (BookingPersonalInfoViewModelImpl) obj2;
                int i5 = BookingPersonalInfoViewModelImpl$loadForm$1.WhenMappings.f54683a[((FormSectionTypeUiModel) obj).ordinal()];
                if (i5 == 2) {
                    return bookingPersonalInfoViewModelImpl.l.f67483j;
                }
                if (i5 != 3) {
                    return null;
                }
                return (String) bookingPersonalInfoViewModelImpl.m.getValue();
            case 25:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                PreBookViewState.Success success = (PreBookViewState.Success) ((PreBookViewState) obj2);
                SemanticsPropertiesKt.f(semanticsPropertyReceiver5, new CollectionInfo(success.f54829a.f54818b.size() + success.f54829a.f54817a.size(), 1));
                return Unit.f71739a;
            case 26:
                CalendarState calendarState = (CalendarState) obj2;
                int iIntValue2 = ((Integer) obj).intValue();
                CalendarState.Companion companion9 = CalendarState.f35926k;
                YearMonth yearMonthG = calendarState.g();
                DayOfWeek dayOfWeek = (DayOfWeek) ((SnapshotMutableStateImpl) calendarState.f35929c).getF10755b();
                OutDateStyle outDateStyle = (OutDateStyle) ((SnapshotMutableStateImpl) calendarState.d).getF10755b();
                yearMonthG.getClass();
                dayOfWeek.getClass();
                outDateStyle.getClass();
                YearMonth yearMonthPlusMonths = yearMonthG.plusMonths(iIntValue2);
                yearMonthPlusMonths.getClass();
                LocalDate localDateAtDay = yearMonthPlusMonths.atDay(1);
                localDateAtDay.getClass();
                DayOfWeek dayOfWeek2 = localDateAtDay.getDayOfWeek();
                dayOfWeek2.getClass();
                int iOrdinal = ((dayOfWeek2.ordinal() - dayOfWeek.ordinal()) + 7) % 7;
                int iLengthOfMonth = yearMonthPlusMonths.lengthOfMonth() + iOrdinal;
                int i6 = iLengthOfMonth % 7;
                int i7 = i6 != 0 ? 7 - i6 : 0;
                return new MonthData(yearMonthPlusMonths, iOrdinal, i7 + (outDateStyle != OutDateStyle.EndOfRow ? (6 - ((iLengthOfMonth + i7) / 7)) * 7 : 0)).g;
            case 27:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver6, 0);
                CarouselItemTitlesUiModel carouselItemTitlesUiModel = ((CarouselLMultipleItemUiModel) obj2).f50786b;
                strK = carouselItemTitlesUiModel != null ? CollectionsKt.K(ArraysKt.v(new String[]{carouselItemTitlesUiModel.f50784b, carouselItemTitlesUiModel.f50783a}), ", ", null, null, null, 62) : null;
                SemanticsPropertiesKt.i(semanticsPropertyReceiver6, strK != null ? strK : "");
                return Unit.f71739a;
            case 28:
                CarouselItemTitlesUiModel carouselItemTitlesUiModel2 = (CarouselItemTitlesUiModel) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver7, 0);
                strK = carouselItemTitlesUiModel2 != null ? CollectionsKt.K(ArraysKt.v(new String[]{carouselItemTitlesUiModel2.f50784b, carouselItemTitlesUiModel2.f50783a}), ", ", null, null, null, 62) : null;
                SemanticsPropertiesKt.i(semanticsPropertyReceiver7, strK != null ? strK : "");
                return Unit.f71739a;
            default:
                ((CatalogTracker) obj2).f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnCategoryScrollEvent(((Integer) obj).intValue())));
                return Unit.f71739a;
        }
    }
}
