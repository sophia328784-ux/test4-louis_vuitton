package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductFocusDialogKt;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class aq0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20590b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f20591c;
    public final /* synthetic */ FocusedProductUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f20592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f20593f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f20594h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f20595i;

    public /* synthetic */ aq0(Modifier modifier, FocusedProductUiModel focusedProductUiModel, String str, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i2) {
        this.f20591c = modifier;
        this.d = focusedProductUiModel;
        this.f20592e = str;
        this.f20593f = function0;
        this.g = function1;
        this.f20594h = function2;
        this.f20595i = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f20590b) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                Modifier modifierE = this.f20591c;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "ProductFocusDialog$lambda$2");
                }
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = modifierE.o(SizeKt.f5052c);
                    Function0 function0 = this.f20593f;
                    boolean zK = composer.K(function0);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new ee0(function0, 27);
                        composer.q(objX);
                    }
                    Modifier modifierC = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8585c, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer, modifierC);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function1);
                    } else {
                        composer.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer, measurePolicyD, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer, numValueOf, function4);
                    Function1 function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer, function5);
                    Function2 function6 = ComposeUiNode.Companion.d;
                    Modifier modifierM = PaddingKt.m(PaddingKt.k(SizeKt.v(n00.c(composer, modifierC2, function6, "ProductFocusDialog$lambda$2", 1.0f), Alignment.Companion.f8591k, 2), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer).f48417f), Alignment.Companion.n, composer, 0);
                    int iHashCode2 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer, modifierM);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function1);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, function2);
                    Updater.c(composer, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer, function4, composer, function5);
                    Updater.c(composer, modifierC3, function6);
                    Modifier modifierB = BackgroundKt.b(ClipKt.a(tr.d("ProductFocusDialog$lambda$2", 1.0f), LVAppDesignKitTheme.j(composer).f48411c), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a);
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new yp0(5);
                        composer.q(objX2);
                    }
                    Modifier modifierE2 = ModifierExtKt.e(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX2, 31), "plp_productPreviewImage_view");
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer, modifierE2);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function1);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD2, function2);
                    Updater.c(composer, persistentCompositionLocalMapN3, function3);
                    cj.s(iHashCode3, composer, function4, composer, function5);
                    Modifier modifierA = AspectRatioKt.a(n00.c(composer, modifierC4, function6, "ProductFocusDialog$lambda$2", 1.0f), 0.6666667f, false);
                    String str = this.f20592e;
                    if (str == null) {
                        str = null;
                    }
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, 390, 2040);
                    composer.r();
                    ProductFocusDialogKt.c(ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("ProductFocusDialog$lambda$2"), Alignment.Companion.p), this.d.f62873a, this.g, this.f20594h, this.f20595i, composer, 0);
                    composer.r();
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                ProductFocusDialogKt.d(this.f20591c, this.d, this.f20592e, this.f20593f, this.g, this.f20594h, this.f20595i, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ aq0(Modifier modifier, Function0 function0, FocusedProductUiModel focusedProductUiModel, Function0 function1, Function0 function2, Function0 function3, String str) {
        this.f20591c = modifier;
        this.f20593f = function0;
        this.d = focusedProductUiModel;
        this.g = function1;
        this.f20594h = function2;
        this.f20595i = function3;
        this.f20592e = str;
    }
}
