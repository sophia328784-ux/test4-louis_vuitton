package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.DraggableAnchors;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Constraints;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.BackInStockBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yv0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81448b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f81449c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81451f;
    public final /* synthetic */ Object g;

    public /* synthetic */ yv0(float f2, PermissionsViewModel permissionsViewModel, Context context, MutableState mutableState, MutableState mutableState2) {
        this.f81449c = f2;
        this.d = permissionsViewModel;
        this.f81450e = context;
        this.f81451f = mutableState;
        this.g = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f81448b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.g;
        Object obj5 = this.f81451f;
        float f2 = this.f81449c;
        Object obj6 = this.f81450e;
        Object obj7 = this.d;
        switch (i2) {
            case 0:
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj7;
                Context context = (Context) obj6;
                MutableState mutableState = (MutableState) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierH = SizeKt.h(WindowInsetsPadding_androidKt.b(AnimationModifierKt.b(new DTFunctionNameModifier("ShadeFinderResultComposable$lambda$0$19"), null, 3)), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    BeautyBottomSheet beautyBottomSheet = (BeautyBottomSheet) mutableState.getF10755b();
                    if (beautyBottomSheet instanceof BeautyBottomSheet.BackInStock) {
                        composer.L(64316398);
                        BeautyBottomSheet beautyBottomSheet2 = (BeautyBottomSheet) mutableState.getF10755b();
                        beautyBottomSheet2.getClass();
                        BeautyAddToCartUiModel beautyAddToCartUiModel = ((BeautyBottomSheet.BackInStock) beautyBottomSheet2).f62131a;
                        BeautyBottomSheet beautyBottomSheet3 = (BeautyBottomSheet) mutableState.getF10755b();
                        beautyBottomSheet3.getClass();
                        boolean z = ((BeautyBottomSheet.BackInStock) beautyBottomSheet3).f62132b;
                        String strC = StringResources_androidKt.c(composer, R.string.multiple_add_to_cart_notify_me_button);
                        String str = beautyAddToCartUiModel.f62125a;
                        String str2 = beautyAddToCartUiModel.f62126b;
                        String str3 = beautyAddToCartUiModel.f62127c;
                        String str4 = beautyAddToCartUiModel.d;
                        boolean zK = composer.K(beautyAddToCartUiModel) | composer.y(permissionsViewModel);
                        Object objX = composer.x();
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new he(beautyAddToCartUiModel, permissionsViewModel, mutableState2, 1);
                            composer.q(objX);
                        }
                        BackInStockBottomSheetKt.a(null, strC, str, str2, str4, str3, z, (Function0) objX, composer, 0, 1);
                        composer.F();
                    } else if (beautyBottomSheet instanceof BeautyBottomSheet.Permissions) {
                        composer.L(65440551);
                        BeautyBottomSheet beautyBottomSheet4 = (BeautyBottomSheet) mutableState.getF10755b();
                        beautyBottomSheet4.getClass();
                        PermissionsBottomSheet permissionsBottomSheet = ((BeautyBottomSheet.Permissions) beautyBottomSheet4).f62134a;
                        String strA = StringResourceUiModelKt.a(permissionsBottomSheet.f62363a, context);
                        String strA2 = StringResourceUiModelKt.a(permissionsBottomSheet.f62364b, context);
                        String strA3 = StringResourceUiModelKt.a(permissionsBottomSheet.d, context);
                        StringResourceUiModel.ResId resId = permissionsBottomSheet.f62365c;
                        String strA4 = resId != null ? StringResourceUiModelKt.a(resId, context) : null;
                        boolean zY = composer.y(permissionsViewModel) | composer.y(permissionsBottomSheet) | composer.y(context);
                        Object objX2 = composer.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new ie(permissionsViewModel, permissionsBottomSheet, context, 1);
                            composer.q(objX2);
                        }
                        Function0 function1 = (Function0) objX2;
                        boolean zY2 = composer.y(context);
                        Object objX3 = composer.x();
                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new w31(context, 1);
                            composer.q(objX3);
                        }
                        LVModalBottomSheetKt.a(null, null, strA, null, null, strA2, null, strA3, null, false, null, function1, null, false, null, null, strA4, false, (Function0) objX3, composer, 0, 0, 391003);
                        composer.F();
                    } else {
                        composer.L(66957288);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Set set = (Set) obj7;
                AnchoredDraggableState anchoredDraggableState = (AnchoredDraggableState) obj6;
                Function3 function3 = (Function3) obj5;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                boxWithConstraintsScope.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(boxWithConstraintsScope) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    float fG = Constraints.g(boxWithConstraintsScope.getF4940b());
                    boolean zC = composer2.c(fG) | composer2.K(set);
                    Object objX4 = composer2.x();
                    if (zC || objX4 == composer$Companion$Empty$1) {
                        objX4 = AnchoredDraggableKt.a(new qb(set, fG, 3));
                        composer2.q(objX4);
                    }
                    AnchoredDraggableState.h(anchoredDraggableState, (DraggableAnchors) objX4);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SwipeToDismissVertical$lambda$0");
                    Orientation orientation = Orientation.Vertical;
                    TweenSpec tweenSpec = AnchoredDraggableDefaults.f4336a;
                    boolean zC2 = composer2.c(f2);
                    Object objX5 = composer2.x();
                    if (zC2 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new a10(f2, 3);
                        composer2.q(objX5);
                    }
                    Modifier modifierE = AnchoredDraggableKt.e(dTFunctionNameModifier, anchoredDraggableState, orientation, true, AnchoredDraggableDefaults.a(anchoredDraggableState, (Function1) objX5, null, composer2, AnchoredDraggableDefaults.d << 9, 4));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierE);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Function2 function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, measurePolicyD2, function4);
                    Function2 function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN2, function5);
                    Integer numValueOf = Integer.valueOf(iHashCode2);
                    Function2 function6 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function6);
                    Function1 function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function7);
                    Function2 function8 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC2, function8);
                    Modifier modifierJ = BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("SwipeToDismissVertical$lambda$0"));
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, composer2, 0);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierJ);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, rowMeasurePolicyA, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN3, function5);
                    cj.s(iHashCode3, composer2, function6, composer2, function7);
                    Updater.c(composer2, modifierC3, function8);
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    function3.A(rowScopeInstance, composer2, 6);
                    composer2.r();
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("SwipeToDismissVertical$lambda$0");
                    boolean zK2 = composer2.K(anchoredDraggableState);
                    Object objX6 = composer2.x();
                    if (zK2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new y70(anchoredDraggableState, 1);
                        composer2.q(objX6);
                    }
                    Modifier modifierA = OffsetKt.a(dTFunctionNameModifier2, (Function1) objX6);
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, composer2, 0);
                    int iHashCode4 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer2.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierA);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function2);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, rowMeasurePolicyA2, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN4, function5);
                    cj.s(iHashCode4, composer2, function6, composer2, function7);
                    Updater.c(composer2, modifierC4, function8);
                    composableLambdaImpl.A(rowScopeInstance, composer2, 6);
                    composer2.r();
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ yv0(Set set, AnchoredDraggableState anchoredDraggableState, float f2, Function3 function3, ComposableLambdaImpl composableLambdaImpl) {
        this.d = set;
        this.f81450e = anchoredDraggableState;
        this.f81449c = f2;
        this.f81451f = function3;
        this.g = composableLambdaImpl;
    }
}
