package defpackage;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.DateInputValidator;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.input.TextFieldValue;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.core.OutDateStyle;
import com.powerfront.insidewebsdkandroid.InsideClient;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.screen.feed.components.c;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleBannerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleCtaUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.FindInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PSPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.DayOfWeek;
import java.time.YearMonth;
import java.util.Locale;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yh implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81364c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81366f;
    public final /* synthetic */ Object g;

    public /* synthetic */ yh(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2) {
        this.f81363b = i2;
        this.f81364c = obj;
        this.d = obj2;
        this.f81365e = obj3;
        this.f81366f = obj4;
        this.g = obj5;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Integer numValueOf;
        Object obj;
        ContributionLinkUiModel contributionLinkUiModel;
        int i2 = this.f81363b;
        String str = null;
        Object obj2 = this.g;
        Object obj3 = this.f81366f;
        Object obj4 = this.f81365e;
        Object obj5 = this.d;
        Object obj6 = this.f81364c;
        switch (i2) {
            case 0:
                CalendarEventUiModel calendarEventUiModel = (CalendarEventUiModel) obj6;
                FeedTracker feedTracker = (FeedTracker) obj5;
                FeedTab feedTab = (FeedTab) obj4;
                c cVar = (c) obj3;
                Function0 function0 = (Function0) obj2;
                if (Intrinsics.c(calendarEventUiModel.f51773j, Boolean.TRUE)) {
                    feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnHitRemoveFromCalendarEvent(feedTab, calendarEventUiModel.f51766a)));
                    cVar.mo47invoke();
                } else {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 1:
                return new CalendarState((YearMonth) obj6, (YearMonth) obj5, (DayOfWeek) obj4, (YearMonth) obj3, (OutDateStyle) obj2, null);
            case 2:
                String str2 = (String) obj6;
                String str3 = (String) obj5;
                String str4 = (String) obj4;
                ChatTrackerImpl chatTrackerImpl = (ChatTrackerImpl) obj3;
                InsideClient insideClient = chatTrackerImpl.f65891b;
                Logger logger = chatTrackerImpl.f65890a;
                String str5 = (String) obj2;
                int i3 = ChatTrackerImpl.d;
                if (StringsKt.w(str2) && StringsKt.w(str3) && StringsKt.w(str4)) {
                    logger.getClass();
                    insideClient.n("unknown", "unknown", MapsKt.e(new Pair("language", str5)));
                } else {
                    logger.getClass();
                    insideClient.n(str2, str3, MapsKt.e(new Pair("email", str4), new Pair("salesforce_id", str4), new Pair("language", str5)));
                }
                return Unit.f71739a;
            case 3:
                DateInputValidator dateInputValidator = (DateInputValidator) obj6;
                CalendarModel calendarModel = (CalendarModel) obj5;
                DateInputFormat dateInputFormat = (DateInputFormat) obj4;
                Locale locale = (Locale) obj3;
                MutableState mutableState = (MutableState) obj2;
                PaddingValuesImpl paddingValuesImpl = DateInputKt.f6732a;
                return SnapshotStateKt.g(((TextFieldValue) mutableState.getF10755b()).f10840a.f10420c.length() > 0 ? dateInputValidator.a(calendarModel.i(((TextFieldValue) mutableState.getF10755b()).f10840a.f10420c, dateInputFormat.f7600c, locale), locale) : "");
            case 4:
                InAppDispatch inAppDispatch = (InAppDispatch) obj6;
                Function1 function1 = (Function1) obj5;
                InAppDispatch inAppDispatch2 = (InAppDispatch) obj4;
                Function1 function2 = (Function1) obj3;
                Function1 function3 = (Function1) obj2;
                if (inAppDispatch == null) {
                    function1.invoke(inAppDispatch2);
                } else if (!Intrinsics.c(inAppDispatch2, inAppDispatch)) {
                    if (((Boolean) function2.invoke(inAppDispatch2)).booleanValue()) {
                        function3.invoke(inAppDispatch2);
                    } else {
                        function1.invoke(inAppDispatch2);
                    }
                }
                return Unit.f71739a;
            case 5:
                MutableState mutableState2 = (MutableState) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                MutableState mutableState4 = (MutableState) obj4;
                MutableState mutableState5 = (MutableState) obj3;
                Function2 function4 = (Function2) obj2;
                String str6 = (String) mutableState2.getF10755b();
                mutableState3.setValue((str6 == null || StringsKt.w(str6)) ? Integer.valueOf(R.string.required_field) : null);
                String str7 = (String) mutableState4.getF10755b();
                if (str7 == null || StringsKt.w(str7)) {
                    numValueOf = Integer.valueOf(R.string.restitution_date);
                } else {
                    numValueOf = Intrinsics.c((String) mutableState2.getF10755b(), (String) mutableState4.getF10755b()) ? Integer.valueOf(R.string.mylv_myprofile_myinfos_logininformation_editpassword_identical_error) : null;
                }
                mutableState5.setValue(numValueOf);
                String str8 = (String) mutableState2.getF10755b();
                if (str8 == null || !(!StringsKt.w(str8))) {
                    str8 = null;
                }
                String str9 = (String) mutableState4.getF10755b();
                if (str9 != null && (!StringsKt.w(str9))) {
                    str = str9;
                }
                Pair pair = new Pair(str8, str);
                Object obj7 = pair.f71705b;
                if (obj7 != null && (obj = pair.f71706c) != null) {
                    function4.invoke((String) obj7, (String) obj);
                }
                return Unit.f71739a;
            case 6:
                FindInStoreViewModel findInStoreViewModel = (FindInStoreViewModel) obj5;
                ((Function2) obj6).invoke(new ty(findInStoreViewModel, 0), new m8((LVModalBottomSheetState) obj3, (MutableState) obj2, 3));
                findInStoreViewModel.s6(new FindInStoreTrackingUiModel.ClickOnUseCurrentLocationEvent((String) obj4, null));
                return Unit.f71739a;
            case 7:
                ((Function1) obj6).invoke(((ImmersiveArticleViewState) ((MutableState) obj2).getF10755b()).d.f61746b);
                ((ImmersiveArticleViewModel) obj5).U8(new ImmersiveArticleTrackingUiModel.ShareOnScreenshotEvent((String) obj4, (ImmersiveArticleType) obj3));
                return Unit.f71739a;
            case 8:
                Function1 function5 = (Function1) obj5;
                String str10 = (String) obj4;
                ImmersiveArticleType immersiveArticleType = (ImmersiveArticleType) obj3;
                Function1 function6 = (Function1) obj2;
                ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel = ((ImmersiveArticleBannerUiModel) obj6).f58647c;
                if (immersiveArticleCtaUiModel != null && (contributionLinkUiModel = immersiveArticleCtaUiModel.f58649b) != null) {
                    function5.invoke(new ImmersiveArticleTrackingUiModel.StickyBannerCtaClickEvent(str10, immersiveArticleType));
                    function6.invoke(new ImmersiveArticleNavigationType.OnContributionLinkClick(contributionLinkUiModel));
                }
                return Unit.f71739a;
            case 9:
                PLPStoreModeViewModel pLPStoreModeViewModel = (PLPStoreModeViewModel) obj6;
                ProductFilterViewModel productFilterViewModel = (ProductFilterViewModel) obj5;
                String str11 = (String) obj4;
                MutableState mutableState6 = (MutableState) obj3;
                MutableState mutableState7 = (MutableState) obj2;
                if (pLPStoreModeViewModel.q0()) {
                    String strD0 = ((PLPStoreModeViewState) mutableState6.getF10755b()).f65037a == StoreModeContentUiModel.STORE ? pLPStoreModeViewModel.d0() : null;
                    pLPStoreModeViewModel.O0(PLPTrackingUiModel.FilterClickedEvent.f62887a);
                    productFilterViewModel.Cc(new ProductFilterTrackingUiModel.OnFiltersOpenedEvent(str11));
                    String str12 = ((StoreModePLPFiltersViewState) mutableState7.getF10755b()).f65033b;
                    productFilterViewModel.yc(str12 == null ? "" : str12, ((StoreModePLPFiltersViewState) mutableState7.getF10755b()).f65034c, null, strD0, false);
                }
                return Unit.f71739a;
            default:
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) obj6;
                ProductFilterViewModel productFilterViewModel2 = (ProductFilterViewModel) obj5;
                MutableState mutableState8 = (MutableState) obj3;
                MutableState mutableState9 = (MutableState) obj2;
                String strD1 = ((PLPStoreModeViewState) ((MutableState) obj4).getF10755b()).f65037a == StoreModeContentUiModel.STORE ? pSPStoreModeViewModel.d0() : null;
                pSPStoreModeViewModel.Wa(PSPTrackingUiModel.FilterClick.f62909a);
                productFilterViewModel2.Cc(new ProductFilterTrackingUiModel.OnFiltersOpenedEvent(null));
                String str13 = ((PSPViewState) mutableState8.getF10755b()).f63014a;
                productFilterViewModel2.yc(((StoreModePLPFiltersViewState) mutableState9.getF10755b()).f65033b, ((StoreModePLPFiltersViewState) mutableState9.getF10755b()).f65034c, str13 == null ? "" : str13, strD1, true);
                return Unit.f71739a;
        }
    }
}
