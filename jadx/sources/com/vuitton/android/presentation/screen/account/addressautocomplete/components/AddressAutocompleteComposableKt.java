package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import defpackage.d21;
import defpackage.g0;
import defpackage.g4;
import defpackage.i4;
import defpackage.j4;
import defpackage.k4;
import defpackage.l0;
import defpackage.l4;
import defpackage.n00;
import defpackage.r0;
import defpackage.tr;
import defpackage.u;
import defpackage.v40;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;", "addressEditorViewState", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;", "addressAutocompleteViewState", "", "autofillPositioned", "Landroidx/compose/ui/text/input/TextFieldValue;", "textFieldValue", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressAutocompleteComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f52092b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f52093c;

        static {
            int[] iArr = new int[ManualConfirmType.values().length];
            try {
                iArr[ManualConfirmType.CONFIRM_BUTTON_CLICKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ManualConfirmType.ROW_CLICKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f52091a = iArr;
            int[] iArr2 = new int[AddressEditorViewType.values().length];
            try {
                iArr2[AddressEditorViewType.ADD_SECONDARY_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AddressEditorViewType.EDIT_SECONDARY_ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[AddressEditorViewType.ADD_MAIN_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[AddressEditorViewType.EDIT_MAIN_ADDRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            f52092b = iArr2;
            int[] iArr3 = new int[AddressAutocompleteScreenContext.values().length];
            try {
                iArr3[AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[AddressAutocompleteScreenContext.PROFILE_ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            f52093c = iArr3;
        }
    }

    public static final void a(AddressEditorViewModel addressEditorViewModel, AddressAutocompleteViewModel addressAutocompleteViewModel, Function0 function0, String str, String str2, AddressAutocompleteScreenContext addressAutocompleteScreenContext, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, Function1 function1, Composer composer, int i2, int i3) {
        String str3;
        int i4;
        String str4;
        int i5;
        int i6;
        int i7;
        Function1 function2;
        int i8;
        TrackingAuthOrigin trackingAuthOrigin2;
        TrackingAuthEntryPoint trackingAuthEntryPoint2;
        String str5;
        String str6;
        Function1 function3;
        int i9;
        int i10;
        AddressAutocompleteScreenContext addressAutocompleteScreenContext2;
        Object g4Var;
        String str7;
        int i11;
        Function1 function4;
        TrackingAuthEntryPoint trackingAuthEntryPoint3;
        MutableState mutableState;
        TrackingAuthOrigin trackingAuthOrigin3;
        int i12;
        Object j4Var;
        TrackingAuthOrigin trackingAuthOrigin4;
        Function1 function5;
        MutableState mutableState2;
        TrackingAuthEntryPoint trackingAuthEntryPoint4;
        addressEditorViewModel.getClass();
        addressAutocompleteViewModel.getClass();
        function0.getClass();
        addressAutocompleteScreenContext.getClass();
        GapComposer gapComposerH = composer.h(1238505443);
        int i13 = i2 | (gapComposerH.K(addressEditorViewModel) ? 4 : 2) | (gapComposerH.K(addressAutocompleteViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        int i14 = i3 & 8;
        if (i14 != 0) {
            i4 = i13 | 3072;
            str3 = str;
        } else {
            str3 = str;
            i4 = i13 | (gapComposerH.K(str3) ? 2048 : 1024);
        }
        int i15 = i3 & 16;
        if (i15 != 0) {
            i5 = i4 | 24576;
            str4 = str2;
        } else {
            str4 = str2;
            i5 = i4 | (gapComposerH.K(str4) ? 16384 : 8192);
        }
        int i16 = i3 & 64;
        if (i16 != 0) {
            i6 = i5 | 1572864;
        } else {
            i6 = i5 | (gapComposerH.d(trackingAuthOrigin == null ? -1 : trackingAuthOrigin.ordinal()) ? 1048576 : 524288);
        }
        int i17 = i3 & 128;
        if (i17 != 0) {
            i7 = i6 | 12582912;
        } else {
            i7 = i6 | (gapComposerH.d(trackingAuthEntryPoint != null ? trackingAuthEntryPoint.ordinal() : -1) ? 8388608 : 4194304);
        }
        int i18 = i3 & 256;
        if (i18 != 0) {
            i8 = i7 | 100663296;
            function2 = function1;
        } else {
            function2 = function1;
            i8 = i7 | (gapComposerH.y(function2) ? 67108864 : 33554432);
        }
        if (gapComposerH.p(i8 & 1, (i8 & 38347923) != 38347922)) {
            String str8 = i14 != 0 ? null : str3;
            String str9 = i15 != 0 ? null : str4;
            TrackingAuthOrigin trackingAuthOrigin5 = i16 != 0 ? null : trackingAuthOrigin;
            TrackingAuthEntryPoint trackingAuthEntryPoint5 = i17 != 0 ? null : trackingAuthEntryPoint;
            Function1 function6 = i18 != 0 ? null : function2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(addressEditorViewModel.getG(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(addressAutocompleteViewModel.getP(), gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i19 = i8 & 112;
            int i20 = i8 & 234881024;
            boolean z = (i19 == 32) | (i20 == 67108864);
            int i21 = i8 & 3670016;
            boolean z2 = z | (i21 == 1048576);
            int i22 = i8 & 29360128;
            int i23 = i8 & 14;
            boolean zK = z2 | (i22 == 8388608) | ((i8 & 57344) == 16384) | gapComposerH.K(mutableStateB) | ((i8 & 7168) == 2048) | (i23 == 4);
            int i24 = i8 & 896;
            boolean z3 = zK | (i24 == 256);
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                i9 = i24;
                i10 = i22;
                AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1 addressAutocompleteComposableKt$AddressAutocompleteComposable$1$1 = new AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1(addressAutocompleteViewModel, addressAutocompleteScreenContext, function6, trackingAuthOrigin5, trackingAuthEntryPoint5, str9, str8, mutableStateB, addressEditorViewModel, function0, null);
                addressAutocompleteScreenContext2 = addressAutocompleteScreenContext;
                gapComposerH.q(addressAutocompleteComposableKt$AddressAutocompleteComposable$1$1);
                objX2 = addressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;
            } else {
                i9 = i24;
                i10 = i22;
                addressAutocompleteScreenContext2 = addressAutocompleteScreenContext;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            AddressEditorViewState addressEditorViewState = (AddressEditorViewState) mutableStateB.getF10755b();
            AddressAutocompleteViewState addressAutocompleteViewState = (AddressAutocompleteViewState) mutableStateB2.getF10755b();
            String str10 = ((AddressAutocompleteViewState) mutableStateB2.getF10755b()).f52118c;
            boolean z4 = r37 == 32;
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                AddressAutocompleteComposableKt$AddressAutocompleteComposable$2$1 addressAutocompleteComposableKt$AddressAutocompleteComposable$2$1 = new AddressAutocompleteComposableKt$AddressAutocompleteComposable$2$1(1, addressAutocompleteViewModel, AddressAutocompleteViewModel.class, "updateSearchBarValue", "updateSearchBarValue(Ljava/lang/String;)V", 0);
                gapComposerH.q(addressAutocompleteComposableKt$AddressAutocompleteComposable$2$1);
                objX3 = addressAutocompleteComposableKt$AddressAutocompleteComposable$2$1;
            }
            KFunction kFunction = (KFunction) objX3;
            AddressAutocompleteScreenContext addressAutocompleteScreenContext3 = AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS;
            LVColorScheme lVColorScheme = addressAutocompleteScreenContext2 == addressAutocompleteScreenContext3 ? LVColorScheme.INVERT : LVColorScheme.DEFAULT;
            boolean z5 = addressAutocompleteScreenContext2 == addressAutocompleteScreenContext3;
            int i25 = i10;
            boolean zK2 = (r37 == 32) | (i20 == 67108864) | (i21 == 1048576) | (i25 == 8388608) | gapComposerH.K(mutableStateB2);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                str7 = str10;
                Function1 function7 = function6;
                i11 = 67108864;
                TrackingAuthEntryPoint trackingAuthEntryPoint6 = trackingAuthEntryPoint5;
                TrackingAuthOrigin trackingAuthOrigin6 = trackingAuthOrigin5;
                g4Var = new g4(addressAutocompleteScreenContext2, function7, trackingAuthOrigin6, trackingAuthEntryPoint6, addressAutocompleteViewModel, mutableStateB2, 0);
                function4 = function7;
                trackingAuthEntryPoint3 = trackingAuthEntryPoint6;
                mutableState = mutableStateB2;
                trackingAuthOrigin3 = trackingAuthOrigin6;
                gapComposerH.q(g4Var);
            } else {
                str7 = str10;
                g4Var = objX4;
                mutableState = mutableStateB2;
                trackingAuthEntryPoint3 = trackingAuthEntryPoint5;
                function4 = function6;
                i11 = 67108864;
                trackingAuthOrigin3 = trackingAuthOrigin5;
            }
            Function1 function8 = (Function1) g4Var;
            int i26 = i9;
            boolean zK3 = (r37 == 32) | gapComposerH.K(mutableState) | (i23 == 4) | (i26 == 256);
            Object objX5 = gapComposerH.x();
            if (zK3 || objX5 == composer$Companion$Empty$1) {
                i12 = i26;
                z zVar = new z(3, addressAutocompleteViewModel, addressEditorViewModel, mutableState, function0);
                gapComposerH.q(zVar);
                objX5 = zVar;
            } else {
                i12 = i26;
            }
            Function2 function9 = (Function2) objX5;
            boolean zK4 = (r1 == i11) | (r3 == 1048576) | (i25 == 8388608) | gapComposerH.K(mutableState) | (r37 == 32);
            Object objX6 = gapComposerH.x();
            if (zK4 || objX6 == composer$Companion$Empty$1) {
                trackingAuthOrigin4 = trackingAuthOrigin3;
                function5 = function4;
                mutableState2 = mutableState;
                trackingAuthEntryPoint4 = trackingAuthEntryPoint3;
                j4Var = new j4(addressAutocompleteScreenContext, function5, trackingAuthOrigin4, trackingAuthEntryPoint4, addressAutocompleteViewModel, mutableState2, 0);
                gapComposerH.q(j4Var);
            } else {
                j4Var = objX6;
                trackingAuthOrigin4 = trackingAuthOrigin3;
                function5 = function4;
                mutableState2 = mutableState;
                trackingAuthEntryPoint4 = trackingAuthEntryPoint3;
            }
            Function0 function10 = (Function0) j4Var;
            boolean zK5 = (i20 == i11) | (i21 == 1048576) | (i25 == 8388608) | gapComposerH.K(mutableState2) | (i12 == 256);
            Object objX7 = gapComposerH.x();
            if (zK5 || objX7 == composer$Companion$Empty$1) {
                j4 j4Var2 = new j4(addressAutocompleteScreenContext, function5, trackingAuthOrigin4, trackingAuthEntryPoint4, function0, mutableState2, 1);
                gapComposerH.q(j4Var2);
                objX7 = j4Var2;
            }
            Function0 function11 = (Function0) objX7;
            Function1 function12 = (Function1) kFunction;
            boolean zK6 = (i19 == 32) | gapComposerH.K(mutableStateB) | gapComposerH.K(mutableState2);
            Object objX8 = gapComposerH.x();
            if (zK6 || objX8 == composer$Companion$Empty$1) {
                r0 r0Var = new r0((Object) addressAutocompleteScreenContext, (Object) addressAutocompleteViewModel, mutableStateB, (Object) mutableState2, 1);
                gapComposerH.q(r0Var);
                objX8 = r0Var;
            }
            b(addressEditorViewState, addressAutocompleteViewState, snackbarHostState, str7, addressAutocompleteScreenContext, lVColorScheme, z5, function8, function9, function10, function11, function12, (Function0) objX8, gapComposerH, 24960);
            trackingAuthOrigin2 = trackingAuthOrigin4;
            str5 = str8;
            str6 = str9;
            trackingAuthEntryPoint2 = trackingAuthEntryPoint4;
            function3 = function5;
        } else {
            gapComposerH.D();
            trackingAuthOrigin2 = trackingAuthOrigin;
            trackingAuthEntryPoint2 = trackingAuthEntryPoint;
            str5 = str3;
            str6 = str4;
            function3 = function2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(addressEditorViewModel, addressAutocompleteViewModel, function0, str5, str6, addressAutocompleteScreenContext, trackingAuthOrigin2, trackingAuthEntryPoint2, function3, i2, i3);
        }
    }

    public static final void b(final AddressEditorViewState addressEditorViewState, final AddressAutocompleteViewState addressAutocompleteViewState, final SnackbarHostState snackbarHostState, final String str, final AddressAutocompleteScreenContext addressAutocompleteScreenContext, final LVColorScheme lVColorScheme, final boolean z, final Function1 function1, final Function2 function2, final Function0 function0, final Function0 function3, final Function1 function4, final Function0 function5, Composer composer, final int i2) {
        int i3;
        String str2;
        GapComposer gapComposer;
        FocusRequester focusRequester;
        MutableState mutableState;
        Modifier modifierO;
        long j2;
        addressEditorViewState.getClass();
        addressAutocompleteViewState.getClass();
        snackbarHostState.getClass();
        str.getClass();
        addressAutocompleteScreenContext.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-682486490);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(addressEditorViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(addressAutocompleteViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            str2 = str;
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        } else {
            str2 = str;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.d(addressAutocompleteScreenContext.ordinal()) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function0) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        char c2 = 16;
        char c3 = gapComposerH.y(function3) ? (char) 4 : (char) 2;
        if (gapComposerH.y(function4)) {
            c2 = ' ';
        }
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (((c3 | c2) | (gapComposerH.y(function5) ? 256 : 128)) & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = lVColorScheme == LVColorScheme.INVERT;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            FocusRequester focusRequester2 = (FocusRequester) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(new TextFieldValue(str2, 0L, (TextRange) null, 6, (DefaultConstructorMarker) null));
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Boolean bool = (Boolean) mutableState2.getF10755b();
            bool.getClass();
            boolean z3 = (i3 & 7168) == 2048;
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                focusRequester = focusRequester2;
                mutableState = mutableState2;
                AddressAutocompleteComposableKt$AddressAutocompleteScreen$1$1 addressAutocompleteComposableKt$AddressAutocompleteScreen$1$1 = new AddressAutocompleteComposableKt$AddressAutocompleteScreen$1$1(str, focusRequester, mutableState, mutableState3, null);
                gapComposerH.q(addressAutocompleteComposableKt$AddressAutocompleteScreen$1$1);
                objX4 = addressAutocompleteComposableKt$AddressAutocompleteScreen$1$1;
            } else {
                focusRequester = focusRequester2;
                mutableState = mutableState2;
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX4);
            if (z2) {
                Modifier modifierO2 = n00.i(gapComposerH, 421319881, "AddressAutocompleteScreen").o(SizeKt.f5052c);
                Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                modifierO = PainterModifierKt.a(modifierO2, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                gapComposerH.Z(false);
            } else {
                modifierO = n00.j(gapComposerH, 421560782, false, "AddressAutocompleteScreen").o(SizeKt.f5052c);
            }
            if (z2) {
                gapComposerH.L(1260527665);
                gapComposerH.Z(false);
                Color.f8866b.getClass();
                j2 = Color.f8870h;
            } else {
                gapComposerH.L(1260529207);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(modifierO, ComposableLambdaKt.b(707517674, new i4(lVColorScheme, z, addressEditorViewState, function3, 1), gapComposerH), null, ComposableLambdaKt.b(-422745492, new g0(snackbarHostState, 3), gapComposerH), null, 0, j2, 0L, null, ComposableLambdaKt.b(1774975989, new l4(addressAutocompleteViewState, function5, focusRequester, function4, function0, function2, addressAutocompleteScreenContext, function1, mutableState, mutableState3, z2), gapComposerH), gapComposer, 805309488, 436);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: m4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    AddressAutocompleteComposableKt.b(addressEditorViewState, addressAutocompleteViewState, snackbarHostState, str, addressAutocompleteScreenContext, lVColorScheme, z, function1, function2, function0, function3, function4, function5, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(LVColorScheme lVColorScheme, boolean z, AddressEditorViewType addressEditorViewType, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(1771922617);
        int i4 = i2 | (gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.d(addressEditorViewType.ordinal()) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = WhenMappings.f52092b[addressEditorViewType.ordinal()];
            if (i5 == 1) {
                i3 = R.string.add_address_title;
            } else if (i5 == 2) {
                i3 = R.string.edit_address_title;
            } else if (i5 == 3) {
                i3 = R.string.mylv_myprofile_myinfos_mainaddress_addmainaddress;
            } else {
                if (i5 != 4) {
                    v40.g();
                    return;
                }
                i3 = R.string.mylv_myprofile_myinfos_mainaddress_editmainaddress;
            }
            LVStandardTopBarKt.a(null, lVColorScheme, z, StringResources_androidKt.c(gapComposerH, i3), null, null, function0, null, WindowInsets_androidKt.b(gapComposerH), "addressAutocomplete_title_text", "addressAutocomplete_back_button", gapComposerH, ((i4 << 3) & 1008) | ((i4 << 9) & 3670016), 54, 689);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(i2, 0, lVColorScheme, addressEditorViewType, function0, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(AddressAutocompleteViewState addressAutocompleteViewState, AddressAutocompleteScreenContext addressAutocompleteScreenContext, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        AutocompleteSuggestionListConfiguration autocompleteSuggestionListConfiguration;
        Object obj;
        Object obj2 = function1;
        GapComposer gapComposerH = composer.h(-169673733);
        Applier applier = gapComposerH.f7976a;
        int i3 = 256;
        int i4 = i2 | (gapComposerH.y(addressAutocompleteViewState) ? 4 : 2) | (gapComposerH.d(addressAutocompleteScreenContext.ordinal()) ? 32 : 16) | (gapComposerH.y(obj2) ? 256 : 128);
        int i5 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = WhenMappings.f52093c[addressAutocompleteScreenContext.ordinal()];
            if (i6 == 1) {
                gapComposerH.L(152310046);
                autocompleteSuggestionListConfiguration = new AutocompleteSuggestionListConfiguration(LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, LVAppDesignKitTheme.c(gapComposerH).f48361b.t, null);
                gapComposerH.Z(false);
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposerH, 152307566, false);
                }
                gapComposerH.L(152321324);
                autocompleteSuggestionListConfiguration = new AutocompleteSuggestionListConfiguration(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, null);
                gapComposerH.Z(false);
            }
            AutocompleteSuggestionListConfiguration autocompleteSuggestionListConfiguration2 = autocompleteSuggestionListConfiguration;
            String str = "AutocompleteSuggestionList";
            float f2 = 1.0f;
            Modifier modifierD = tr.d("AutocompleteSuggestionList", 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(121199940);
            int i7 = 0;
            GapComposer gapComposer2 = gapComposerH;
            for (Object obj3 : addressAutocompleteViewState.d) {
                int i8 = i7 + 1;
                if (i7 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                PlaceAutocompleteUiModel placeAutocompleteUiModel = (PlaceAutocompleteUiModel) obj3;
                Modifier modifierD2 = tr.d(str, f2);
                int i9 = ((i4 & 896) == i3 ? 1 : i5) | (gapComposer2.y(placeAutocompleteUiModel) ? 1 : 0);
                Object objX = gapComposer2.x();
                if (i9 != 0 || objX == Composer.Companion.f7939a) {
                    Object l0Var = new l0(obj2, placeAutocompleteUiModel, 2);
                    gapComposer2.q(l0Var);
                    obj = l0Var;
                } else {
                    obj = objX;
                }
                Modifier modifierC2 = ModifierExtKt.c(modifierD2, false, null, null, (Function0) obj, 31);
                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposer2, i5);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposer2.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer2, modifierC2);
                ComposeUiNode.b0.getClass();
                Function0 function2 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function2);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer2, modifierC3, ComposeUiNode.Companion.d);
                String str2 = str;
                GapComposer gapComposer3 = gapComposer2;
                AutocompleteSuggestionListConfiguration autocompleteSuggestionListConfiguration3 = autocompleteSuggestionListConfiguration2;
                TextKt.c(placeAutocompleteUiModel.f52127b, ModifierExtKt.e(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposer2).f48421k, LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "addressAutocomplete_suggestionTitle_text_" + i7), autocompleteSuggestionListConfiguration2.f52106a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).g, gapComposer3, 0, 0, 131064);
                TextKt.c(placeAutocompleteUiModel.f52128c, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposer3).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48421k, LVAppDesignKitTheme.l(gapComposer3).f48416e, 2), "addressAutocomplete_suggestionDescription_text_" + i7), autocompleteSuggestionListConfiguration3.f52107b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).f48427h, gapComposer3, 0, 0, 131064);
                GapComposer gapComposer4 = gapComposer3;
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, autocompleteSuggestionListConfiguration3.f52108c, gapComposer4, 0, 2);
                gapComposer4.Z(true);
                i5 = 0;
                i4 = i4;
                autocompleteSuggestionListConfiguration2 = autocompleteSuggestionListConfiguration3;
                str = str2;
                i7 = i8;
                f2 = 1.0f;
                i3 = 256;
                applier = applier;
                obj2 = function1;
                gapComposer2 = gapComposer4;
            }
            gapComposer2.Z(i5);
            gapComposer2.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(addressAutocompleteViewState, addressAutocompleteScreenContext, function1, i2, 4);
        }
    }
}
