package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.window.DialogProperties;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.navigation3.runtime.DecoratedNavEntriesKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimationState;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.sightcall.core.consent.compose.ConsentDeclineViewKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.designkit.ui.theme.molecules.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.templates.bottomsheet.BottomSheetIconScopeInstance;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentCareServiceItemKt;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentStoreAppointmentItemKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.account.inbox.components.NotificationDialogKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideTrackItemKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleSlotChipsKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComponentsKt;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartOrderDetailKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.certificates.components.transfer.CertificateTransferScreenKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.model.CertificateTransferUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesViewState;
import com.vuitton.android.presentation.screen.feed.components.card.FeedHighLightCardKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.options.components.OptionsComposableKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.CancelProductCustomizationBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreRowKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsBffScreenKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69836c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69837e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69838f;
    public final /* synthetic */ Object g;

    public /* synthetic */ i1(BottomSheetIconScopeInstance bottomSheetIconScopeInstance, Modifier modifier, LottieComposition lottieComposition, LottieAnimationState lottieAnimationState, int i2) {
        this.f69835b = 7;
        ContentScale.Companion companion = ContentScale.Companion.f9448a;
        this.f69837e = bottomSheetIconScopeInstance;
        this.f69838f = modifier;
        this.g = lottieComposition;
        this.f69836c = lottieAnimationState;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69835b;
        int i3 = this.d;
        Object obj3 = this.f69838f;
        Object obj4 = this.f69836c;
        Object obj5 = this.g;
        Object obj6 = this.f69837e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionOnboardingScreenKt.c((LazyItemScope) obj6, (LvExoPlayer) obj3, (String) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AlertDialogKt.b((Function0) obj4, (Modifier) obj6, (DialogProperties) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AudioGuideTrackItemKt.a((Modifier) obj6, (AudioGuideUiModel.TrackUiModel) obj3, (AudioGuideUiModel.AudioGuideColorsUiModel) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                BasicTextContextMenuProviderKt.a((Modifier) obj6, (ProvidableCompositionLocal) obj3, (Function5) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                BasicTooltipKt.c((TooltipState) obj6, (MutableState) obj3, (Modifier) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                BookingDetailsScreenKt.f((Modifier) obj6, (List) obj3, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).intValue();
                BookingModuleSlotChipsKt.b((String) obj5, (List) obj6, (String) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 7:
                ContentScale.Companion companion = ContentScale.Companion.f9448a;
                ((Integer) obj2).getClass();
                ((BottomSheetIconScopeInstance) obj6).b((Modifier) obj3, (LottieComposition) obj5, (LottieAnimationState) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).intValue();
                CancelProductCustomizationBottomSheetKt.a((String) obj5, (String) obj6, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                CancellationReasonsBffScreenKt.a((Function2) obj6, (CancellationReasonsBffViewState) obj3, (Function1) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).intValue();
                CertificateTransferScreenKt.b((SnackbarHostState) obj6, (CertificateTransferUiModel) obj3, (Function1) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj6).e(this.f69838f, this.g, this.f69836c, (Composer) obj, RecomposeScopeImplKt.a(i3) | 1);
                return Unit.f71739a;
            case 12:
                int iIntValue = ((Integer) obj2).intValue();
                return ConsentDeclineViewKt.ConsentDeclineView$lambda$1((Context) obj6, (String) obj5, (String) obj3, (Function0) obj4, this.d, (Composer) obj, iIntValue);
            case 13:
                ((Integer) obj2).getClass();
                DecoratedNavEntriesKt.a((ArrayList) obj6, (List) obj3, (Set) obj5, (Set) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                DistantRepairInitiateComponentKt.d((DistantRepairFormViewState) obj6, (DistantRepairContactMethod) obj3, (Function0) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).intValue();
                EditPasswordComposableKt.b((MyInformationViewState) obj6, (SnackbarHostState) obj3, (Function0) obj4, (Function2) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).intValue();
                ExclusiveSalesComposableKt.b((ExclusiveSalesViewState) obj6, (SnackbarHostState) obj3, (Function0) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                FeedHighLightCardKt.a((Modifier) obj6, (FeedTab) obj3, (EditorialModuleUiModel.HighLightUiModel) obj5, (LVColorScheme) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).intValue();
                FindInStoreRowKt.b((StoreUiModel) obj6, (Function1) obj3, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                HotContentCareServiceItemKt.d((Modifier) obj6, (HotContentItemUiModel.CareService) obj3, (LVColorScheme) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                HotContentStoreAppointmentItemKt.a((Modifier) obj6, (HotContentItemUiModel.StoreAppointment) obj3, (LVColorScheme) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                LVCalendarKt.e((Modifier) obj6, (CalendarMonth) obj3, (Locale) obj5, (List) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                LVNotificationKt.b((String) obj5, (String) obj6, (Function0) obj4, (Bitmap) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 23:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48685a;
                int iA = RecomposeScopeImplKt.a(24577);
                ((LVTextFieldInternal) obj6).b((Modifier) obj3, this.d, (ConfigurationSearchBar) obj5, (Function0) obj4, composer, iA);
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                LifecycleEffectKt.d((Boolean) obj6, this.f69838f, (LifecycleOwner) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                ModelSizeSliderKt.a(iA2, (PagerState) obj6, (Composer) obj, (Modifier) obj3, (List) obj5, (CoroutineScope) obj4);
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                NativeCartComponentsKt.a((Modifier) obj6, (CartItemUiModel) obj3, (Function0) obj4, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                NativeCartOrderDetailKt.b((Modifier) obj6, (Modifier) obj3, (String) obj5, (String) obj4, (Composer) obj, RecomposeScopeImplKt.a(1), this.d);
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                NotificationDialogKt.a((Modifier) obj6, (InboxNotificationUiModel) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).intValue();
                OptionsComposableKt.a((SharedFlow) obj6, (Function1) obj3, (Function1) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ i1(Modifier modifier, Modifier modifier2, String str, String str2, int i2, int i3) {
        this.f69835b = 27;
        this.f69837e = modifier;
        this.f69838f = modifier2;
        this.g = str;
        this.f69836c = str2;
        this.d = i3;
    }

    public /* synthetic */ i1(LVTextFieldInternal lVTextFieldInternal, Modifier modifier, int i2, ConfigurationSearchBar configurationSearchBar, Function0 function0, int i3) {
        this.f69835b = 23;
        this.f69837e = lVTextFieldInternal;
        this.f69838f = modifier;
        this.d = i2;
        this.g = configurationSearchBar;
        this.f69836c = function0;
    }

    public /* synthetic */ i1(Context context, String str, String str2, Function0 function0, int i2) {
        this.f69835b = 12;
        this.f69837e = context;
        this.g = str;
        this.f69838f = str2;
        this.f69836c = function0;
        this.d = i2;
    }

    public /* synthetic */ i1(Object obj, Object obj2, Object obj3, Object obj4, int i2, int i3) {
        this.f69835b = i3;
        this.f69837e = obj;
        this.f69838f = obj2;
        this.g = obj3;
        this.f69836c = obj4;
        this.d = i2;
    }

    public /* synthetic */ i1(Object obj, Object obj2, Function0 function0, Function function, int i2, int i3) {
        this.f69835b = i3;
        this.f69837e = obj;
        this.f69838f = obj2;
        this.f69836c = function0;
        this.g = function;
        this.d = i2;
    }

    public /* synthetic */ i1(String str, String str2, Function0 function0, Object obj, int i2, int i3) {
        this.f69835b = i3;
        this.g = str;
        this.f69837e = str2;
        this.f69836c = function0;
        this.f69838f = obj;
        this.d = i2;
    }

    public /* synthetic */ i1(String str, List list, String str2, Function1 function1, int i2) {
        this.f69835b = 6;
        this.g = str;
        this.f69837e = list;
        this.f69838f = str2;
        this.f69836c = function1;
        this.d = i2;
    }

    public /* synthetic */ i1(Function0 function0, Modifier modifier, DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f69835b = 1;
        this.f69836c = function0;
        this.f69837e = modifier;
        this.f69838f = dialogProperties;
        this.g = composableLambdaImpl;
        this.d = i2;
    }
}
