package defpackage;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.text.AnnotatedStringResolveInlineContentKt;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.molecules.SnackbarConfiguration;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressEmptyScreenKt;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeRegisterPasswordCheckKt;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordValidationState;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleHeaderKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.cart.CommercialNotification;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.feed.components.FeedForYouLoadingScreenKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleAssetViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupProductUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyAddToCartBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt;
import com.vuitton.android.presentation.screen.reinsurance.components.ReinsuranceBottomSheetKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.AssessmentUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g2 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f69254c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69255e;

    public /* synthetic */ g2(int i2, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        this.f69253b = 19;
        this.d = lazyLayoutItemProvider;
        this.f69254c = i2;
        this.f69255e = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long j2;
        int i2 = this.f69253b;
        int i3 = this.f69254c;
        Object obj3 = this.f69255e;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                LVColorScheme lVColorScheme = (LVColorScheme) obj4;
                String str = (String) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("AccessibilityArrowButton$lambda$1"), LVAppDesignKitTheme.d(composer).f48390j);
                    Painter painterA = PainterResources_androidKt.a(i3, composer, 0);
                    int i4 = AccessibilityPagerButtonsKt.WhenMappings.f50938a[lVColorScheme.ordinal()];
                    if (i4 == 1) {
                        composer.L(1935317181);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                        composer.F();
                    } else {
                        if (i4 != 2) {
                            throw o60.v(composer, 1935314430);
                        }
                        composer.L(1935320151);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                        composer.F();
                    }
                    IconKt.a(painterA, str, modifierO, j2, composer, 8, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.k(i3, RecomposeScopeImplKt.a(1), (Composer) obj, (Modifier) obj4, (Function0) obj3);
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).intValue();
                AddressEmptyScreenKt.a((Function2) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).intValue();
                AnnotatedStringResolveInlineContentKt.a((AnnotatedString) obj4, (List) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.a((Modifier) obj4, (BeautyAddToCartUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).intValue();
                BookingModuleHeaderKt.a((Modifier) obj4, (BookingFormModuleUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                CanvasKt.a((Modifier) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                Regex regex = CertificateFormField.l;
                ((CertificateFormField) obj4).d((Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).intValue();
                CertificateListItemsKt.e((String) obj3, (CertificateStatusUiModel) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).intValue();
                CollapsingDetailListKt.d((PanelInfoHtmlItem) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj4).b(obj3, (Composer) obj, RecomposeScopeImplKt.a(i3) | 1);
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).intValue();
                CompositionLocalKt.a((ProvidedValue) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                CompositionLocalKt.b((ProvidedValue[]) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                DatePickerKt.l((DatePickerColors) obj4, (CalendarModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                FeedForYouLoadingScreenKt.a((String) obj3, (String) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).intValue();
                HandleNotificationsPermissionStateKt.a((PermissionsViewModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                ImmersiveArticleAssetViewKt.a((AssetArticleSectionUiModel) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                LVSnackbarKt.c((Modifier) obj4, (SnackbarHostState) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).intValue();
                LVSnackbarKt.d((SnackbarData) obj4, (SnackbarConfiguration) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 19:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) obj4;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    lazyLayoutItemProvider.i(i3, obj3, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).intValue();
                NativeCartBottomSheetsKt.a((CommercialNotification) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                NativeRegisterPasswordCheckKt.b((Modifier) obj4, (PasswordValidationState) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), i3);
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).intValue();
                OrderDetailScreenKt.j((OrderViewState) obj4, (TransactionItemUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                OrderExchangeReviewScreenKt.b((ExchangeSetupProductUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                ((PagerLazyLayoutItemProvider) obj4).i(i3, obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                ReinsuranceBottomSheetKt.a((ReinsuranceUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.m((String) obj3, (List) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).intValue();
                RepairDetailBffScreenKt.b((AssessmentUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).intValue();
                ScrollProgressTrackerKt.c((LazyListState) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).intValue();
                ScrollProgressTrackerKt.b((ScrollState) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ g2(int i2, LVColorScheme lVColorScheme, String str) {
        this.f69253b = 0;
        this.f69254c = i2;
        this.d = lVColorScheme;
        this.f69255e = str;
    }

    public /* synthetic */ g2(Modifier modifier, PasswordValidationState passwordValidationState, int i2, int i3) {
        this.f69253b = 21;
        this.d = modifier;
        this.f69255e = passwordValidationState;
        this.f69254c = i3;
    }

    public /* synthetic */ g2(Object obj, int i2, int i3, Object obj2, int i4) {
        this.f69253b = i4;
        this.d = obj;
        this.f69254c = i2;
        this.f69255e = obj2;
    }

    public /* synthetic */ g2(Object obj, int i2, int i3, String str) {
        this.f69253b = i3;
        this.f69255e = str;
        this.d = obj;
        this.f69254c = i2;
    }

    public /* synthetic */ g2(Object obj, Object obj2, int i2, int i3) {
        this.f69253b = i3;
        this.d = obj;
        this.f69255e = obj2;
        this.f69254c = i2;
    }
}
