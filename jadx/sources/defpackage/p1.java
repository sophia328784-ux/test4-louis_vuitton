package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.window.PopupPositionProvider;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionSearchBarKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideLanguageSelectorKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldBooleanKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaReasonItemComposableKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeColumnKt;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.components.precompliance.PrivacyPreComplianceComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailInformationKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCatalogUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78722c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78723e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78724f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f78725h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f78726i;

    public /* synthetic */ p1(Modifier modifier, OsaReasonsFormViewState osaReasonsFormViewState, Function1 function1, Function0 function0, boolean z, Function0 function2, int i2) {
        this.f78721b = 12;
        this.f78722c = modifier;
        this.f78725h = osaReasonsFormViewState;
        this.f78723e = function1;
        this.f78724f = function0;
        this.d = z;
        this.f78726i = function2;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78721b;
        int i3 = this.g;
        Object obj3 = this.f78723e;
        Object obj4 = this.f78726i;
        Object obj5 = this.f78724f;
        Object obj6 = this.f78725h;
        Object obj7 = this.f78722c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                AICompanionSearchBarKt.a((Modifier) obj7, (String) obj6, this.g, this.d, (Function0) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                AudioGuideLanguageSelectorKt.a((Modifier) obj7, (AudioGuideUiModel.AvailableLanguageUiModel) obj6, this.d, (List) obj4, (Function1) obj3, (Function0) obj5, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                BasicTooltipKt.b((PopupPositionProvider) obj7, (TooltipState) obj6, (CoroutineScope) obj5, this.d, (MutableState) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                ContextMenuUiKt.c((String) obj6, this.d, (ContextMenuColors) obj4, (Modifier) obj7, (Function3) obj3, (Function0) obj5, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                FormFieldBooleanKt.a((Modifier) obj7, (FormFieldUiModel) obj6, (FormFieldBooleanUiModel) obj5, this.d, (Function1) obj3, (LVColorScheme) obj4, (Composer) obj, iA5);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                IconButtonKt.b((Modifier) obj7, (Function0) obj5, this.d, (Shape) obj6, (IconButtonColors) obj4, (Function2) obj3, (Composer) obj, iA6);
                break;
            case 6:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(i3 | 1);
                InboxNotificationListScreenKt.c((Modifier) obj7, (InAppDispatch) obj5, (String) obj6, (String) obj4, (Date) obj3, this.d, (Composer) obj, iA7);
                break;
            case 7:
                ((Integer) obj2).getClass();
                int iA8 = RecomposeScopeImplKt.a(i3 | 1);
                LVSwipeToRevealKt.c((Modifier) obj7, (List) obj6, this.d, (Function0) obj5, (Function0) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, iA8);
                break;
            case 8:
                ((Integer) obj2).getClass();
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                int iA9 = RecomposeScopeImplKt.a(1572865);
                ((LVTextFieldInternal) obj4).f((Modifier) obj7, this.g, (String) obj6, this.d, (Function0) obj5, (ConfigurationTextField) obj3, (Composer) obj, iA9);
                break;
            case 9:
                ((Integer) obj2).getClass();
                int iA10 = RecomposeScopeImplKt.a(i3 | 1);
                NativeCartComposableKt.a((ContactUsUiModel) obj7, this.d, (LVModalBottomSheetState) obj6, (Function1) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, iA10);
                break;
            case 10:
                ((Integer) obj2).getClass();
                int iA11 = RecomposeScopeImplKt.a(1);
                NotificationsPreferencesComposableKt.b((NotificationsPreferencesViewModel) obj7, (Function0) obj5, (Function0) obj4, (Function0) obj6, (Function0) obj3, this.d, (Composer) obj, iA11, this.g);
                break;
            case 11:
                ((Integer) obj2).getClass();
                int iA12 = RecomposeScopeImplKt.a(i3 | 1);
                OsaContactFormBottomSheetScreenKt.b((Modifier) obj7, (InAppDispatch) obj4, this.d, (LocalDateTime) obj3, (String) obj6, (Function0) obj5, (Composer) obj, iA12);
                break;
            case 12:
                ((Integer) obj2).getClass();
                int iA13 = RecomposeScopeImplKt.a(i3 | 1);
                OsaReasonItemComposableKt.a((Modifier) obj7, (OsaReasonsFormViewState) obj6, (Function1) obj3, (Function0) obj5, this.d, (Function0) obj4, (Composer) obj, iA13);
                break;
            case 13:
                ((Integer) obj2).getClass();
                int iA14 = RecomposeScopeImplKt.a(1 | i3);
                PrivacyPreComplianceComposableKt.a((PrivacyViewModel) obj7, this.d, (Function0) obj5, (Function0) obj4, (Function0) obj6, (Function0) obj3, (Composer) obj, iA14);
                break;
            case 14:
                ((Integer) obj2).intValue();
                int iA15 = RecomposeScopeImplKt.a(1 | i3);
                RepairDetailInformationKt.a((AssessmentViewState) obj7, (CareServiceDetailUiModel) obj6, this.d, (Function1) obj3, (Function1) obj4, (Function0) obj5, (Composer) obj, iA15);
                break;
            case 15:
                ((Integer) obj2).getClass();
                int iA16 = RecomposeScopeImplKt.a(1 | i3);
                SliderKt.c((Modifier) obj7, (SliderState) obj6, this.d, (MutableInteractionSource) obj5, (Function3) obj4, (Function3) obj3, (Composer) obj, iA16);
                break;
            case 16:
                ((Integer) obj2).getClass();
                int iA17 = RecomposeScopeImplKt.a(1 | i3);
                StaggeredGridItemKt.b((Modifier) obj7, this.d, (ThemeItemUiModel) obj5, (String) obj6, (Function2) obj4, (Function2) obj3, (Composer) obj, iA17);
                break;
            case 17:
                ((Integer) obj2).getClass();
                int iA18 = RecomposeScopeImplKt.a(1 | i3);
                StoreModeLevel1ScreenKt.a((StoreModeCatalogUiModel) obj7, (WishlistSummaryUiModel) obj6, (Function1) obj3, (Function0) obj5, (Function0) obj4, this.d, (Composer) obj, iA18);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA19 = RecomposeScopeImplKt.a(i3 | 1);
                TableSizeColumnKt.a((Modifier) obj7, (Modifier) obj6, this.d, (Integer) obj5, (List) obj4, (Function1) obj3, (Composer) obj, iA19);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ p1(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldBooleanUiModel formFieldBooleanUiModel, boolean z, Function1 function1, LVColorScheme lVColorScheme, int i2) {
        this.f78721b = 4;
        this.f78722c = modifier;
        this.f78725h = formFieldUiModel;
        this.f78724f = formFieldBooleanUiModel;
        this.d = z;
        this.f78723e = function1;
        this.f78726i = lVColorScheme;
        this.g = i2;
    }

    public /* synthetic */ p1(Modifier modifier, AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel, boolean z, List list, Function1 function1, Function0 function0, int i2) {
        this.f78721b = 1;
        this.f78722c = modifier;
        this.f78725h = availableLanguageUiModel;
        this.d = z;
        this.f78726i = list;
        this.f78723e = function1;
        this.f78724f = function0;
        this.g = i2;
    }

    public /* synthetic */ p1(Modifier modifier, InAppDispatch inAppDispatch, String str, String str2, Date date, boolean z, int i2) {
        this.f78721b = 6;
        this.f78722c = modifier;
        this.f78724f = inAppDispatch;
        this.f78725h = str;
        this.f78726i = str2;
        this.f78723e = date;
        this.d = z;
        this.g = i2;
    }

    public /* synthetic */ p1(Modifier modifier, InAppDispatch inAppDispatch, boolean z, LocalDateTime localDateTime, String str, Function0 function0, int i2) {
        this.f78721b = 11;
        this.f78722c = modifier;
        this.f78726i = inAppDispatch;
        this.d = z;
        this.f78723e = localDateTime;
        this.f78725h = str;
        this.f78724f = function0;
        this.g = i2;
    }

    public /* synthetic */ p1(Modifier modifier, Object obj, boolean z, Object obj2, Object obj3, Function function, int i2, int i3) {
        this.f78721b = i3;
        this.f78722c = modifier;
        this.f78725h = obj;
        this.d = z;
        this.f78724f = obj2;
        this.f78726i = obj3;
        this.f78723e = function;
        this.g = i2;
    }

    public /* synthetic */ p1(Modifier modifier, String str, int i2, boolean z, Function0 function0, Function0 function1, Function1 function2, int i3) {
        this.f78721b = 0;
        this.f78722c = modifier;
        this.f78725h = str;
        this.g = i2;
        this.d = z;
        this.f78724f = function0;
        this.f78726i = function1;
        this.f78723e = function2;
    }

    public /* synthetic */ p1(Modifier modifier, Function0 function0, boolean z, Shape shape, IconButtonColors iconButtonColors, Function2 function2, int i2) {
        this.f78721b = 5;
        this.f78722c = modifier;
        this.f78724f = function0;
        this.d = z;
        this.f78725h = shape;
        this.f78726i = iconButtonColors;
        this.f78723e = function2;
        this.g = i2;
    }

    public /* synthetic */ p1(Modifier modifier, boolean z, ThemeItemUiModel themeItemUiModel, String str, Function2 function2, Function2 function3, int i2) {
        this.f78721b = 16;
        this.f78722c = modifier;
        this.d = z;
        this.f78724f = themeItemUiModel;
        this.f78725h = str;
        this.f78726i = function2;
        this.f78723e = function3;
        this.g = i2;
    }

    public /* synthetic */ p1(PopupPositionProvider popupPositionProvider, TooltipState tooltipState, CoroutineScope coroutineScope, boolean z, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f78721b = 2;
        this.f78722c = popupPositionProvider;
        this.f78725h = tooltipState;
        this.f78724f = coroutineScope;
        this.d = z;
        this.f78726i = mutableState;
        this.f78723e = composableLambdaImpl;
        this.g = i2;
    }

    public /* synthetic */ p1(LVTextFieldInternal lVTextFieldInternal, Modifier modifier, int i2, String str, boolean z, Function0 function0, ConfigurationTextField configurationTextField, int i3) {
        this.f78721b = 8;
        this.f78726i = lVTextFieldInternal;
        this.f78722c = modifier;
        this.g = i2;
        this.f78725h = str;
        this.d = z;
        this.f78724f = function0;
        this.f78723e = configurationTextField;
    }

    public /* synthetic */ p1(ContactUsUiModel contactUsUiModel, boolean z, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f78721b = 9;
        this.f78722c = contactUsUiModel;
        this.d = z;
        this.f78725h = lVModalBottomSheetState;
        this.f78723e = function1;
        this.f78724f = function0;
        this.f78726i = function2;
        this.g = i2;
    }

    public /* synthetic */ p1(AssessmentViewState assessmentViewState, CareServiceDetailUiModel careServiceDetailUiModel, boolean z, Function1 function1, Function1 function2, Function0 function0, int i2) {
        this.f78721b = 14;
        this.f78722c = assessmentViewState;
        this.f78725h = careServiceDetailUiModel;
        this.d = z;
        this.f78723e = function1;
        this.f78726i = function2;
        this.f78724f = function0;
        this.g = i2;
    }

    public /* synthetic */ p1(NotificationsPreferencesViewModel notificationsPreferencesViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, boolean z, int i2, int i3) {
        this.f78721b = 10;
        this.f78722c = notificationsPreferencesViewModel;
        this.f78724f = function0;
        this.f78726i = function1;
        this.f78725h = function2;
        this.f78723e = function3;
        this.d = z;
        this.g = i3;
    }

    public /* synthetic */ p1(PrivacyViewModel privacyViewModel, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i2) {
        this.f78721b = 13;
        this.f78722c = privacyViewModel;
        this.d = z;
        this.f78724f = function0;
        this.f78726i = function1;
        this.f78725h = function2;
        this.f78723e = function3;
        this.g = i2;
    }

    public /* synthetic */ p1(StoreModeCatalogUiModel storeModeCatalogUiModel, WishlistSummaryUiModel wishlistSummaryUiModel, Function1 function1, Function0 function0, Function0 function2, boolean z, int i2) {
        this.f78721b = 17;
        this.f78722c = storeModeCatalogUiModel;
        this.f78725h = wishlistSummaryUiModel;
        this.f78723e = function1;
        this.f78724f = function0;
        this.f78726i = function2;
        this.d = z;
        this.g = i2;
    }

    public /* synthetic */ p1(String str, boolean z, ContextMenuColors contextMenuColors, Modifier modifier, Function3 function3, Function0 function0, int i2) {
        this.f78721b = 3;
        this.f78725h = str;
        this.d = z;
        this.f78726i = contextMenuColors;
        this.f78722c = modifier;
        this.f78723e = function3;
        this.f78724f = function0;
        this.g = i2;
    }
}
