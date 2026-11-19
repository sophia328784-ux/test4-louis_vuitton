package defpackage;

import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MenuKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.window.PopupProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f79217c;

    public /* synthetic */ r1(int i2, MutableState mutableState) {
        this.f79216b = i2;
        this.f79217c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79216b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 1;
        int i4 = 2;
        MutableState mutableState = this.f79217c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f2 = AICompanionTooltipKt.f52836a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer).d);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionTooltip$lambda$16$1$0$0$8$0");
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, dTFunctionNameModifier);
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
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer, rowMeasurePolicyA, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Updater.c(composer, modifierC, function5);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).M1, composer, 0), null, null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, composer, 56, 4);
                    Modifier modifierB = cj.b("AICompanionTooltip$lambda$16$1$0$0$8$0", RowScopeInstance.f5040a, 1.0f, true);
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new p(5);
                        composer.q(objX);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierB, true, (Function1) objX);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                    int iHashCode2 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer, modifierB2);
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
                    Updater.c(composer, columnMeasurePolicyA, function2);
                    Updater.c(composer, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer, function4, composer, function1);
                    Updater.c(composer, modifierC2, function5);
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("AICompanionTooltip$lambda$16$1$0$0$8$0"), "aiCompanion_tooltipTitle_text");
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48429j;
                    TextDirection.f10969b.getClass();
                    TextKt.c(StringResources_androidKt.c(composer, R.string.companion_push_card_title), modifierE, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle, 0L, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16711679), composer, 0, 0, 131064);
                    TextKt.c(StringResources_androidKt.c(composer, R.string.companion_push_card_description), PaddingKt.m(n00.g("AICompanionTooltip$lambda$16$1$0$0$8$0", "aiCompanion_tooltipDescription_text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer).f48361b.s, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(LVAppDesignKitTheme.n(composer).f48427h, 0L, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16711679), composer, 0, 0, 131064);
                    composer.r();
                    Modifier modifierO = SizeKt.o(ModifierExtKt.e(new DTFunctionNameModifier("AICompanionTooltip$lambda$16$1$0$0$8$0"), "aiCompanion_tooltipClose_button"), LVAppDesignKitTheme.d(composer).m);
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new d0(2, mutableState);
                        composer.q(objX2);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).q, composer, 0), StringResources_androidKt.c(composer, R.string.alt_close), ModifierExtKt.c(modifierO, false, null, null, (Function0) objX2, 31), LVAppDesignKitTheme.c(composer).f48361b.f48382k, composer, 8, 0);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                composer2.L(1504279721);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ActiveFiltersSlider$lambda$7"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) mutableState.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                composer2.F();
                return modifierM;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    AddressBookComposableKt.b((Function0) mutableState.getF10755b(), composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                PopupProperties popupProperties = AndroidMenu_androidKt.f6554a;
                mutableState.setValue(new TransformOrigin(MenuKt.c((IntRect) obj, (IntRect) obj2)));
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Object objX3 = composer4.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new j6(i3, mutableState);
                        composer4.q(objX3);
                    }
                    LVCheckboxKt.a(null, false, zBooleanValue, null, false, (Function1) objX3, composer4, ImageMetadata.EDGE_MODE, 27);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Object objX4 = composer5.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new j6(i4, mutableState);
                        composer5.q(objX4);
                    }
                    LVCheckboxKt.a(null, false, zBooleanValue2, null, false, (Function1) objX4, composer5, ImageMetadata.EDGE_MODE, 27);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                mutableState.setValue(new TransformOrigin(MenuKt.c((IntRect) obj, (IntRect) obj2)));
                return Unit.f71739a;
            case 7:
                Composer composer6 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer6.L(-865103192);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LiveVideoPlayerComponent$lambda$17");
                Object objX5 = composer6.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new u00(9, mutableState);
                    composer6.q(objX5);
                }
                Modifier modifierC3 = ModifierExtKt.c(dTFunctionNameModifier2, false, null, null, (Function0) objX5, 27);
                composer6.F();
                return modifierC3;
            default:
                Composer composer7 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    OsaListComposableKt.b((Function0) mutableState.getF10755b(), composer7, 0);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
        }
    }
}
