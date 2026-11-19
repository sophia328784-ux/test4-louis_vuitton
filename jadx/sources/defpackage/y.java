package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.MenuDefaults;
import androidx.compose.material3.MenuItemColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.ComposableSingletons$AICompanionChatMessagesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f81235c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f81236e;

    public /* synthetic */ y(String str, Function0 function0, Function0 function1, int i2) {
        this.f81234b = i2;
        this.f81235c = str;
        this.d = function0;
        this.f81236e = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        switch (this.f81234b) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    TextKt.c(this.f81235c, PaddingKt.j(new DTFunctionNameModifier("MessageContextMenu$lambda$0$0"), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                    Modifier modifierG = n00.g("MessageContextMenu$lambda$0$0", "aiCompanion_copyMessage_button");
                    float f2 = MenuDefaults.f7020a;
                    MenuItemColors menuItemColorsB = MenuDefaults.b(LVAppDesignKitTheme.c(composer).f48361b.f48382k, composer);
                    ComposableSingletons$AICompanionChatMessagesKt.f52817a.getClass();
                    AndroidMenu_androidKt.b(ComposableSingletons$AICompanionChatMessagesKt.f52820e, this.d, modifierG, ComposableSingletons$AICompanionChatMessagesKt.f52821f, null, false, menuItemColorsB, null, composer, 3078, 432);
                    AndroidMenu_androidKt.b(ComposableSingletons$AICompanionChatMessagesKt.g, this.f81236e, n00.g("MessageContextMenu$lambda$0$0", "aiCompanion_modifyMessage_button"), ComposableSingletons$AICompanionChatMessagesKt.f52822h, null, false, MenuDefaults.b(LVAppDesignKitTheme.c(composer).f48361b.f48382k, composer), null, composer, 3078, 432);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CancelProductCustomizationBottomSheet$lambda$0");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    TextKt.c(this.f81235c, PaddingKt.m(a.f(composer2, modifierC, ComposeUiNode.Companion.d, "CancelProductCustomizationBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, 7), LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).g, composer2, 0, 0, 131064);
                    LVButtonKt.b(0, 504, composer2, PaddingKt.m(tr.d("CancelProductCustomizationBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, 7), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.cta_continue), this.d, false, false, false);
                    LVButtonKt.b(0, 504, composer2, PaddingKt.m(tr.d("CancelProductCustomizationBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, 7), LVAppDesignKitTheme.b(composer2).f48449e, null, null, StringResources_androidKt.c(composer2, R.string.cta_go_back), this.f81236e, false, false, false);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("EditCustomizationBottomSheet$lambda$0");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer3, 0);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function1);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    TextKt.c(this.f81235c, PaddingKt.m(a.f(composer3, modifierC2, ComposeUiNode.Companion.d, "EditCustomizationBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 7), LVAppDesignKitTheme.c(composer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).g, composer3, 0, 0, 131064);
                    LVButtonKt.b(0, 504, composer3, PaddingKt.m(tr.d("EditCustomizationBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48415c, 7), LVAppDesignKitTheme.b(composer3).f48446a, null, null, StringResources_androidKt.c(composer3, R.string.cta_edit_personalization), this.d, false, false, false);
                    LVButtonKt.b(0, 504, composer3, PaddingKt.m(tr.d("EditCustomizationBottomSheet$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).g, 7), LVAppDesignKitTheme.b(composer3).f48449e, null, null, StringResources_androidKt.c(composer3, R.string.cta_delete_personalization), this.f81236e, false, false, false);
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
        }
    }
}
