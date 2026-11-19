package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AutofillNode;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.input.TextFieldValue;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.components.components.LVTooltipKt;
import com.vuitton.android.designkit.components.components.TooltipGravity;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l4 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75933b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f75934c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f75935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f75936f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f75937h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f75938i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f75939j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f75940k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ l4(AddressAutocompleteViewState addressAutocompleteViewState, Function0 function0, FocusRequester focusRequester, Function1 function1, Function0 function2, Function2 function3, AddressAutocompleteScreenContext addressAutocompleteScreenContext, Function1 function4, MutableState mutableState, MutableState mutableState2, boolean z) {
        this.g = addressAutocompleteViewState;
        this.d = function0;
        this.f75938i = focusRequester;
        this.f75935e = function1;
        this.f75937h = function2;
        this.f75939j = function3;
        this.f75940k = addressAutocompleteScreenContext;
        this.f75936f = function4;
        this.l = mutableState;
        this.m = mutableState2;
        this.f75934c = z;
    }

    /* JADX WARN: Type inference failed for: r15v10, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v9 */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        ?? r15;
        long j2;
        int i2 = this.f75933b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.m;
        Object obj5 = this.l;
        Object obj6 = this.f75940k;
        Function function = this.f75939j;
        Object obj7 = this.f75938i;
        Object obj8 = this.f75937h;
        Object obj9 = this.g;
        boolean z = this.f75934c;
        switch (i2) {
            case 0:
                AddressAutocompleteViewState addressAutocompleteViewState = (AddressAutocompleteViewState) obj9;
                FocusRequester focusRequester = (FocusRequester) obj7;
                Function0 function0 = (Function0) obj8;
                Function2 function2 = (Function2) function;
                AddressAutocompleteScreenContext addressAutocompleteScreenContext = (AddressAutocompleteScreenContext) obj6;
                MutableState mutableState = (MutableState) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("AddressAutocompleteScreen$lambda$10").o(SizeKt.f5052c), paddingValues);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
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
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer, columnMeasurePolicyA, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Modifier modifierK = PaddingKt.k(a.f(composer, modifierC, function7, "AddressAutocompleteScreen$lambda$10"), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    AutofillNode autofillNode = addressAutocompleteViewState.f52119e;
                    List list = addressAutocompleteViewState.d;
                    Modifier modifierB = ModifierExtKt.b(modifierK, autofillNode != null, new f0(addressAutocompleteViewState, mutableState, 2), composer, 0);
                    Function0 function8 = this.d;
                    boolean zK = composer.K(function8);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new y2(function8, 1);
                        composer.q(objX);
                    }
                    Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(FocusRequesterModifierKt.a(FocusChangedModifierKt.a(modifierB, (Function1) objX), focusRequester), "addressAutocomplete_searchBar_textField");
                    String str = ((TextFieldValue) mutableState2.getF10755b()).f10840a.f10420c;
                    Function1 function9 = this.f75935e;
                    boolean zK2 = composer.K(function9);
                    Object objX2 = composer.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new x3(function9, mutableState2, 1);
                        composer.q(objX2);
                    }
                    Function1 function10 = (Function1) objX2;
                    boolean zK3 = composer.K(function9) | composer.K(function0);
                    Object objX3 = composer.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new q(function9, function0, mutableState2, 4);
                        composer.q(objX3);
                    }
                    Function0 function11 = (Function0) objX3;
                    String strC = StringResources_androidKt.c(composer, R.string.mylv_address_book_search_bar_description);
                    int i3 = LVAppDesignKitTheme.g(composer).m;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new v(24);
                        composer.q(objX4);
                    }
                    LVSearchBarKt.a(modifierE, str, function10, function11, strC, null, i3, (Function0) objX4, "addressAutocomplete_searchIcon_button", composer, 918552576, 32);
                    if (!list.isEmpty() || ((TextFieldValue) mutableState2.getF10755b()).f10840a.f10420c.length() <= 2) {
                        composer.L(1428162851);
                        composer.F();
                    } else {
                        Modifier modifierM = PaddingKt.m(PaddingKt.k(pq0.j(1426891448, composer, "AddressAutocompleteScreen$lambda$10"), LVAppDesignKitTheme.l(composer).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        boolean zK4 = composer.K(function2);
                        Object objX5 = composer.x();
                        if (zK4 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new h4(function2, mutableState2, 0);
                            composer.q(objX5);
                        }
                        Modifier modifierC2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierM, false, null, null, (Function0) objX5, 31);
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, composer, 48);
                        int iHashCode2 = Long.hashCode(composer.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer, modifierC2);
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
                        Updater.c(composer, rowMeasurePolicyA, function3);
                        Updater.c(composer, persistentCompositionLocalMapN2, function4);
                        cj.s(iHashCode2, composer, function5, composer, function6);
                        Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(a.f(composer, modifierC3, function7, "AddressAutocompleteScreen$lambda$10"), LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "addressAutocomplete_manualSearch_text");
                        String strB = StringResources_androidKt.b(R.string.mylv_myprofile_address_auto_complete_search_for, new Object[]{((TextFieldValue) mutableState2.getF10755b()).f10840a.f10420c}, composer);
                        if (z) {
                            composer.L(-706864713);
                            j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                            composer.F();
                        } else {
                            composer.L(-706752803);
                            j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                            composer.F();
                        }
                        TextKt.c(strB, modifierE2, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262136);
                        composer.r();
                        composer.F();
                    }
                    if (list.isEmpty()) {
                        r15 = 0;
                        composer.L(1428590403);
                        composer.F();
                    } else {
                        composer.L(1428317479);
                        r15 = 0;
                        AddressAutocompleteComposableKt.d(addressAutocompleteViewState, addressAutocompleteScreenContext, this.f75936f, composer, 0);
                        composer.F();
                    }
                    if (addressAutocompleteViewState.f52116a) {
                        composer.L(1428672305);
                        LVLoadingOverlayKt.a(r15, composer, r15, 1);
                        composer.F();
                    } else {
                        composer.L(1428720355);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                final List list2 = (List) obj9;
                final InAppDispatch inAppDispatch = (InAppDispatch) obj8;
                final InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) obj7;
                final Function1 function12 = (Function1) function;
                final Function1 function13 = (Function1) obj6;
                final HapticFeedback hapticFeedback = (HapticFeedback) obj5;
                final Function1 function14 = (Function1) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(paddingValues2) ? 4 : 2;
                }
                int i4 = iIntValue2;
                if (composer2.p(i4 & 1, (i4 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierO = new DTFunctionNameModifier("InboxNotificationListScreen$lambda$0").o(SizeKt.f5052c);
                    long j3 = LVAppDesignKitTheme.c(composer2).f48361b.f48375b;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                    Modifier modifierH2 = PaddingKt.h(WindowInsetsPadding_androidKt.b(BackgroundKt.b(modifierO, j3, rectangleShapeKt$RectangleShape$1)), paddingValues2);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierH2);
                    ComposeUiNode.b0.getClass();
                    Function0 function15 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function15);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Modifier modifierD = SizeKt.d(BackgroundKt.b(a.f(composer2, modifierC4, ComposeUiNode.Companion.d, "InboxNotificationListScreen$lambda$0"), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), 1.0f);
                    boolean zY = composer2.y(list2) | composer2.y(inAppDispatch) | composer2.y(inboxNotificationUiModel);
                    final Function1 function16 = this.f75935e;
                    boolean zK5 = zY | composer2.K(function16);
                    final Function1 function17 = this.f75936f;
                    boolean zK6 = zK5 | composer2.K(function17) | composer2.K(function12) | composer2.K(function13) | composer2.y(hapticFeedback) | composer2.K(function14);
                    Object objX6 = composer2.x();
                    if (zK6 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new Function1() { // from class: g40
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj10) {
                                LazyListScope lazyListScope = (LazyListScope) obj10;
                                lazyListScope.getClass();
                                final rq rqVar = new rq(27);
                                final List list3 = list2;
                                int size = list3.size();
                                Function1<Integer, Object> function18 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj11) {
                                        int iIntValue3 = ((Number) obj11).intValue();
                                        return rqVar.invoke(Integer.valueOf(iIntValue3), list3.get(iIntValue3));
                                    }
                                };
                                Function1<Integer, Object> function19 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$2
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj11) {
                                        list3.get(((Number) obj11).intValue());
                                        return null;
                                    }
                                };
                                final InAppDispatch inAppDispatch2 = inAppDispatch;
                                final InboxNotificationUiModel inboxNotificationUiModel2 = inboxNotificationUiModel;
                                final Function1 function20 = function16;
                                final Function1 function21 = function17;
                                final Function1 function22 = function12;
                                final Function1 function23 = function13;
                                final HapticFeedback hapticFeedback2 = hapticFeedback;
                                final Function1 function24 = function14;
                                lazyListScope.h(size, function18, function19, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$3
                                    @Override // kotlin.jvm.functions.Function4
                                    public final Object g(Object obj11, Object obj12, Object obj13, Object obj14) {
                                        int i5;
                                        LazyItemScope lazyItemScope = (LazyItemScope) obj11;
                                        int iIntValue3 = ((Number) obj12).intValue();
                                        Composer composer3 = (Composer) obj13;
                                        int iIntValue4 = ((Number) obj14).intValue();
                                        if ((iIntValue4 & 6) == 0) {
                                            i5 = (composer3.K(lazyItemScope) ? 4 : 2) | iIntValue4;
                                        } else {
                                            i5 = iIntValue4;
                                        }
                                        if ((iIntValue4 & 48) == 0) {
                                            i5 |= composer3.d(iIntValue3) ? 32 : 16;
                                        }
                                        if (composer3.p(i5 & 1, (i5 & 147) != 146)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            final InboxNotificationUiModel inboxNotificationUiModel3 = (InboxNotificationUiModel) list3.get(iIntValue3);
                                            composer3.L(731355807);
                                            String str2 = inboxNotificationUiModel3.f52412a;
                                            InboxNotificationUiModel inboxNotificationUiModel4 = inboxNotificationUiModel2;
                                            boolean zC = Intrinsics.c(str2, inboxNotificationUiModel4 != null ? inboxNotificationUiModel4.f52412a : null);
                                            final Function1 function25 = function20;
                                            boolean zK7 = composer3.K(function25) | composer3.y(inboxNotificationUiModel3);
                                            Object objX7 = composer3.x();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                            if (zK7 || objX7 == composer$Companion$Empty$2) {
                                                objX7 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$1$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    /* JADX INFO: renamed from: invoke */
                                                    public final Object mo47invoke() {
                                                        function25.invoke(inboxNotificationUiModel3);
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer3.q(objX7);
                                            }
                                            Function0 function26 = (Function0) objX7;
                                            final Function1 function27 = function21;
                                            boolean zK8 = composer3.K(function27) | composer3.y(inboxNotificationUiModel3);
                                            Object objX8 = composer3.x();
                                            if (zK8 || objX8 == composer$Companion$Empty$2) {
                                                objX8 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$2$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    /* JADX INFO: renamed from: invoke */
                                                    public final Object mo47invoke() {
                                                        function27.invoke(inboxNotificationUiModel3);
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer3.q(objX8);
                                            }
                                            Function0 function28 = (Function0) objX8;
                                            final Function1 function29 = function22;
                                            boolean zK9 = composer3.K(function29) | composer3.y(inboxNotificationUiModel3);
                                            Object objX9 = composer3.x();
                                            if (zK9 || objX9 == composer$Companion$Empty$2) {
                                                objX9 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$3$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    /* JADX INFO: renamed from: invoke */
                                                    public final Object mo47invoke() {
                                                        function29.invoke(inboxNotificationUiModel3.f52412a);
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer3.q(objX9);
                                            }
                                            Function0 function30 = (Function0) objX9;
                                            final HapticFeedback hapticFeedback3 = hapticFeedback2;
                                            boolean zY2 = composer3.y(hapticFeedback3);
                                            final Function1 function31 = function24;
                                            boolean zK10 = zY2 | composer3.K(function31);
                                            Object objX10 = composer3.x();
                                            if (zK10 || objX10 == composer$Companion$Empty$2) {
                                                objX10 = new Function1<InboxNotificationUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$4$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj15) {
                                                        InboxNotificationUiModel inboxNotificationUiModel5 = (InboxNotificationUiModel) obj15;
                                                        inboxNotificationUiModel5.getClass();
                                                        HapticFeedbackType.f9193b.getClass();
                                                        int i6 = PlatformHapticFeedbackType.f9196a;
                                                        hapticFeedback3.a(0);
                                                        function31.invoke(inboxNotificationUiModel5);
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer3.q(objX10);
                                            }
                                            InboxNotificationListScreenKt.d(inAppDispatch2, inboxNotificationUiModel3, zC, function26, function28, function30, function23, (Function1) objX10, iIntValue3 > 0 && iIntValue3 < list3.size(), composer3, 0);
                                            composer3.F();
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }));
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX6);
                    }
                    LazyDslKt.a(modifierD, null, null, null, null, null, false, null, (Function1) objX6, composer2, 0, 510);
                    composer2.r();
                    if (z) {
                        composer2.L(989781242);
                        LVTooltipKt.a(TooltipGravity.TOP, paddingValues2, StringResources_androidKt.c(composer2, R.string.long_press_title), StringResources_androidKt.c(composer2, R.string.my_notifications_long_press_description), this.d, composer2, ((i4 << 3) & 112) | 6);
                        composer2.F();
                    } else {
                        composer2.L(990197355);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ l4(boolean z, Function0 function0, List list, InAppDispatch inAppDispatch, InboxNotificationUiModel inboxNotificationUiModel, Function1 function1, Function1 function2, Function1 function3, Function1 function4, HapticFeedback hapticFeedback, Function1 function5) {
        this.f75934c = z;
        this.d = function0;
        this.g = list;
        this.f75937h = inAppDispatch;
        this.f75938i = inboxNotificationUiModel;
        this.f75935e = function1;
        this.f75936f = function2;
        this.f75939j = function3;
        this.f75940k = function4;
        this.l = hapticFeedback;
        this.m = function5;
    }
}
