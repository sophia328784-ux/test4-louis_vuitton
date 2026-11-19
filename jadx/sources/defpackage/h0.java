package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatHeaderKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionPromptSuggestionsKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionSearchBarKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatSessionUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.android.presentation.screen.options.settings.components.EditSettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.components.ProfileConsentCardKt;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsViewState;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.t3;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69535b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69536c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f69538f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69541j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69542k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ h0(LVModalBottomSheetState lVModalBottomSheetState, LVModalBottomSheetState lVModalBottomSheetState2, Function0 function0, SettingsViewState settingsViewState, Function0 function1, Function0 function2, Function1 function3, PrivacyViewState privacyViewState, Function0 function4, Function0 function5, Function0 function6, MutableState mutableState, Function0 function7) {
        this.l = lVModalBottomSheetState;
        this.g = lVModalBottomSheetState2;
        this.f69536c = function0;
        this.f69539h = settingsViewState;
        this.d = function1;
        this.f69537e = function2;
        this.f69538f = function3;
        this.f69540i = privacyViewState;
        this.f69541j = function4;
        this.f69542k = function5;
        this.m = function6;
        this.n = mutableState;
        this.o = function7;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        int i2;
        String str;
        final LVModalBottomSheetState lVModalBottomSheetState;
        Composer composer2;
        MutableState mutableState;
        LVModalBottomSheetState lVModalBottomSheetState2;
        int i3 = this.f69535b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.o;
        Object obj5 = this.n;
        Object obj6 = this.m;
        Object obj7 = this.f69542k;
        Object obj8 = this.f69541j;
        Object obj9 = this.f69540i;
        Object obj10 = this.f69537e;
        Object obj11 = this.f69539h;
        Object obj12 = this.g;
        Object obj13 = this.l;
        switch (i3) {
            case 0:
                AICompanionViewState aICompanionViewState = (AICompanionViewState) obj13;
                Function2 function2 = (Function2) obj5;
                Function1 function1 = (Function1) obj12;
                Function1 function3 = (Function1) obj11;
                Function1 function4 = (Function1) obj9;
                Function1 function5 = (Function1) obj8;
                Function1 function6 = (Function1) obj7;
                FocusRequester focusRequester = (FocusRequester) obj4;
                Function0 function0 = (Function0) obj10;
                Function1 function7 = (Function1) obj6;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionChatScreen$lambda$5");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierA = WindowInsetsPadding_androidKt.a(WindowInsetsPaddingKt.b(dTFunctionNameModifier.o(fillElement), WindowInsetsKt.d(paddingValues.getD(), 7)));
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                    float fG = PaddingKt.g(paddingValues, (LayoutDirection) composer3.k(staticProvidableCompositionLocal));
                    float f2 = PaddingKt.f(paddingValues, (LayoutDirection) composer3.k(staticProvidableCompositionLocal));
                    float d = paddingValues.getD();
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierD = WindowInsetsPadding_androidKt.d(PaddingKt.l(modifierA, fG, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, d));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function8 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function8);
                    } else {
                        composer3.o();
                    }
                    Function2 function9 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, measurePolicyD, function9);
                    Function2 function10 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN, function10);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function11 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf, function11);
                    Function1 function12 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function12);
                    Function2 function13 = ComposeUiNode.Companion.d;
                    Updater.c(composer3, modifierC, function13);
                    ChatSessionUiModel chatSessionUiModel = aICompanionViewState.d;
                    List list = chatSessionUiModel.f52909b;
                    boolean zIsEmpty = list.isEmpty();
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                    if (zIsEmpty) {
                        AICompanionChatHeaderKt.a(0, composer3, PaddingKt.m(boxScopeInstance.g(pq0.j(-1271463786, composer3, "AICompanionChatScreen$lambda$5"), Alignment.Companion.f8585c), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer3).C, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), this.f69536c);
                        composer3.F();
                        composer = composer3;
                    } else {
                        AICompanionChatMessagesKt.b(boxScopeInstance.g(pq0.j(-1271147679, composer3, "AICompanionChatScreen$lambda$5"), Alignment.Companion.f8585c).o(fillElement), chatSessionUiModel.f52909b, aICompanionViewState.f52897h, this.f69538f, function2, function1, function3, function4, function5, composer3, 0, 0);
                        composer = composer3;
                        composer.F();
                    }
                    Modifier modifierG = boxScopeInstance.g(tr.d("AICompanionChatScreen$lambda$5", 1.0f), Alignment.Companion.f8589i);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer, 0);
                    int iHashCode2 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer, modifierG);
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function8);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, function9);
                    Updater.c(composer, persistentCompositionLocalMapN2, function10);
                    cj.s(iHashCode2, composer, function11, composer, function12);
                    Updater.c(composer, modifierC2, function13);
                    if (list.isEmpty()) {
                        Modifier modifierE = ModifierExtKt.e(LVAppDesignKitTheme.d(composer).f48388h, LVAppDesignKitTheme.d(composer).x, LVAppDesignKitTheme.d(composer).f48386e, 2, LVAppDesignKitTheme.c(composer).f48361b.f48376c, pq0.j(845931219, composer, "AICompanionChatScreen$lambda$5"));
                        List list2 = aICompanionViewState.f52895e;
                        boolean zK = composer.K(function6);
                        Object objX = composer.x();
                        if (zK || objX == composer$Companion$Empty$1) {
                            i2 = 0;
                            objX = new k0(function6, 0);
                            composer.q(objX);
                        } else {
                            i2 = 0;
                        }
                        AICompanionPromptSuggestionsKt.b(modifierE, list2, (Function1) objX, composer, i2);
                        composer.F();
                    } else {
                        composer.L(846552025);
                        composer.F();
                    }
                    Composer composer4 = composer;
                    AICompanionSearchBarKt.a(FocusRequesterModifierKt.a(PaddingKt.l(ModifierExtKt.e(LVAppDesignKitTheme.d(composer).f48388h, LVAppDesignKitTheme.d(composer).x, LVAppDesignKitTheme.d(composer).f48386e, 2, LVAppDesignKitTheme.c(composer).f48361b.f48376c, tr.d("AICompanionChatScreen$lambda$5", 1.0f)), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).d, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e), focusRequester), aICompanionViewState.f52894c, list.isEmpty() ? R.string.companion_placeholder_home : R.string.companion_placeholder_conversation, aICompanionViewState.f52897h, this.d, function0, function7, composer4, 0);
                    composer4.r();
                    composer4.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 1:
                final SettingsViewState settingsViewState = (SettingsViewState) obj13;
                LVModalBottomSheetState lVModalBottomSheetState3 = (LVModalBottomSheetState) obj6;
                Function0 function14 = (Function0) obj10;
                final Function1 function15 = (Function1) obj12;
                final Function1 function16 = (Function1) obj11;
                Function1 function17 = (Function1) obj9;
                final Function1 function18 = (Function1) obj8;
                Function1 function19 = (Function1) obj7;
                final Function0 function20 = (Function0) obj5;
                final Function0 function21 = (Function0) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer5.K(paddingValues2) ? 4 : 2;
                }
                if (composer5.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("EditSettingsScreen$lambda$2");
                    FillElement fillElement2 = SizeKt.f5052c;
                    Modifier modifierD2 = ScrollKt.d(BackgroundKt.b(PaddingKt.h(dTFunctionNameModifier2.o(fillElement2), paddingValues2), LVAppDesignKitTheme.c(composer5).f48361b.f48374a, RectangleShapeKt.f8913a), ScrollKt.b(composer5), false, 14);
                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$SpaceBetween$1, horizontal, composer5, 6);
                    int iHashCode3 = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer5.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer5, modifierD2);
                    ComposeUiNode.b0.getClass();
                    Function0 function22 = ComposeUiNode.Companion.f9641b;
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function22);
                    } else {
                        composer5.o();
                    }
                    Function2 function23 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer5, columnMeasurePolicyA2, function23);
                    Function2 function24 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer5, persistentCompositionLocalMapN3, function24);
                    Integer numValueOf2 = Integer.valueOf(iHashCode3);
                    Function2 function25 = ComposeUiNode.Companion.g;
                    Updater.c(composer5, numValueOf2, function25);
                    Function1 function26 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer5, function26);
                    Function2 function27 = ComposeUiNode.Companion.d;
                    Modifier modifierI = PaddingKt.i(a.f(composer5, modifierC3, function27, "EditSettingsScreen$lambda$2"), LVAppDesignKitTheme.l(composer5).f48416e);
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer5).f48416e), horizontal, composer5, 0);
                    int iHashCode4 = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer5.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer5, modifierI);
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function22);
                    } else {
                        composer5.o();
                    }
                    Updater.c(composer5, columnMeasurePolicyA3, function23);
                    Updater.c(composer5, persistentCompositionLocalMapN4, function24);
                    cj.s(iHashCode4, composer5, function25, composer5, function26);
                    Updater.c(composer5, modifierC4, function27);
                    String strC = StringResources_androidKt.c(composer5, R.string.mylv_myprofile_settingsbrick_contactbyphone);
                    UserConsentsUiModel userConsentsUiModel = settingsViewState.f60069c;
                    boolean z = settingsViewState.m;
                    boolean z2 = ((MarketingUserConsentsUiModel) userConsentsUiModel.f59457b.getF10755b()).f59406a;
                    boolean zY = composer5.y(settingsViewState);
                    final Function1 function28 = this.f69538f;
                    boolean zK2 = zY | composer5.K(function28);
                    Object objX2 = composer5.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        final int i4 = 0;
                        objX2 = new Function1() { // from class: yv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj14) {
                                int i5 = i4;
                                Function1 function29 = function28;
                                SettingsViewState settingsViewState2 = settingsViewState;
                                switch (i5) {
                                    case 0:
                                        Boolean bool = (Boolean) obj14;
                                        boolean zBooleanValue = bool.booleanValue();
                                        MutableState mutableState2 = settingsViewState2.f60069c.f59457b;
                                        mutableState2.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState2.getF10755b(), zBooleanValue, false, false, false, null, null, null, 126));
                                        function29.invoke(bool);
                                        break;
                                    case 1:
                                        Boolean bool2 = (Boolean) obj14;
                                        boolean zBooleanValue2 = bool2.booleanValue();
                                        MutableState mutableState3 = settingsViewState2.f60069c.f59457b;
                                        mutableState3.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState3.getF10755b(), false, false, false, zBooleanValue2, null, null, null, 119));
                                        function29.invoke(bool2);
                                        break;
                                    case 2:
                                        Boolean bool3 = (Boolean) obj14;
                                        boolean zBooleanValue3 = bool3.booleanValue();
                                        MutableState mutableState4 = settingsViewState2.f60069c.f59457b;
                                        mutableState4.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState4.getF10755b(), false, zBooleanValue3, false, false, null, null, null, 125));
                                        function29.invoke(bool3);
                                        break;
                                    default:
                                        Boolean bool4 = (Boolean) obj14;
                                        bool4.getClass();
                                        MutableState mutableState5 = settingsViewState2.f60069c.f59457b;
                                        mutableState5.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState5.getF10755b(), false, false, false, false, null, null, bool4, 63));
                                        function29.invoke(bool4);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer5.q(objX2);
                    }
                    EditSettingsComposableKt.c(null, strC, z2, false, "editContactPrivacySettings_contactByPhone_text", "editContactPrivacySettings_contactByPhone_button", (Function1) objX2, composer5, 221184, 9);
                    String strC2 = StringResources_androidKt.c(composer5, R.string.mylv_myprofile_settingsbrick_contactbysms);
                    MutableState mutableState2 = userConsentsUiModel.f59457b;
                    boolean z3 = ((MarketingUserConsentsUiModel) mutableState2.getF10755b()).d;
                    boolean zY2 = composer5.y(settingsViewState) | composer5.K(function15);
                    Object objX3 = composer5.x();
                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                        final int i5 = 1;
                        objX3 = new Function1() { // from class: yv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj14) {
                                int i6 = i5;
                                Function1 function29 = function15;
                                SettingsViewState settingsViewState2 = settingsViewState;
                                switch (i6) {
                                    case 0:
                                        Boolean bool = (Boolean) obj14;
                                        boolean zBooleanValue = bool.booleanValue();
                                        MutableState mutableState3 = settingsViewState2.f60069c.f59457b;
                                        mutableState3.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState3.getF10755b(), zBooleanValue, false, false, false, null, null, null, 126));
                                        function29.invoke(bool);
                                        break;
                                    case 1:
                                        Boolean bool2 = (Boolean) obj14;
                                        boolean zBooleanValue2 = bool2.booleanValue();
                                        MutableState mutableState4 = settingsViewState2.f60069c.f59457b;
                                        mutableState4.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState4.getF10755b(), false, false, false, zBooleanValue2, null, null, null, 119));
                                        function29.invoke(bool2);
                                        break;
                                    case 2:
                                        Boolean bool3 = (Boolean) obj14;
                                        boolean zBooleanValue3 = bool3.booleanValue();
                                        MutableState mutableState5 = settingsViewState2.f60069c.f59457b;
                                        mutableState5.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState5.getF10755b(), false, zBooleanValue3, false, false, null, null, null, 125));
                                        function29.invoke(bool3);
                                        break;
                                    default:
                                        Boolean bool4 = (Boolean) obj14;
                                        bool4.getClass();
                                        MutableState mutableState6 = settingsViewState2.f60069c.f59457b;
                                        mutableState6.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState6.getF10755b(), false, false, false, false, null, null, bool4, 63));
                                        function29.invoke(bool4);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer5.q(objX3);
                    }
                    EditSettingsComposableKt.c(null, strC2, z3, false, "editContactPrivacySettings_contactBySMS_text", "editContactPrivacySettings_contactBySMS_button", (Function1) objX3, composer5, 221184, 9);
                    String strC3 = StringResources_androidKt.c(composer5, R.string.mylv_myprofile_settingsbrick_contactbymail);
                    boolean z4 = ((MarketingUserConsentsUiModel) mutableState2.getF10755b()).f59407b;
                    boolean zY3 = composer5.y(settingsViewState) | composer5.K(function16);
                    Object objX4 = composer5.x();
                    if (zY3 || objX4 == composer$Companion$Empty$1) {
                        final int i6 = 2;
                        objX4 = new Function1() { // from class: yv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj14) {
                                int i7 = i6;
                                Function1 function29 = function16;
                                SettingsViewState settingsViewState2 = settingsViewState;
                                switch (i7) {
                                    case 0:
                                        Boolean bool = (Boolean) obj14;
                                        boolean zBooleanValue = bool.booleanValue();
                                        MutableState mutableState3 = settingsViewState2.f60069c.f59457b;
                                        mutableState3.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState3.getF10755b(), zBooleanValue, false, false, false, null, null, null, 126));
                                        function29.invoke(bool);
                                        break;
                                    case 1:
                                        Boolean bool2 = (Boolean) obj14;
                                        boolean zBooleanValue2 = bool2.booleanValue();
                                        MutableState mutableState4 = settingsViewState2.f60069c.f59457b;
                                        mutableState4.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState4.getF10755b(), false, false, false, zBooleanValue2, null, null, null, 119));
                                        function29.invoke(bool2);
                                        break;
                                    case 2:
                                        Boolean bool3 = (Boolean) obj14;
                                        boolean zBooleanValue3 = bool3.booleanValue();
                                        MutableState mutableState5 = settingsViewState2.f60069c.f59457b;
                                        mutableState5.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState5.getF10755b(), false, zBooleanValue3, false, false, null, null, null, 125));
                                        function29.invoke(bool3);
                                        break;
                                    default:
                                        Boolean bool4 = (Boolean) obj14;
                                        bool4.getClass();
                                        MutableState mutableState6 = settingsViewState2.f60069c.f59457b;
                                        mutableState6.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState6.getF10755b(), false, false, false, false, null, null, bool4, 63));
                                        function29.invoke(bool4);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer5.q(objX4);
                    }
                    EditSettingsComposableKt.c(null, strC3, z4, false, "editContactPrivacySettings_contactByMail_text", "editContactPrivacySettings_contactByMail_button", (Function1) objX4, composer5, 221184, 9);
                    String strC4 = StringResources_androidKt.c(composer5, R.string.mylv_myprofile_settingsbrick_newsletter);
                    boolean z5 = ((MarketingUserConsentsUiModel) mutableState2.getF10755b()).f59408c;
                    boolean zY4 = composer5.y(settingsViewState) | composer5.K(function17) | composer5.K(function18);
                    Object objX5 = composer5.x();
                    if (zY4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new n0(settingsViewState, function17, function18, 26);
                        composer5.q(objX5);
                    }
                    EditSettingsComposableKt.c(null, strC4, z5, false, "editContactPrivacySettings_contactByNewsletter_text", "editContactPrivacySettings_contactByNewsletter_button", (Function1) objX5, composer5, 221184, 9);
                    if (settingsViewState.f60071f) {
                        composer5.L(-1800926336);
                        String strC5 = StringResources_androidKt.c(composer5, R.string.mylv_settings_lva_sms_title);
                        Boolean bool = ((MarketingUserConsentsUiModel) mutableState2.getF10755b()).f59409e;
                        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                        lVModalBottomSheetState = lVModalBottomSheetState3;
                        boolean zY5 = composer5.y(settingsViewState) | composer5.y(lVModalBottomSheetState) | composer5.K(function19);
                        Object objX6 = composer5.x();
                        if (zY5 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new n0(settingsViewState, lVModalBottomSheetState, function19, 27);
                            composer5.q(objX6);
                        }
                        EditSettingsComposableKt.c(null, strC5, zBooleanValue, false, "editContactPrivacySettings_contactByMarketingSms_text", "editContactPrivacySettings_contactByMarketingSms_button", (Function1) objX6, composer5, 221184, 9);
                        str = "EditSettingsScreen$lambda$2";
                        TextKt.c(StringResources_androidKt.c(composer5, R.string.mylv_lva_sms_description), tr.d(str, 1.0f), LVAppDesignKitTheme.c(composer5).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).f48427h, composer5, 48, 0, 131064);
                        if (settingsViewState.l) {
                            TextKt.c(StringResources_androidKt.c(composer5, R.string.mylv_lva_sms_phone_number_mandatory_contact_and_privacy_settings_description_disclaimer2), pq0.h(1.0f, -1799449558, composer5, str), LVAppDesignKitTheme.c(composer5).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).f48427h, composer5, 48, 0, 131064);
                            composer5.F();
                        } else {
                            composer5.L(-1798942429);
                            composer5.F();
                        }
                        composer5.F();
                    } else {
                        str = "EditSettingsScreen$lambda$2";
                        composer5.L(-1798924573);
                        composer5.F();
                    }
                    if (z) {
                        lVModalBottomSheetState = lVModalBottomSheetState3;
                        composer5.L(-1798762815);
                        String strC6 = StringResources_androidKt.c(composer5, R.string.cnil_email_tracking_consent_title);
                        Boolean bool2 = ((MarketingUserConsentsUiModel) mutableState2.getF10755b()).g;
                        boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                        boolean z6 = z && ((MarketingUserConsentsUiModel) mutableState2.getF10755b()).f59408c;
                        boolean zY6 = composer5.y(settingsViewState) | composer5.K(function18);
                        Object objX7 = composer5.x();
                        if (zY6 || objX7 == composer$Companion$Empty$1) {
                            final int i7 = 3;
                            objX7 = new Function1() { // from class: yv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj14) {
                                    int i8 = i7;
                                    Function1 function29 = function18;
                                    SettingsViewState settingsViewState2 = settingsViewState;
                                    switch (i8) {
                                        case 0:
                                            Boolean bool3 = (Boolean) obj14;
                                            boolean zBooleanValue3 = bool3.booleanValue();
                                            MutableState mutableState3 = settingsViewState2.f60069c.f59457b;
                                            mutableState3.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState3.getF10755b(), zBooleanValue3, false, false, false, null, null, null, 126));
                                            function29.invoke(bool3);
                                            break;
                                        case 1:
                                            Boolean bool4 = (Boolean) obj14;
                                            boolean zBooleanValue4 = bool4.booleanValue();
                                            MutableState mutableState4 = settingsViewState2.f60069c.f59457b;
                                            mutableState4.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState4.getF10755b(), false, false, false, zBooleanValue4, null, null, null, 119));
                                            function29.invoke(bool4);
                                            break;
                                        case 2:
                                            Boolean bool5 = (Boolean) obj14;
                                            boolean zBooleanValue5 = bool5.booleanValue();
                                            MutableState mutableState5 = settingsViewState2.f60069c.f59457b;
                                            mutableState5.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState5.getF10755b(), false, zBooleanValue5, false, false, null, null, null, 125));
                                            function29.invoke(bool5);
                                            break;
                                        default:
                                            Boolean bool6 = (Boolean) obj14;
                                            bool6.getClass();
                                            MutableState mutableState6 = settingsViewState2.f60069c.f59457b;
                                            mutableState6.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) mutableState6.getF10755b(), false, false, false, false, null, null, bool6, 63));
                                            function29.invoke(bool6);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer5.q(objX7);
                        }
                        EditSettingsComposableKt.c(null, strC6, zBooleanValue2, z6, "editContactPrivacySettings_contactByEmailTracking_text", "editContactPrivacySettings_contactByEmailTracking_button", (Function1) objX7, composer5, 221184, 1);
                        TextKt.c(StringResources_androidKt.c(composer5, R.string.mylv_cnil_email_tracking_consent_description), tr.d(str, 1.0f), LVAppDesignKitTheme.c(composer5).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).f48427h, composer5, 48, 0, 131064);
                        composer5.F();
                    } else {
                        lVModalBottomSheetState = lVModalBottomSheetState3;
                        composer5.L(-1797407805);
                        composer5.F();
                    }
                    composer5.r();
                    LVButtonKt.b(0, 376, composer5, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(PaddingKt.m(PaddingKt.k(SizeKt.d(new DTFunctionNameModifier(str), 1.0f), LVAppDesignKitTheme.l(composer5).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).g, 7), "editContactPrivacySettings_SaveCTA_button"), LVAppDesignKitTheme.b(composer5).f48446a, null, null, StringResources_androidKt.c(composer5, R.string.mylv_myprofile_myinfos_logininformation_editmail_savemodifications), function14, false, ((Boolean) this.d.mo47invoke()).booleanValue(), false);
                    composer5.r();
                    if (settingsViewState.f60067a) {
                        composer5.L(-1469761207);
                        ProgressViewKt.a(new DTFunctionNameModifier(str).o(fillElement2), 0L, false, composer5, 6, 6);
                        composer5.F();
                    } else {
                        composer5.L(-1469663185);
                        composer5.F();
                    }
                    if (lVModalBottomSheetState.a()) {
                        composer5.L(-1469571983);
                        String strC7 = StringResources_androidKt.c(composer5, R.string.alt_close);
                        Function0 function29 = this.f69536c;
                        boolean zK3 = composer5.K(function29);
                        Object objX8 = composer5.x();
                        if (zK3 || objX8 == composer$Companion$Empty$1) {
                            objX8 = new h1(function29, 25);
                            composer5.q(objX8);
                        }
                        LVModalBottomSheetKt.b(null, strC7, (Function0) objX8, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(1942298843, new Function3() { // from class: com.vuitton.android.presentation.screen.options.settings.components.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj14, Object obj15, Object obj16) {
                                Composer composer6 = (Composer) obj15;
                                int iIntValue3 = ((Integer) obj16).intValue();
                                ((ColumnScope) obj14).getClass();
                                if (composer6.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Unit unit = Unit.f71739a;
                                    Function0 function30 = function20;
                                    boolean zK4 = composer6.K(function30);
                                    Object objX9 = composer6.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zK4 || objX9 == composer$Companion$Empty$2) {
                                        objX9 = new EditSettingsComposableKt$EditSettingsScreen$3$3$1$1(function30, null);
                                        composer6.q(objX9);
                                    }
                                    EffectsKt.e(composer6, unit, (Function2) objX9);
                                    String strC8 = StringResources_androidKt.c(composer6, R.string.mylv_lva_sms_bottom_title);
                                    String strC9 = StringResources_androidKt.c(composer6, R.string.mylv_lva_sms_bottom_description);
                                    String strC10 = StringResources_androidKt.c(composer6, R.string.complete_your_profile_cta);
                                    Function0 function31 = function21;
                                    boolean zK5 = composer6.K(function31);
                                    LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState;
                                    boolean zY7 = zK5 | composer6.y(lVModalBottomSheetState4);
                                    Object objX10 = composer6.x();
                                    if (zY7 || objX10 == composer$Companion$Empty$2) {
                                        objX10 = new t3(function31, lVModalBottomSheetState4, 7);
                                        composer6.q(objX10);
                                    }
                                    LVModalBottomSheetKt.a(null, null, strC8, null, null, strC9, null, strC10, null, false, null, (Function0) objX10, null, false, null, null, null, false, null, composer6, 0, 0, 1046363);
                                } else {
                                    composer6.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer5), composer5, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer5.F();
                    } else {
                        composer5.L(-1468641425);
                        composer5.F();
                    }
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 2:
                RepairsBffViewState repairsBffViewState = (RepairsBffViewState) obj13;
                LVModalBottomSheetState lVModalBottomSheetState4 = (LVModalBottomSheetState) obj10;
                Function1 function30 = (Function1) obj12;
                MutableState mutableState3 = (MutableState) obj8;
                DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) obj7;
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj6;
                Function1 function31 = (Function1) obj11;
                Function3 function32 = (Function3) obj5;
                DistantRepairContactMethod distantRepairContactMethod = (DistantRepairContactMethod) obj4;
                Function1 function33 = (Function1) obj9;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer6.K(paddingValues3) ? 4 : 2;
                }
                if (composer6.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    CareServiceDetailUiModel careServiceDetailUiModel = repairsBffViewState.f64088h;
                    RepairDetailUiModel repairDetailUiModel = careServiceDetailUiModel != null ? careServiceDetailUiModel.o : null;
                    if (repairDetailUiModel == null) {
                        composer6.L(1108823776);
                        composer6.F();
                        composer2 = composer6;
                    } else {
                        Modifier modifierH = PaddingKt.h(BackgroundKt.b(pq0.j(1108823777, composer6, "RepairsDetailBffScreen$lambda$10").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer6).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues3);
                        boolean zK4 = composer6.K(function30);
                        Object objX9 = composer6.x();
                        if (zK4 || objX9 == composer$Companion$Empty$1) {
                            objX9 = new tf0(function30, 12);
                            composer6.q(objX9);
                        }
                        RepairDetailBffScreenKt.i(modifierH, repairDetailUiModel, this.f69538f, (Function0) objX9, composer6, 0);
                        composer2 = composer6;
                        composer2.F();
                    }
                    if (lVModalBottomSheetState4.a()) {
                        composer2.L(1109412715);
                        LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer2, R.string.alt_close), null, lVModalBottomSheetState4, null, 0L, false, null, ComposableLambdaKt.b(-1347138130, new f9(mutableState3, repairsBffViewState, distantRepairCalendarViewState, snackbarHostState, function31, function32, distantRepairContactMethod, function33, this.f69536c, this.d), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                        composer2.F();
                    } else {
                        composer2.L(1112307557);
                        composer2.F();
                    }
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            default:
                LVModalBottomSheetState lVModalBottomSheetState5 = (LVModalBottomSheetState) obj13;
                LVModalBottomSheetState lVModalBottomSheetState6 = (LVModalBottomSheetState) obj12;
                SettingsViewState settingsViewState2 = (SettingsViewState) obj11;
                Function0 function34 = (Function0) obj10;
                PrivacyViewState privacyViewState = (PrivacyViewState) obj9;
                Function0 function35 = (Function0) obj8;
                Function0 function36 = (Function0) obj7;
                Function0 function37 = (Function0) obj6;
                MutableState mutableState4 = (MutableState) obj5;
                Function0 function38 = (Function0) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer7.K(paddingValues4) ? 4 : 2;
                }
                if (composer7.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierD3 = ScrollKt.d(PaddingKt.k(WindowInsetsPadding_androidKt.b(PaddingKt.m(BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("SettingsScreen$lambda$5").o(SizeKt.f5052c), paddingValues4), LVAppDesignKitTheme.c(composer7).f48361b.f48375b, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48416e, 7)), LVAppDesignKitTheme.l(composer7).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(composer7), false, 14);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer7, 0);
                    int iHashCode5 = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer7.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer7, modifierD3);
                    ComposeUiNode.b0.getClass();
                    Function0 function39 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function39);
                    } else {
                        composer7.o();
                    }
                    Function2 function40 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer7, columnMeasurePolicyA4, function40);
                    Function2 function41 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer7, persistentCompositionLocalMapN5, function41);
                    Integer numValueOf3 = Integer.valueOf(iHashCode5);
                    Function2 function42 = ComposeUiNode.Companion.g;
                    Updater.c(composer7, numValueOf3, function42);
                    Function1 function43 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer7, function43);
                    Function2 function44 = ComposeUiNode.Companion.d;
                    SettingsComposableKt.g(PaddingKt.m(a.f(composer7, modifierC5, function44, "SettingsScreen$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), R.string.mylv_myprofile_settingsbrick_title, "contactPrivacySettings_contactSubtitle_text", "contactPrivacySettings_contactEdit_button", this.f69536c, composer7, 3456, 0);
                    SettingsComposableKt.c(settingsViewState2.f60068b, settingsViewState2.f60071f, settingsViewState2.m, composer7, 0);
                    if (settingsViewState2.d) {
                        composer7.L(-520262342);
                        Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("SettingsScreen$lambda$5"), "contactPrivacySettings_sharingPreferencesTitle_text");
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer7, 0);
                        int iHashCode6 = Long.hashCode(composer7.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer7.n();
                        Modifier modifierC6 = ComposedModifierKt.c(composer7, modifierE2);
                        if (composer7.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer7.B();
                        if (composer7.getS()) {
                            composer7.C(function39);
                        } else {
                            composer7.o();
                        }
                        Updater.c(composer7, rowMeasurePolicyA, function40);
                        Updater.c(composer7, persistentCompositionLocalMapN6, function41);
                        cj.s(iHashCode6, composer7, function42, composer7, function43);
                        SettingsComposableKt.g(PaddingKt.m(a.f(composer7, modifierC6, function44, "SettingsScreen$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), settingsViewState2.f60075k ? R.string.mylv_settings_gcm_title_canada_fr : R.string.mylv_settings_gcm_title, null, null, null, composer7, 0, 28);
                        composer7.r();
                        Boolean bool3 = ((MarketingUserConsentsUiModel) settingsViewState2.f60069c.f59457b.getF10755b()).f59410f;
                        boolean z7 = settingsViewState2.f60075k;
                        boolean zY7 = composer7.y(lVModalBottomSheetState5);
                        Function0 function45 = this.d;
                        boolean zK5 = zY7 | composer7.K(function45);
                        Object objX10 = composer7.x();
                        if (zK5 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new t3(lVModalBottomSheetState5, function45, 15);
                            composer7.q(objX10);
                        }
                        SettingsComposableKt.b(bool3, z7, (Function0) objX10, function34, this.f69538f, composer7, 0);
                        composer7.F();
                    } else {
                        composer7.L(-519214852);
                        composer7.F();
                    }
                    if (privacyViewState.f63410a != PrivacyType.NONE) {
                        SettingsComposableKt.g(PaddingKt.m(pq0.j(-519102849, composer7, "SettingsScreen$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), R.string.ccpa_title, "contactPrivacySettings_yourPrivacySettingSubtitle_text", privacyViewState.f63410a == PrivacyType.PIPL ? "contactPrivacySettings_yourPrivacySettingEdit_button" : null, null, composer7, KyberEngine.KyberPolyBytes, 16);
                        Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("SettingsScreen$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        List list3 = privacyViewState.f63411b;
                        PrivacyType privacyType = privacyViewState.f63410a;
                        boolean z8 = privacyViewState.f63414f;
                        lVModalBottomSheetState2 = lVModalBottomSheetState6;
                        boolean zK6 = composer7.K(function35) | composer7.y(lVModalBottomSheetState2);
                        Object objX11 = composer7.x();
                        if (zK6 || objX11 == composer$Companion$Empty$1) {
                            mutableState = mutableState4;
                            objX11 = new ju(lVModalBottomSheetState2, function35, mutableState, 3);
                            composer7.q(objX11);
                        } else {
                            mutableState = mutableState4;
                        }
                        Function0 function46 = (Function0) objX11;
                        boolean zK7 = composer7.K(function36) | composer7.y(lVModalBottomSheetState2);
                        Object objX12 = composer7.x();
                        if (zK7 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new ju(lVModalBottomSheetState2, function36, mutableState, 4);
                            composer7.q(objX12);
                        }
                        ProfileConsentCardKt.b(modifierM, list3, privacyType, z8, function46, (Function0) objX12, function37, function34, composer7, 0);
                        composer7.F();
                    } else {
                        mutableState = mutableState4;
                        lVModalBottomSheetState2 = lVModalBottomSheetState6;
                        composer7.L(-517691140);
                        composer7.F();
                    }
                    composer7.r();
                    if (lVModalBottomSheetState5.a()) {
                        composer7.L(118605006);
                        String strC8 = StringResources_androidKt.c(composer7, R.string.alt_close);
                        boolean zY8 = composer7.y(lVModalBottomSheetState5);
                        Object objX13 = composer7.x();
                        if (zY8 || objX13 == composer$Companion$Empty$1) {
                            objX13 = new t8(lVModalBottomSheetState5, 22);
                            composer7.q(objX13);
                        }
                        LVModalBottomSheetKt.b(null, strC8, (Function0) objX13, lVModalBottomSheetState5, null, 0L, false, null, ComposableLambdaKt.b(-2073581749, new kv0(function38, 0), composer7), composer7, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer7.F();
                    } else {
                        composer7.L(119037766);
                        composer7.F();
                    }
                    if (lVModalBottomSheetState2.a()) {
                        composer7.L(119140407);
                        String strC9 = StringResources_androidKt.c(composer7, R.string.alt_close);
                        boolean zY9 = composer7.y(lVModalBottomSheetState2);
                        Object objX14 = composer7.x();
                        if (zY9 || objX14 == composer$Companion$Empty$1) {
                            objX14 = new m8(lVModalBottomSheetState2, mutableState, 12);
                            composer7.q(objX14);
                        }
                        LVModalBottomSheetKt.b(null, strC9, (Function0) objX14, lVModalBottomSheetState2, null, 0L, false, null, ComposableLambdaKt.b(1344673524, new qp0(lVModalBottomSheetState2, mutableState, 1), composer7), composer7, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer7.F();
                    } else {
                        composer7.L(119841286);
                        composer7.F();
                    }
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ h0(AICompanionViewState aICompanionViewState, Function0 function0, Function1 function1, Function2 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function1 function7, FocusRequester focusRequester, Function0 function8, Function0 function9, Function1 function10) {
        this.l = aICompanionViewState;
        this.f69536c = function0;
        this.f69538f = function1;
        this.n = function2;
        this.g = function3;
        this.f69539h = function4;
        this.f69540i = function5;
        this.f69541j = function6;
        this.f69542k = function7;
        this.o = focusRequester;
        this.d = function8;
        this.f69537e = function9;
        this.m = function10;
    }

    public /* synthetic */ h0(SettingsViewState settingsViewState, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function1 function7, Function1 function8, Function0 function9, Function0 function10) {
        this.l = settingsViewState;
        this.m = lVModalBottomSheetState;
        this.f69536c = function0;
        this.d = function1;
        this.f69537e = function2;
        this.f69538f = function3;
        this.g = function4;
        this.f69539h = function5;
        this.f69540i = function6;
        this.f69541j = function7;
        this.f69542k = function8;
        this.n = function9;
        this.o = function10;
    }

    public /* synthetic */ h0(RepairsBffViewState repairsBffViewState, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, Function1 function2, MutableState mutableState, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function1 function3, Function3 function4, DistantRepairContactMethod distantRepairContactMethod, Function1 function5, Function0 function0, Function0 function6) {
        this.l = repairsBffViewState;
        this.f69537e = lVModalBottomSheetState;
        this.f69538f = function1;
        this.g = function2;
        this.f69541j = mutableState;
        this.f69542k = distantRepairCalendarViewState;
        this.m = snackbarHostState;
        this.f69539h = function3;
        this.n = function4;
        this.o = distantRepairContactMethod;
        this.f69540i = function5;
        this.f69536c = function0;
        this.d = function6;
    }
}
