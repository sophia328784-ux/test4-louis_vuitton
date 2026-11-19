package com.vuitton.android.presentation.screen.placesearch.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel;
import com.vuitton.android.presentation.screen.placesearch.models.PlacesUiModel;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import defpackage.ae0;
import defpackage.cj;
import defpackage.cl0;
import defpackage.ee0;
import defpackage.i4;
import defpackage.jo0;
import defpackage.kj0;
import defpackage.kn0;
import defpackage.n00;
import defpackage.p0;
import defpackage.pq0;
import defpackage.sm0;
import defpackage.tr;
import defpackage.u1;
import defpackage.w3;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003¨\u0006\u0005²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/models/PlacesUiModel;", "viewState", "", "previousPlaceValue", "previousPlace", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PlaceSearchPageComposableKt {
    public static final void a(PlaceAutocomplete placeAutocomplete, Function2 function2, PlaceSearchActivity.PlaceInfoType placeInfoType, boolean z, Composer composer, int i2) {
        placeAutocomplete.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1750287877);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(placeAutocomplete) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.d(placeInfoType == null ? -1 : placeInfoType.ordinal()) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("PlaceItem", 1.0f);
            boolean zY = ((i3 & 896) == 256) | ((i3 & 112) == 32) | gapComposerH.y(placeAutocomplete);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new sm0(function2, placeAutocomplete, placeInfoType, 3);
                gapComposerH.q(objX);
            }
            Modifier modifierE = ModifierExtKt.e(ModifierExtKt.c(modifierD, false, null, null, (Function0) objX, 31), "osa_availableStores_view");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierJ = PaddingKt.j(tr.e(gapComposerH, modifierC, function6, "PlaceItem"), LVAppDesignKitTheme.l(gapComposerH).f48421k, LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function6);
            TextKt.c(placeAutocomplete.f67818b, n00.g("PlaceItem", "placeSearch_title_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131064);
            TextKt.c(placeAutocomplete.f67819c, n00.g("PlaceItem", "placeSearch_subtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            if (z) {
                gapComposerH.L(-1546014233);
                gapComposerH.Z(false);
            } else {
                DividerKt.a(PaddingKt.k(n00.i(gapComposerH, -1546162227, "PlaceItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposerH, 0, 6);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(placeAutocomplete, function2, placeInfoType, z, i2, 17);
        }
    }

    public static final void b(PlaceSearchViewModel placeSearchViewModel, AutocompleteContext autocompleteContext, PlaceSearchActivity.PlaceInfoType placeInfoType, String str, Function0 function0, Composer composer, int i2) {
        MutableState mutableState;
        MutableState mutableState2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState3;
        PlaceSearchViewModel placeSearchViewModel2 = placeSearchViewModel;
        placeSearchViewModel2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1803603327);
        int i3 = i2 | (gapComposerH.K(placeSearchViewModel2) ? 4 : 2) | (gapComposerH.d(autocompleteContext == null ? -1 : autocompleteContext.ordinal()) ? 32 : 16) | (gapComposerH.d(placeInfoType != null ? placeInfoType.ordinal() : -1) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            MutableState mutableStateB = SnapshotStateKt.b(placeSearchViewModel2.getF62666j(), gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = SnapshotStateKt.g(str);
                gapComposerH.q(objX2);
            }
            MutableState mutableState4 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX3;
            NotificationBuilder notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
            Boolean boolValueOf = Boolean.valueOf(((PlacesUiModel) mutableStateB.getF10755b()).f62696c);
            boolean zK = gapComposerH.K(mutableStateB) | gapComposerH.y(coroutineScope) | gapComposerH.y(notificationBuilderA) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$2) {
                mutableState = mutableStateB;
                objX4 = new PlaceSearchPageComposableKt$PlaceSearchComposable$1$1(coroutineScope, mutableState, snackbarHostState, notificationBuilderA, context, null);
                gapComposerH.q(objX4);
            } else {
                mutableState = mutableStateB;
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX4);
            PlacesUiModel placesUiModel = (PlacesUiModel) mutableState.getF10755b();
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$2) {
                mutableState2 = mutableState4;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                PlaceSearchPageComposableKt$PlaceSearchComposable$2$1 placeSearchPageComposableKt$PlaceSearchComposable$2$1 = new PlaceSearchPageComposableKt$PlaceSearchComposable$2$1(2, placeSearchViewModel, PlaceSearchViewModel.class, "fetchPlaceInfo", "fetchPlaceInfo(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;)V", 0);
                placeSearchViewModel2 = placeSearchViewModel;
                gapComposerH.q(placeSearchPageComposableKt$PlaceSearchComposable$2$1);
                objX5 = placeSearchPageComposableKt$PlaceSearchComposable$2$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                mutableState2 = mutableState4;
            }
            Function2 function2 = (Function2) ((KFunction) objX5);
            boolean z2 = (i4 == 4) | ((i3 & 112) == 32);
            Object objX6 = gapComposerH.x();
            if (z2 || objX6 == composer$Companion$Empty$1) {
                mutableState3 = mutableState2;
                objX6 = new cl0(placeSearchViewModel2, autocompleteContext, mutableState3, 4);
                gapComposerH.q(objX6);
            } else {
                mutableState3 = mutableState2;
            }
            int i5 = i3 << 6;
            d(snackbarHostState, placesUiModel, function2, (Function1) objX6, placeInfoType, (String) mutableState3.getF10755b(), function0, gapComposerH, (57344 & i5) | 6 | (i5 & 3670016));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(placeSearchViewModel2, autocompleteContext, placeInfoType, str, function0, i2);
        }
    }

    public static final void c(PlacesUiModel placesUiModel, Function2 function2, Function1 function1, PlaceSearchActivity.PlaceInfoType placeInfoType, String str, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        Function2 function3;
        placesUiModel.getClass();
        function2.getClass();
        function1.getClass();
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1422578160);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(placesUiModel) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.d(placeInfoType == null ? -1 : placeInfoType.ordinal()) ? 2048 : 1024) | (gapComposerH.K(str) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            FocusRequester focusRequester = (FocusRequester) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PlaceSearchMainContent");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Modifier modifierA = IntrinsicKt.a(PaddingKt.l(n00.e(gapComposerH, modifierC, function9, "PlaceSearchMainContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), IntrinsicSize.Min);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC2, function9);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.place_search_title);
            KeyboardType.f10809b.getClass();
            int i4 = KeyboardType.f10814i;
            ImeAction.f10785b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, i4, ImeAction.f10791j, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
            Modifier modifierE = ModifierExtKt.e(FocusRequesterModifierKt.a(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("PlaceSearchMainContent"), 1.0f, true), focusRequester), "placeSearch_location_textfield");
            boolean z = (i3 & 896) == 256;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new jo0(function1, 0);
                gapComposerH.q(objX2);
            }
            LVTextFieldKt.a(str, (Function1) objX2, modifierE, null, false, strC, false, null, null, keyboardOptions, null, null, null, "osa_appointmentLocationSearchClear_button", false, gapComposerH, ((i3 >> 12) & 14) | 805306368, 3072, 24024);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("PlaceSearchMainContent"), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            boolean z2 = (i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new ee0(function0, 21);
                gapComposerH.q(objX3);
            }
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.i(ModifierExtKt.c(modifierM, false, null, null, (Function0) objX3, 31), LVAppDesignKitTheme.l(gapComposerH).f48416e), "osa_appointmentLocationSearchCancel_button");
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierE2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
            cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC3, function9);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cancel), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131070);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.L(-402669618);
            List list = placesUiModel.f62694a;
            Modifier modifierI = pq0.i("PlaceSearchMainContent", fillElement);
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            boolean zY = gapComposerH.y(list) | ((i3 & 112) == 32) | ((i3 & 7168) == 2048);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                function3 = function2;
                objX4 = new cl0(list, function3, placeInfoType, 5);
                gapComposerH.q(objX4);
            } else {
                function3 = function2;
            }
            LazyDslKt.a(modifierI, lazyListStateA, null, null, null, null, true, null, (Function1) objX4, gapComposerH, 12582918, 380);
            gapComposer = gapComposerH;
            gapComposer.Z(false);
            gapComposer.Z(true);
            Unit unit = Unit.f71739a;
            Object objX5 = gapComposer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new PlaceSearchPageComposableKt$PlaceSearchMainContent$2$1(focusRequester, null);
                gapComposer.q(objX5);
            }
            EffectsKt.e(gapComposer, unit, (Function2) objX5);
        } else {
            gapComposer = gapComposerH;
            function3 = function2;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(placesUiModel, function3, function1, placeInfoType, str, function0, i2, 25);
        }
    }

    public static final void d(SnackbarHostState snackbarHostState, PlacesUiModel placesUiModel, Function2 function2, Function1 function1, PlaceSearchActivity.PlaceInfoType placeInfoType, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        Object obj;
        Object obj2;
        Function1 function3;
        Object obj3;
        snackbarHostState.getClass();
        placesUiModel.getClass();
        function2.getClass();
        function1.getClass();
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1323838634);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            obj = placesUiModel;
            i3 |= gapComposerH.y(obj) ? 32 : 16;
        } else {
            obj = placesUiModel;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            obj2 = function2;
            i3 |= gapComposerH.y(obj2) ? 256 : 128;
        } else {
            obj2 = function2;
        }
        if ((i2 & 3072) == 0) {
            function3 = function1;
            i3 |= gapComposerH.y(function3) ? 2048 : 1024;
        } else {
            function3 = function1;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.d(placeInfoType == null ? -1 : placeInfoType.ordinal()) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            obj3 = str;
            i3 |= gapComposerH.K(obj3) ? 131072 : 65536;
        } else {
            obj3 = str;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(new DTFunctionNameModifier("PlaceSearchScreen")), ComposableLambdaKt.b(-1884972954, new kn0(function0, 3), gapComposerH), null, ComposableLambdaKt.b(-993898332, new ae0(snackbarHostState, 26), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(554803451, new p0(obj, obj2, function3, (Object) placeInfoType, obj3, (Function) function0, 18), gapComposerH), gapComposerH, 805309488, 244);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(snackbarHostState, placesUiModel, function2, function1, placeInfoType, str, function0, i2);
        }
    }
}
