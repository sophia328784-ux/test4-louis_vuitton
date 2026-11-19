package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCatalogLocalProviderKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.catalog.CatalogDestinations;
import com.vuitton.android.presentation.screen.catalog.CatalogDestinationsKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPCategoryComposableKt;
import com.vuitton.android.presentation.screen.plp.models.DisplayedPLPType;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import defpackage.d3;
import defpackage.fj;
import defpackage.jk;
import defpackage.lk;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mk implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogPLPActivity f76296c;

    public /* synthetic */ mk(CatalogPLPActivity catalogPLPActivity, int i2) {
        this.f76295b = i2;
        this.f76296c = catalogPLPActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76295b;
        final CatalogPLPActivity catalogPLPActivity = this.f76296c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                CatalogPLPActivity.Companion companion = CatalogPLPActivity.x;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1799899287, new mk(catalogPLPActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                CatalogPLPActivity.Companion companion2 = CatalogPLPActivity.x;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    final float fB = ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getF5031b());
                    final float fB2 = ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getD());
                    LVCatalogLocalProviderKt.a(ComposableLambdaKt.b(-1129371683, new Function2() { // from class: com.vuitton.android.presentation.screen.plp.activities.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            CatalogPLPActivity.Companion companion3 = CatalogPLPActivity.x;
                            final int i4 = 0;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                final CatalogPLPActivity catalogPLPActivity2 = catalogPLPActivity;
                                DisplayedPLPType f63025i = catalogPLPActivity2.H().getF63025i();
                                boolean zC = Intrinsics.c(f63025i, DisplayedPLPType.ClassicPlp.f62871a);
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zC) {
                                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(pq0.j(1300550555, composer2, "onCreate$lambda$0$0$0"), LVAppDesignKitTheme.c(composer2).f48361b.u, RectangleShapeKt.f8913a));
                                    PLPCategoryViewModel pLPCategoryViewModelH = catalogPLPActivity2.H();
                                    QuickAccessFiltersViewModel quickAccessFiltersViewModelI = catalogPLPActivity2.I();
                                    boolean zY = composer2.y(catalogPLPActivity2);
                                    Object objX = composer2.x();
                                    if (zY || objX == composer$Companion$Empty$1) {
                                        CatalogPLPActivity$onCreate$1$1$1$1$1 catalogPLPActivity$onCreate$1$1$1$1$1 = new CatalogPLPActivity$onCreate$1$1$1$1$1(0, catalogPLPActivity2, CatalogPLPActivity.class, "finish", "finish()V", 0);
                                        composer2.q(catalogPLPActivity$onCreate$1$1$1$1$1);
                                        objX = catalogPLPActivity$onCreate$1$1$1$1$1;
                                    }
                                    Function0 function0 = (Function0) ((KFunction) objX);
                                    boolean zY2 = composer2.y(catalogPLPActivity2);
                                    Object objX2 = composer2.x();
                                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                                        objX2 = new jk(catalogPLPActivity2, 8);
                                        composer2.q(objX2);
                                    }
                                    Function0 function1 = (Function0) objX2;
                                    boolean zY3 = composer2.y(catalogPLPActivity2);
                                    Object objX3 = composer2.x();
                                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                                        objX3 = new jk(catalogPLPActivity2, 2);
                                        composer2.q(objX3);
                                    }
                                    Function0 function2 = (Function0) objX3;
                                    boolean zY4 = composer2.y(catalogPLPActivity2);
                                    Object objX4 = composer2.x();
                                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                                        objX4 = new jk(catalogPLPActivity2, 3);
                                        composer2.q(objX4);
                                    }
                                    Function0 function3 = (Function0) objX4;
                                    boolean zY5 = composer2.y(catalogPLPActivity2);
                                    Object objX5 = composer2.x();
                                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                                        objX5 = new jk(catalogPLPActivity2, 4);
                                        composer2.q(objX5);
                                    }
                                    Function0 function4 = (Function0) objX5;
                                    boolean zY6 = composer2.y(catalogPLPActivity2);
                                    float f2 = fB;
                                    boolean zC2 = zY6 | composer2.c(f2);
                                    float f3 = fB2;
                                    boolean zC3 = zC2 | composer2.c(f3);
                                    Object objX6 = composer2.x();
                                    if (zC3 || objX6 == composer$Companion$Empty$1) {
                                        objX6 = new lk(f2, f3, i4, catalogPLPActivity2);
                                        composer2.q(objX6);
                                    }
                                    Function1 function5 = (Function1) objX6;
                                    boolean zY7 = composer2.y(catalogPLPActivity2);
                                    Object objX7 = composer2.x();
                                    int i5 = 9;
                                    if (zY7 || objX7 == composer$Companion$Empty$1) {
                                        objX7 = new d3(catalogPLPActivity2, i5);
                                        composer2.q(objX7);
                                    }
                                    Function3 function6 = (Function3) objX7;
                                    QuickAccessFiltersViewModel quickAccessFiltersViewModelI2 = catalogPLPActivity2.I();
                                    boolean zY8 = composer2.y(quickAccessFiltersViewModelI2);
                                    Object objX8 = composer2.x();
                                    if (zY8 || objX8 == composer$Companion$Empty$1) {
                                        objX8 = new CatalogPLPActivity$onCreate$1$1$1$8$1(1, quickAccessFiltersViewModelI2, QuickAccessFiltersViewModel.class, "updateFiltersContainerVisibility", "updateFiltersContainerVisibility(Z)V", 0);
                                        composer2.q(objX8);
                                    }
                                    Function1 function7 = (Function1) ((KFunction) objX8);
                                    boolean zY9 = composer2.y(catalogPLPActivity2);
                                    Object objX9 = composer2.x();
                                    if (zY9 || objX9 == composer$Companion$Empty$1) {
                                        objX9 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$onCreate$1$1$1$9$1
                                            @Override // kotlin.jvm.functions.Function2
                                            public final Object invoke(Object obj5, Object obj6) {
                                                String str = ((SkuIdUiModel) obj5).f61764b;
                                                String str2 = (String) obj6;
                                                str.getClass();
                                                str2.getClass();
                                                CatalogDestinations.ToPdpPage toPdpPage = new CatalogDestinations.ToPdpPage(str, str2, false, 4, null);
                                                CatalogPLPActivity catalogPLPActivity3 = catalogPLPActivity2;
                                                catalogPLPActivity3.startActivity(CatalogDestinationsKt.a(toPdpPage, catalogPLPActivity3));
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX9);
                                    }
                                    Function2 function8 = (Function2) objX9;
                                    QuickAccessFiltersViewModel quickAccessFiltersViewModelI3 = catalogPLPActivity2.I();
                                    boolean zY10 = composer2.y(quickAccessFiltersViewModelI3);
                                    Object objX10 = composer2.x();
                                    if (zY10 || objX10 == composer$Companion$Empty$1) {
                                        objX10 = new CatalogPLPActivity$onCreate$1$1$1$10$1(1, quickAccessFiltersViewModelI3, QuickAccessFiltersViewModel.class, "updateQuickAccessFiltersButtonState", "updateQuickAccessFiltersButtonState(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V", 0);
                                        composer2.q(objX10);
                                    }
                                    Function1 function9 = (Function1) ((KFunction) objX10);
                                    boolean zY11 = composer2.y(catalogPLPActivity2);
                                    Object objX11 = composer2.x();
                                    if (zY11 || objX11 == composer$Companion$Empty$1) {
                                        objX11 = new jk(catalogPLPActivity2, 5);
                                        composer2.q(objX11);
                                    }
                                    Function0 function10 = (Function0) objX11;
                                    boolean zY12 = composer2.y(catalogPLPActivity2);
                                    Object objX12 = composer2.x();
                                    if (zY12 || objX12 == composer$Companion$Empty$1) {
                                        objX12 = new jk(catalogPLPActivity2, 6);
                                        composer2.q(objX12);
                                    }
                                    Function0 function11 = (Function0) objX12;
                                    boolean zY13 = composer2.y(catalogPLPActivity2);
                                    Object objX13 = composer2.x();
                                    if (zY13 || objX13 == composer$Companion$Empty$1) {
                                        objX13 = new jk(catalogPLPActivity2, 7);
                                        composer2.q(objX13);
                                    }
                                    Function0 function12 = (Function0) objX13;
                                    boolean zY14 = composer2.y(catalogPLPActivity2);
                                    Object objX14 = composer2.x();
                                    if (zY14 || objX14 == composer$Companion$Empty$1) {
                                        final int i6 = 1;
                                        objX14 = new Function1() { // from class: kk
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                int i7 = i6;
                                                CatalogPLPActivity catalogPLPActivity3 = catalogPLPActivity2;
                                                switch (i7) {
                                                    case 0:
                                                        ProductShortUiModel productShortUiModel = (ProductShortUiModel) obj5;
                                                        CatalogPLPActivity.Companion companion4 = CatalogPLPActivity.x;
                                                        productShortUiModel.getClass();
                                                        catalogPLPActivity3.startActivity(CatalogDestinationsKt.a(new CatalogDestinations.ToPdpPage(productShortUiModel.f62987e, (String) catalogPLPActivity3.H().C2().getValue(), false, 4, null), catalogPLPActivity3));
                                                        break;
                                                    case 1:
                                                        String str = (String) obj5;
                                                        CatalogPLPActivity.Companion companion5 = CatalogPLPActivity.x;
                                                        str.getClass();
                                                        catalogPLPActivity3.I().l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str));
                                                        break;
                                                    case 2:
                                                        int iIntValue3 = ((Integer) obj5).intValue();
                                                        CatalogPLPActivity.Companion companion6 = CatalogPLPActivity.x;
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.PlpScrolledEvent(iIntValue3, false, 2, null));
                                                        break;
                                                    default:
                                                        String str2 = (String) obj5;
                                                        CatalogPLPActivity.Companion companion7 = CatalogPLPActivity.x;
                                                        str2.getClass();
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX14);
                                    }
                                    Function1 function13 = (Function1) objX14;
                                    boolean zY15 = composer2.y(catalogPLPActivity2);
                                    Object objX15 = composer2.x();
                                    if (zY15 || objX15 == composer$Companion$Empty$1) {
                                        objX15 = new jk(catalogPLPActivity2, 9);
                                        composer2.q(objX15);
                                    }
                                    Function0 function14 = (Function0) objX15;
                                    boolean zY16 = composer2.y(catalogPLPActivity2);
                                    Object objX16 = composer2.x();
                                    if (zY16 || objX16 == composer$Companion$Empty$1) {
                                        final int i7 = 2;
                                        objX16 = new Function1() { // from class: kk
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                int i8 = i7;
                                                CatalogPLPActivity catalogPLPActivity3 = catalogPLPActivity2;
                                                switch (i8) {
                                                    case 0:
                                                        ProductShortUiModel productShortUiModel = (ProductShortUiModel) obj5;
                                                        CatalogPLPActivity.Companion companion4 = CatalogPLPActivity.x;
                                                        productShortUiModel.getClass();
                                                        catalogPLPActivity3.startActivity(CatalogDestinationsKt.a(new CatalogDestinations.ToPdpPage(productShortUiModel.f62987e, (String) catalogPLPActivity3.H().C2().getValue(), false, 4, null), catalogPLPActivity3));
                                                        break;
                                                    case 1:
                                                        String str = (String) obj5;
                                                        CatalogPLPActivity.Companion companion5 = CatalogPLPActivity.x;
                                                        str.getClass();
                                                        catalogPLPActivity3.I().l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str));
                                                        break;
                                                    case 2:
                                                        int iIntValue3 = ((Integer) obj5).intValue();
                                                        CatalogPLPActivity.Companion companion6 = CatalogPLPActivity.x;
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.PlpScrolledEvent(iIntValue3, false, 2, null));
                                                        break;
                                                    default:
                                                        String str2 = (String) obj5;
                                                        CatalogPLPActivity.Companion companion7 = CatalogPLPActivity.x;
                                                        str2.getClass();
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX16);
                                    }
                                    Function1 function15 = (Function1) objX16;
                                    boolean zY17 = composer2.y(catalogPLPActivity2);
                                    Object objX17 = composer2.x();
                                    if (zY17 || objX17 == composer$Companion$Empty$1) {
                                        final int i8 = 3;
                                        objX17 = new Function1() { // from class: kk
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                int i9 = i8;
                                                CatalogPLPActivity catalogPLPActivity3 = catalogPLPActivity2;
                                                switch (i9) {
                                                    case 0:
                                                        ProductShortUiModel productShortUiModel = (ProductShortUiModel) obj5;
                                                        CatalogPLPActivity.Companion companion4 = CatalogPLPActivity.x;
                                                        productShortUiModel.getClass();
                                                        catalogPLPActivity3.startActivity(CatalogDestinationsKt.a(new CatalogDestinations.ToPdpPage(productShortUiModel.f62987e, (String) catalogPLPActivity3.H().C2().getValue(), false, 4, null), catalogPLPActivity3));
                                                        break;
                                                    case 1:
                                                        String str = (String) obj5;
                                                        CatalogPLPActivity.Companion companion5 = CatalogPLPActivity.x;
                                                        str.getClass();
                                                        catalogPLPActivity3.I().l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str));
                                                        break;
                                                    case 2:
                                                        int iIntValue3 = ((Integer) obj5).intValue();
                                                        CatalogPLPActivity.Companion companion6 = CatalogPLPActivity.x;
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.PlpScrolledEvent(iIntValue3, false, 2, null));
                                                        break;
                                                    default:
                                                        String str2 = (String) obj5;
                                                        CatalogPLPActivity.Companion companion7 = CatalogPLPActivity.x;
                                                        str2.getClass();
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX17);
                                    }
                                    Function1 function16 = (Function1) objX17;
                                    boolean zY18 = composer2.y(catalogPLPActivity2);
                                    Object objX18 = composer2.x();
                                    if (zY18 || objX18 == composer$Companion$Empty$1) {
                                        objX18 = new jk(catalogPLPActivity2, 10);
                                        composer2.q(objX18);
                                    }
                                    PLPCategoryComposableKt.a(modifierB, pLPCategoryViewModelH, quickAccessFiltersViewModelI, null, null, function0, function1, function2, function3, null, function4, function5, function6, function7, function8, function9, null, function10, function11, function12, function13, function14, function15, function16, (Function0) objX18, composer2, 3072, 66064);
                                    composer2.F();
                                } else {
                                    if (!(f63025i instanceof DisplayedPLPType.ThematicPlp)) {
                                        throw o60.v(composer2, 1300548054);
                                    }
                                    composer2.L(1669411222);
                                    String str = new String();
                                    DisplayedPLPType f63025i2 = catalogPLPActivity2.H().getF63025i();
                                    f63025i2.getClass();
                                    List list = ((DisplayedPLPType.ThematicPlp) f63025i2).f62872a;
                                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                    if (viewModelStoreOwnerA == null) {
                                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                        return null;
                                    }
                                    ThematicPlpViewModelImpl thematicPlpViewModelImpl = (ThematicPlpViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(ThematicPlpViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                    boolean zY19 = composer2.y(catalogPLPActivity2);
                                    Object objX19 = composer2.x();
                                    if (zY19 || objX19 == composer$Companion$Empty$1) {
                                        CatalogPLPActivity$onCreate$1$1$1$19$1 catalogPLPActivity$onCreate$1$1$1$19$1 = new CatalogPLPActivity$onCreate$1$1$1$19$1(0, catalogPLPActivity2, CatalogPLPActivity.class, "finish", "finish()V", 0);
                                        composer2.q(catalogPLPActivity$onCreate$1$1$1$19$1);
                                        objX19 = catalogPLPActivity$onCreate$1$1$1$19$1;
                                    }
                                    String stringExtra = catalogPLPActivity2.getIntent().getStringExtra("nav_arg_plp_key");
                                    String stringExtra2 = catalogPLPActivity2.getIntent().getStringExtra("nav_arg_theme_id");
                                    Function0 function17 = (Function0) ((KFunction) objX19);
                                    Object objX20 = composer2.x();
                                    if (objX20 == composer$Companion$Empty$1) {
                                        objX20 = new fj(15);
                                        composer2.q(objX20);
                                    }
                                    Function0 function18 = (Function0) objX20;
                                    boolean zY20 = composer2.y(catalogPLPActivity2);
                                    Object objX21 = composer2.x();
                                    if (zY20 || objX21 == composer$Companion$Empty$1) {
                                        objX21 = new Function1() { // from class: kk
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                int i9 = i4;
                                                CatalogPLPActivity catalogPLPActivity3 = catalogPLPActivity2;
                                                switch (i9) {
                                                    case 0:
                                                        ProductShortUiModel productShortUiModel = (ProductShortUiModel) obj5;
                                                        CatalogPLPActivity.Companion companion4 = CatalogPLPActivity.x;
                                                        productShortUiModel.getClass();
                                                        catalogPLPActivity3.startActivity(CatalogDestinationsKt.a(new CatalogDestinations.ToPdpPage(productShortUiModel.f62987e, (String) catalogPLPActivity3.H().C2().getValue(), false, 4, null), catalogPLPActivity3));
                                                        break;
                                                    case 1:
                                                        String str2 = (String) obj5;
                                                        CatalogPLPActivity.Companion companion5 = CatalogPLPActivity.x;
                                                        str2.getClass();
                                                        catalogPLPActivity3.I().l0(new QuickAccessFiltersTrackingUiModel.SwipeSimpleFiltersEvent(str2));
                                                        break;
                                                    case 2:
                                                        int iIntValue3 = ((Integer) obj5).intValue();
                                                        CatalogPLPActivity.Companion companion6 = CatalogPLPActivity.x;
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.PlpScrolledEvent(iIntValue3, false, 2, null));
                                                        break;
                                                    default:
                                                        String str3 = (String) obj5;
                                                        CatalogPLPActivity.Companion companion7 = CatalogPLPActivity.x;
                                                        str3.getClass();
                                                        catalogPLPActivity3.H().O0(new PLPTrackingUiModel.DispatchFilterSelectedEvent(str3));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX21);
                                    }
                                    Function1 function19 = (Function1) objX21;
                                    boolean zY21 = composer2.y(catalogPLPActivity2);
                                    Object objX22 = composer2.x();
                                    if (zY21 || objX22 == composer$Companion$Empty$1) {
                                        objX22 = new jk(catalogPLPActivity2, 1);
                                        composer2.q(objX22);
                                    }
                                    ThematicPlpComposableKt.a(null, thematicPlpViewModelImpl, function17, function18, str, list, function19, (Function0) objX22, stringExtra, stringExtra2, composer2, 3072);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
