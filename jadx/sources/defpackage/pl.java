package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$FillWidth$1;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.LeftToRightLayoutKt;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.presentation.common.editorial.components.AuthenticationSectionKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonVariant;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpPriceKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.ImageFilterComponentKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.TextFilterComponentKt;
import com.vuitton.android.presentation.utils.UrlFactory;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pl implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78873c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78875f;

    public /* synthetic */ pl(Object obj, boolean z, Object obj2, Object obj3, int i2) {
        this.f78872b = i2;
        this.d = obj;
        this.f78873c = z;
        this.f78874e = obj2;
        this.f78875f = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:184:0x0888  */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        boolean zK;
        Object objX;
        final int i2;
        AssetImageUiModel assetImageUiModel;
        int i3 = this.f78872b;
        RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        boolean z = this.f78873c;
        Object obj4 = this.f78875f;
        Object obj5 = this.f78874e;
        Object obj6 = this.d;
        switch (i3) {
            case 0:
                final CertificateVisionnaireUiModel certificateVisionnaireUiModel = (CertificateVisionnaireUiModel) obj6;
                final Function1 function1 = (Function1) obj5;
                final Function1 function2 = (Function1) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    TextKt.c(certificateVisionnaireUiModel.d, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CertificateVisionnaireItem$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateList_productName_text"), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48426f, composer, 0, 0, 131064);
                    if (z || certificateVisionnaireUiModel.g == CertificateStatusUiModel.LOCKED) {
                        composer.L(-1236101932);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                        String strC = StringResources_androidKt.c(composer, R.string.my_certificate_activate_CTA);
                        Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateVisionnaireItem$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateList_unlock_button");
                        boolean zK2 = composer.K(function1) | composer.y(certificateVisionnaireUiModel);
                        Object objX2 = composer.x();
                        if (zK2 || objX2 == composer$Companion$Empty$1) {
                            final int i4 = 0;
                            objX2 = new Function0() { // from class: ol
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i5 = i4;
                                    CertificateVisionnaireUiModel certificateVisionnaireUiModel2 = certificateVisionnaireUiModel;
                                    Function1 function3 = function1;
                                    switch (i5) {
                                        case 0:
                                            function3.invoke(certificateVisionnaireUiModel2);
                                            break;
                                        default:
                                            function3.invoke(certificateVisionnaireUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX2);
                        }
                        LVButtonKt.b(0, 504, composer, modifierE, configurationButton, null, null, strC, (Function0) objX2, false, false, false);
                        composer.F();
                    } else {
                        composer.L(-1235615356);
                        ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer).f48446a;
                        Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateVisionnaireItem$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateList_openDetails_button");
                        String strC2 = StringResources_androidKt.c(composer, R.string.my_certificate_view);
                        boolean zK3 = composer.K(function2) | composer.y(certificateVisionnaireUiModel);
                        Object objX3 = composer.x();
                        if (zK3 || objX3 == composer$Companion$Empty$1) {
                            final int i5 = 1;
                            objX3 = new Function0() { // from class: ol
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i6 = i5;
                                    CertificateVisionnaireUiModel certificateVisionnaireUiModel2 = certificateVisionnaireUiModel;
                                    Function1 function3 = function2;
                                    switch (i6) {
                                        case 0:
                                            function3.invoke(certificateVisionnaireUiModel2);
                                            break;
                                        default:
                                            function3.invoke(certificateVisionnaireUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX3);
                        }
                        LVButtonKt.b(0, 504, composer, modifierE2, configurationButton2, null, null, strC2, (Function0) objX3, false, false, false);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                final Function4 function4 = (Function4) obj5;
                final ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) obj4;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                ProductFilterDataTypeUiModel.Simple simple = (ProductFilterDataTypeUiModel.Simple) ((ProductFilterDataTypeUiModel) obj6);
                List list = simple.f62961a;
                if ((list instanceof Collection) && list.isEmpty()) {
                    composer2.L(1343044932);
                    zK = composer2.K(function4) | composer2.K(productFiltersCategoryUiModel);
                    objX = composer2.x();
                    if (zK) {
                        i2 = 0;
                        objX = new Function2() { // from class: my
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj7, Object obj8) {
                                int i6 = i2;
                                ProductFiltersCategoryUiModel productFiltersCategoryUiModel2 = productFiltersCategoryUiModel;
                                Function4 function5 = function4;
                                String str = (String) obj7;
                                String str2 = (String) obj8;
                                switch (i6) {
                                    case 0:
                                        str.getClass();
                                        str2.getClass();
                                        function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                        break;
                                    default:
                                        str.getClass();
                                        str2.getClass();
                                        function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX);
                    } else {
                        i2 = 0;
                        objX = new Function2() { // from class: my
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj7, Object obj8) {
                                int i6 = i2;
                                ProductFiltersCategoryUiModel productFiltersCategoryUiModel2 = productFiltersCategoryUiModel;
                                Function4 function5 = function4;
                                String str = (String) obj7;
                                String str2 = (String) obj8;
                                switch (i6) {
                                    case 0:
                                        str.getClass();
                                        str2.getClass();
                                        function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                        break;
                                    default:
                                        str.getClass();
                                        str2.getClass();
                                        function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX);
                    }
                    ImageFilterComponentKt.a(z, simple, (Function2) objX, composer2, i2);
                    composer2.F();
                } else {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (((ProductFilterValueUiModel) it.next()).f62967c == null) {
                            composer2.L(1343357381);
                            boolean zK4 = composer2.K(function4) | composer2.K(productFiltersCategoryUiModel);
                            Object objX4 = composer2.x();
                            if (zK4 || objX4 == composer$Companion$Empty$1) {
                                final int i6 = 1;
                                objX4 = new Function2() { // from class: my
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj7, Object obj8) {
                                        int i7 = i6;
                                        ProductFiltersCategoryUiModel productFiltersCategoryUiModel2 = productFiltersCategoryUiModel;
                                        Function4 function5 = function4;
                                        String str = (String) obj7;
                                        String str2 = (String) obj8;
                                        switch (i7) {
                                            case 0:
                                                str.getClass();
                                                str2.getClass();
                                                function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                                break;
                                            default:
                                                str.getClass();
                                                str2.getClass();
                                                function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX4);
                            }
                            TextFilterComponentKt.b(z, simple, (Function2) objX4, composer2, 0);
                            composer2.F();
                        }
                    }
                    composer2.L(1343044932);
                    zK = composer2.K(function4) | composer2.K(productFiltersCategoryUiModel);
                    objX = composer2.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        i2 = 0;
                        objX = new Function2() { // from class: my
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj7, Object obj8) {
                                int i7 = i2;
                                ProductFiltersCategoryUiModel productFiltersCategoryUiModel2 = productFiltersCategoryUiModel;
                                Function4 function5 = function4;
                                String str = (String) obj7;
                                String str2 = (String) obj8;
                                switch (i7) {
                                    case 0:
                                        str.getClass();
                                        str2.getClass();
                                        function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                        break;
                                    default:
                                        str.getClass();
                                        str2.getClass();
                                        function5.g(productFiltersCategoryUiModel2.f62971b, str, str2, null);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX);
                    } else {
                        i2 = 0;
                    }
                    ImageFilterComponentKt.a(z, simple, (Function2) objX, composer2, i2);
                    composer2.F();
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                return Unit.f71739a;
            case 2:
                Function1 function3 = (Function1) obj5;
                StoreUiModel storeUiModel = (StoreUiModel) obj6;
                Function1 function5 = (Function1) obj4;
                Composer composer3 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FindInStoreRow$lambda$3$2");
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer3, 0);
                int iHashCode = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                Modifier modifierC = ComposedModifierKt.c(composer3, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function0);
                } else {
                    composer3.o();
                }
                Function2 function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer3, columnMeasurePolicyA, function6);
                Function2 function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer3, persistentCompositionLocalMapN, function7);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function8 = ComposeUiNode.Companion.g;
                Updater.c(composer3, numValueOf, function8);
                Function1 function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer3, function9);
                Function2 function10 = ComposeUiNode.Companion.d;
                Modifier modifierM = PaddingKt.m(n00.c(composer3, modifierC, function10, "FindInStoreRow$lambda$3$2", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer3).f48416e), Alignment.Companion.f8591k, composer3, 0);
                int iHashCode2 = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierM);
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function0);
                } else {
                    composer3.o();
                }
                Updater.c(composer3, rowMeasurePolicyA, function6);
                Updater.c(composer3, persistentCompositionLocalMapN2, function7);
                cj.s(iHashCode2, composer3, function8, composer3, function9);
                Updater.c(composer3, modifierC2, function10);
                LeftToRightLayoutKt.a(ComposableLambdaKt.b(-1292144017, new wy(storeUiModel, z, 1), composer3), composer3, 6);
                LeftToRightLayoutKt.a(ComposableLambdaKt.b(-538970600, new rs(storeUiModel, function5, 12), composer3), composer3, 6);
                composer3.r();
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("FindInStoreRow$lambda$3$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                String strC3 = StringResources_androidKt.c(composer3, R.string.vto_see_directions);
                boolean zK5 = composer3.K(function3) | composer3.y(storeUiModel);
                Object objX5 = composer3.x();
                if (zK5 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new xy(function3, storeUiModel, 0);
                    composer3.q(objX5);
                }
                LVLinkKt.a(modifierM2, strC3, false, null, false, (Function0) objX5, composer3, 0, 28);
                TextKt.c(StringResources_androidKt.c(composer3, R.string.locate_opening_hours), PaddingKt.m(new DTFunctionNameModifier("FindInStoreRow$lambda$3$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).m, composer3, 0, 0, 131064);
                FlowLayoutKt.a(PaddingKt.m(tr.d("FindInStoreRow$lambda$3$2", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).d, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), Arrangement.g, null, null, 2, 0, ComposableLambdaKt.b(633608664, new d3(storeUiModel, 20), composer3), composer3, 1597488, 44);
                composer3.r();
                return Unit.f71739a;
            case 3:
                Function0 function11 = (Function0) obj6;
                Function1 function12 = (Function1) obj5;
                Function0 function13 = (Function0) obj4;
                Composer composer4 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierL = PaddingKt.l(tr.d("MainNavBar$lambda$5$1$0$0$2", 1.0f), LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48415c);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer4).f48415c);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, composer4, 0);
                int iHashCode3 = Long.hashCode(composer4.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer4.n();
                Modifier modifierC3 = ComposedModifierKt.c(composer4, modifierL);
                ComposeUiNode.b0.getClass();
                Function0 function14 = ComposeUiNode.Companion.f9641b;
                if (composer4.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer4.B();
                if (composer4.getS()) {
                    composer4.C(function14);
                } else {
                    composer4.o();
                }
                Updater.c(composer4, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                Updater.c(composer4, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                Updater.c(composer4, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                Updater.c(composer4, modifierC3, ComposeUiNode.Companion.d);
                String strC4 = StringResources_androidKt.c(composer4, R.string.search_placeholder);
                Modifier modifierB = cj.b("MainNavBar$lambda$5$1$0$0$2", rowScopeInstance, 1.0f, true);
                boolean zK6 = composer4.K(strC4);
                Object objX6 = composer4.x();
                if (zK6 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new lt(strC4, 21);
                    composer4.q(objX6);
                }
                LVSearchBarKt.b(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierB, "catalog_search_textfield", (Function1) objX6, 2), null, null, StringResources_androidKt.c(composer4, R.string.search_placeholder), LVColorScheme.INVERT, function11, true, composer4, 1597440, 6);
                if (z) {
                    DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(1674243004, composer4, "MainNavBar$lambda$5$1$0$0$2");
                    boolean zK7 = composer4.K(function12);
                    Object objX7 = composer4.x();
                    if (zK7 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new k0(function12, 18);
                        composer4.q(objX7);
                    }
                    AICompanionButtonKt.a(OnGloballyPositionedModifierKt.a(dTFunctionNameModifierJ, (Function1) objX7), AICompanionButtonVariant.INVERT, function13, composer4, 48, 0);
                    composer4.F();
                } else {
                    composer4.L(1674733114);
                    composer4.F();
                }
                composer4.r();
                return Unit.f71739a;
            case 4:
                String strK = (String) obj6;
                PdpViewState pdpViewState = (PdpViewState) obj5;
                ProductUiModel productUiModel = (ProductUiModel) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierM3 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer5).f48416e, LVAppDesignKitTheme.l(composer5).f48417f, LVAppDesignKitTheme.l(composer5).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    if (strK == null) {
                        strK = o60.k(composer5, -1634192247, R.string.no_price_on_product, composer5);
                    } else {
                        composer5.L(-1634193487);
                        composer5.F();
                    }
                    PdpPriceKt.a(modifierM3, strK, this.f78873c, pdpViewState.f61571i.g, !productUiModel.m.isEmpty(), composer5, KyberEngine.KyberPolyBytes);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                Function1 function15 = (Function1) obj5;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj6;
                Function1 function16 = (Function1) obj4;
                Composer composer6 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierB2 = BackgroundKt.b(tr.d("PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$2$0", 1.0f), LVAppDesignKitTheme.c(composer6).f48361b.f48374a, RectangleShapeKt.f8913a);
                    boolean zK8 = composer6.K(function15) | composer6.y(plpProductUiModel);
                    Object objX8 = composer6.x();
                    if (zK8 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new ok0(function15, plpProductUiModel, 2);
                        composer6.q(objX8);
                    }
                    Modifier modifierC4 = ModifierExtKt.c(modifierB2, false, null, null, (Function0) objX8, 31);
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, composer6, 48);
                    int iHashCode4 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer6.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer6, modifierC4);
                    ComposeUiNode.b0.getClass();
                    Function0 function17 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function17);
                    } else {
                        composer6.o();
                    }
                    Function2 function18 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer6, rowMeasurePolicyA3, function18);
                    Function2 function19 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer6, persistentCompositionLocalMapN4, function19);
                    Integer numValueOf2 = Integer.valueOf(iHashCode4);
                    Function2 function20 = ComposeUiNode.Companion.g;
                    Updater.c(composer6, numValueOf2, function20);
                    Function1 function21 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer6, function21);
                    Function2 function22 = ComposeUiNode.Companion.d;
                    Updater.c(composer6, modifierC5, function22);
                    UrlFactory urlFactory = new UrlFactory(ContextExtKt.f((Context) composer6.k(AndroidCompositionLocals_androidKt.f9936b)));
                    AssetUiModel assetUiModel = (AssetUiModel) CollectionsKt.firstOrNull(((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62947f);
                    String str = (assetUiModel == null || (assetImageUiModel = assetUiModel.f51780b) == null) ? null : assetImageUiModel.f51778b;
                    if (str == null) {
                        str = "";
                    }
                    String strC5 = urlFactory.c(str);
                    Modifier modifierS = SizeKt.s(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$2$0"), LVAppDesignKitTheme.d(composer6).E);
                    Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer6, 0);
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$FillWidth$1 contentScale$Companion$FillWidth$1 = ContentScale.Companion.f9451e;
                    Modifier modifierA = AspectRatioKt.a(PainterModifierKt.a(modifierS, painterA, null, contentScale$Companion$FillWidth$1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), 1.0f, true);
                    strC5.getClass();
                    ImageLoaderKt.b(modifierA, strC5, contentScale$Companion$FillWidth$1, null, null, 0, false, null, null, null, composer6, KyberEngine.KyberPolyBytes, 2040);
                    Modifier modifierK = PaddingKt.k(SizeKt.v(cj.b("PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$2$0", rowScopeInstance, 1.0f, true), null, 3), LVAppDesignKitTheme.l(composer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer6, 0);
                    int iHashCode5 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer6.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer6, modifierK);
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function17);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, columnMeasurePolicyA2, function18);
                    Updater.c(composer6, persistentCompositionLocalMapN5, function19);
                    cj.s(iHashCode5, composer6, function20, composer6, function21);
                    Updater.c(composer6, modifierC6, function22);
                    TextKt.c(((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).d, null, LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).l, composer6, 0, 0, 131066);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer6).l;
                    ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel.d;
                    String str2 = productShortPriceUiModel != null ? productShortPriceUiModel.f62982b : null;
                    TextKt.c(str2 == null ? "" : str2, PaddingKt.m(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$2$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer6, 0, 0, 131064);
                    composer6.r();
                    if (z) {
                        Modifier modifierO = SizeKt.o(PaddingKt.m(pq0.j(348789892, composer6, "PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$2$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(composer6).q);
                        boolean zK9 = composer6.K(function16) | composer6.y(plpProductUiModel);
                        Object objX9 = composer6.x();
                        if (zK9 || objX9 == composer$Companion$Empty$1) {
                            objX9 = new ok0(function16, plpProductUiModel, 3);
                            composer6.q(objX9);
                        }
                        ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt.f62477a.getClass();
                        IconButtonKt.a((Function0) objX9, modifierO, false, null, null, ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt.f62478b, composer6, 1572864, 60);
                        composer6.F();
                    } else {
                        composer6.L(349725627);
                        composer6.F();
                    }
                    composer6.r();
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                List<EditorialModuleUiModel> list2 = (List) obj6;
                Function0 function23 = (Function0) obj5;
                Function0 function24 = (Function0) obj4;
                Composer composer7 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    for (EditorialModuleUiModel editorialModuleUiModel : list2) {
                        if (editorialModuleUiModel instanceof EditorialModuleUiModel.AuthenticationUiModel) {
                            composer7.L(496458982);
                            if (z) {
                                composer7.L(497174369);
                                composer7.F();
                            } else {
                                EditorialModuleUiModel.AuthenticationUiModel authenticationUiModel = (EditorialModuleUiModel.AuthenticationUiModel) editorialModuleUiModel;
                                AuthenticationSectionKt.a(PaddingKt.m(pq0.j(496500708, composer7, "personalSelectionsEditorialSectionsFooter$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48417f, 5), authenticationUiModel.f50811b, authenticationUiModel.f50812c, authenticationUiModel.d, LVColorScheme.DEFAULT, function23, function24, composer7, 24576);
                                composer7.F();
                            }
                            composer7.F();
                        } else {
                            composer7.L(497218079);
                            composer7.F();
                        }
                    }
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            default:
                List<ProductSortUiModel> list3 = (List) obj6;
                Function4 function25 = (Function4) obj5;
                Context context = (Context) obj4;
                Composer composer8 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                Modifier modifierM4 = PaddingKt.m(new DTFunctionNameModifier("SortCategoryExpandableRow$lambda$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48416e, 7);
                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer8, 0);
                int iHashCode6 = Long.hashCode(composer8.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer8.n();
                Modifier modifierC7 = ComposedModifierKt.c(composer8, modifierM4);
                ComposeUiNode.b0.getClass();
                Function0 function26 = ComposeUiNode.Companion.f9641b;
                if (composer8.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer8.B();
                if (composer8.getS()) {
                    composer8.C(function26);
                } else {
                    composer8.o();
                }
                Updater.c(composer8, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                Updater.c(composer8, persistentCompositionLocalMapN6, ComposeUiNode.Companion.f9643e);
                Updater.c(composer8, Integer.valueOf(iHashCode6), ComposeUiNode.Companion.g);
                Updater.b(composer8, ComposeUiNode.Companion.f9645h);
                Updater.c(composer8, modifierC7, ComposeUiNode.Companion.d);
                composer8.L(-849600564);
                for (ProductSortUiModel productSortUiModel : list3) {
                    Modifier modifierF = SizeKt.f(new DTFunctionNameModifier("SortCategoryExpandableRow$lambda$0$2"), LVAppDesignKitTheme.d(composer8).x);
                    String str3 = productSortUiModel.f62994b;
                    boolean z2 = productSortUiModel.f62995c;
                    boolean z3 = !z && productSortUiModel.d;
                    boolean zK10 = composer8.K(function25) | composer8.y(context) | composer8.y(productSortUiModel);
                    Object objX10 = composer8.x();
                    if (zK10 || objX10 == composer$Companion$Empty$1) {
                        objX10 = new cl0(function25, context, productSortUiModel, 13);
                        composer8.q(objX10);
                    }
                    LVRadioButtonBlockKt.a(modifierF, str3, null, z3, z2, (Function1) objX10, null, null, composer8, 0, 196);
                }
                composer8.F();
                composer8.r();
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                return Unit.f71739a;
        }
    }

    public /* synthetic */ pl(Function1 function1, Object obj, boolean z, Function1 function2, int i2) {
        this.f78872b = i2;
        this.f78874e = function1;
        this.d = obj;
        this.f78873c = z;
        this.f78875f = function2;
    }
}
