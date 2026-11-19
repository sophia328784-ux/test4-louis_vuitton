package defpackage;

import android.content.ClipboardManager;
import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarStyle;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCartLocalProviderKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatSessionUiModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j0 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71244b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f71245c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71247f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71248h;

    public /* synthetic */ j0(AICompanionViewState aICompanionViewState, Function0 function0, HapticFeedback hapticFeedback, ClipboardManager clipboardManager, Function0 function1, FocusRequester focusRequester) {
        this.d = aICompanionViewState;
        this.f71245c = function0;
        this.f71247f = hapticFeedback;
        this.g = clipboardManager;
        this.f71246e = function1;
        this.f71248h = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2;
        boolean z;
        int i3 = this.f71244b;
        Function0 function0 = this.f71245c;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f71246e;
        Object obj6 = this.f71248h;
        Object obj7 = this.g;
        Object obj8 = this.f71247f;
        Object obj9 = this.d;
        switch (i3) {
            case 0:
                AICompanionViewState aICompanionViewState = (AICompanionViewState) obj9;
                HapticFeedback hapticFeedback = (HapticFeedback) obj8;
                ClipboardManager clipboardManager = (ClipboardManager) obj7;
                Function0 function1 = (Function0) obj5;
                FocusRequester focusRequester = (FocusRequester) obj6;
                TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                Composer composer = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                topBarActionScope.getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionChatScreen$lambda$3$0");
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer, 0);
                int iHashCode = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                Modifier modifierC = ComposedModifierKt.c(composer, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function2 = ComposeUiNode.Companion.f9641b;
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function2);
                } else {
                    composer.o();
                }
                Updater.c(composer, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer, ComposeUiNode.Companion.f9645h);
                Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                ChatSessionUiModel chatSessionUiModel = aICompanionViewState.d;
                if (chatSessionUiModel.f52909b.isEmpty()) {
                    i2 = 234881024;
                    z = true;
                    composer.L(-1142290619);
                    composer.F();
                } else {
                    composer.L(-1143087288);
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("AICompanionChatScreen$lambda$3$0"), "aiCompanion_newConversation_button");
                    int i4 = LVAppDesignKitTheme.g(composer).N1;
                    i2 = 234881024;
                    String strC = StringResources_androidKt.c(composer, R.string.companion_new_conversation);
                    boolean zK = composer.K(function0);
                    z = true;
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new l0(function0, focusRequester, 0);
                        composer.q(objX);
                    }
                    TopBarActionScope.ComposeDefaultImpls.a(modifierE, i4, strC, (Function0) objX, LVColorScheme.DEFAULT, FloatingTopBarStyle.Secondary, null, !aICompanionViewState.f52897h, topBarActionScope, composer, ((iIntValue << 24) & 234881024) | 221184, 64);
                    topBarActionScope = topBarActionScope;
                    composer.F();
                }
                if (!aICompanionViewState.g || chatSessionUiModel.f52908a == null) {
                    composer.L(-1141331355);
                    composer.F();
                } else {
                    Modifier modifierI = PaddingKt.i(pq0.j(-1142130752, composer, "AICompanionChatScreen$lambda$3$0"), LVAppDesignKitTheme.l(composer).f48416e);
                    boolean zY = composer.y(hapticFeedback) | composer.y(aICompanionViewState) | composer.y(clipboardManager);
                    Object objX2 = composer.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new q(hapticFeedback, aICompanionViewState, clipboardManager, 3);
                        composer.q(objX2);
                    }
                    TextKt.c(chatSessionUiModel.f52908a, ModifierExtKt.c(modifierI, false, null, null, (Function0) objX2, 31), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                    composer.F();
                }
                TopBarActionScope.ComposeDefaultImpls.a(RowScopeInstance.f5040a.a(ModifierExtKt.e(new DTFunctionNameModifier("AICompanionChatScreen$lambda$3$0"), "aiCompanion_history_button"), 1.0f, z), LVAppDesignKitTheme.g(composer).b1, StringResources_androidKt.c(composer, R.string.alt_history), function1, LVColorScheme.DEFAULT, FloatingTopBarStyle.Secondary, null, false, topBarActionScope, composer, ((iIntValue << 24) & i2) | 221184, 192);
                composer.r();
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2).getF5031b());
                int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2).getD());
                SystemIcons.f43533b.getClass();
                ((MainNavigationState) obj9).g(SystemIcons.f43534c);
                LVCartLocalProviderKt.a(ComposableLambdaKt.b(-1328894084, new uj((qb0) obj5, (Context) obj8, (Function3) obj7, iB, iB2, this.f71245c, (ContributionLinkNavigator) obj6), composer2), composer2, 6);
                return Unit.f71739a;
            case 2:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj9;
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj5;
                NavHostController navHostController = (NavHostController) obj8;
                Function1 function3 = (Function1) obj7;
                MutableState mutableState = (MutableState) obj6;
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                SheetValue sheetValue = (SheetValue) mutableState.getF10755b();
                Object objX3 = composer3.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new j6(12, mutableState);
                    composer3.q(objX3);
                }
                Function1 function4 = (Function1) objX3;
                boolean zY2 = composer3.y(storeModeViewModel) | composer3.K(function0);
                Object objX4 = composer3.x();
                if (zY2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new pk(storeModeViewModel, function0, 0);
                    composer3.q(objX4);
                }
                Function0 function5 = (Function0) objX4;
                boolean zY3 = composer3.y(storeModeViewModel) | composer3.y(navHostController);
                Object objX5 = composer3.x();
                if (zY3 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new f0(storeModeViewModel, navHostController, 25);
                    composer3.q(objX5);
                }
                Function2 function6 = (Function2) objX5;
                boolean zY4 = composer3.y(storeModeViewModel) | composer3.K(function3);
                Object objX6 = composer3.x();
                if (zY4 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new vg(storeModeViewModel, function3, 5);
                    composer3.q(objX6);
                }
                Function1 function7 = (Function1) objX6;
                boolean zY5 = composer3.y(storeModeViewModel);
                Object objX7 = composer3.x();
                if (zY5 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new qk(storeModeViewModel, 0);
                    composer3.q(objX7);
                }
                CatalogStoreModeKt.b(storeModeViewModel, storeModeViewState, sheetValue, function4, function5, function6, function7, (Function0) objX7, composer3, 3072);
                return Unit.f71739a;
            default:
                StoreModeViewState storeModeViewState2 = (StoreModeViewState) obj9;
                StoreModeViewModel storeModeViewModel2 = (StoreModeViewModel) obj8;
                NavHostController navHostController2 = (NavHostController) obj7;
                Function1 function8 = (Function1) obj6;
                Function0 function9 = (Function0) obj5;
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f3 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                boolean zY6 = composer4.y(storeModeViewModel2) | composer4.y(navHostController2);
                Object objX8 = composer4.x();
                if (zY6 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new ok(storeModeViewModel2, navHostController2, 5);
                    composer4.q(objX8);
                }
                CatalogStoreModeKt.c(null, storeModeViewState2, (Function0) objX8, function8, this.f71245c, function9, composer4, 0);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ j0(MainNavigationState mainNavigationState, qb0 qb0Var, Context context, Function3 function3, Function0 function0, ContributionLinkNavigator contributionLinkNavigator) {
        this.d = mainNavigationState;
        this.f71246e = qb0Var;
        this.f71247f = context;
        this.g = function3;
        this.f71245c = function0;
        this.f71248h = contributionLinkNavigator;
    }

    public /* synthetic */ j0(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, Function0 function0, NavHostController navHostController, Function1 function1, MutableState mutableState) {
        this.d = storeModeViewModel;
        this.f71246e = storeModeViewState;
        this.f71245c = function0;
        this.f71247f = navHostController;
        this.g = function1;
        this.f71248h = mutableState;
    }

    public /* synthetic */ j0(StoreModeViewState storeModeViewState, StoreModeViewModel storeModeViewModel, NavHostController navHostController, Function1 function1, Function0 function0, Function0 function2) {
        this.d = storeModeViewState;
        this.f71247f = storeModeViewModel;
        this.g = navHostController;
        this.f71248h = function1;
        this.f71245c = function0;
        this.f71246e = function2;
    }
}
