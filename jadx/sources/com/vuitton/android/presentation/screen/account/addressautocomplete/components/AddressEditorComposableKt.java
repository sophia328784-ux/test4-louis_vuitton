package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.components.AddressEditorErrorScreenKt;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormToolBox;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.f0;
import defpackage.f1;
import defpackage.g0;
import defpackage.l0;
import defpackage.n00;
import defpackage.tr;
import defpackage.v40;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressEditorComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52105a;

        static {
            int[] iArr = new int[AddressEditorViewType.values().length];
            try {
                iArr[AddressEditorViewType.ADD_SECONDARY_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AddressEditorViewType.EDIT_SECONDARY_ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AddressEditorViewType.ADD_MAIN_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AddressEditorViewType.EDIT_MAIN_ADDRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f52105a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    public static final void a(final AddressEditorViewModel addressEditorViewModel, Function0 function0, final Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        MutableState mutableState;
        int i3;
        ?? r0;
        GapComposer gapComposer2;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1749097083);
        int i4 = i2 | (gapComposerH.K(addressEditorViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(addressEditorViewModel.getG(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            Object obj = Composer.Companion.f7939a;
            if (objX == obj) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i5 = i4 & 14;
            boolean z = ((i4 & 7168) == 2048) | (i5 == 4) | ((i4 & 112) == 32);
            Object objX2 = gapComposerH.x();
            if (z || objX2 == obj) {
                objX2 = new AddressEditorComposableKt$AddressEditorComposable$1$1(addressEditorViewModel, function0, function2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean zY = (i5 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == obj) {
                objX3 = new AddressEditorComposableKt$AddressEditorComposable$2$1(addressEditorViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            if (((AddressEditorViewState) mutableStateB.getF10755b()).f52270b) {
                gapComposerH.L(-807012724);
                final int i6 = 0;
                AddressEditorErrorScreenKt.a(snackbarHostState, ComposableLambdaKt.b(277015689, new Function2() { // from class: r4
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        int i7 = i6;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        MutableState mutableState2 = mutableStateB;
                        final Function0 function3 = function1;
                        final AddressEditorViewModel addressEditorViewModel2 = addressEditorViewModel;
                        final int i8 = 1;
                        final int i9 = 0;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        switch (i7) {
                            case 0:
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    AddressEditorViewType addressEditorViewType = ((AddressEditorViewState) mutableState2.getF10755b()).f52271c;
                                    boolean zY2 = composer2.y(addressEditorViewModel2) | composer2.K(function3);
                                    Object objX4 = composer2.x();
                                    if (zY2 || objX4 == composer$Companion$Empty$1) {
                                        objX4 = new Function0() { // from class: t4
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i10 = i8;
                                                Function0 function4 = function3;
                                                AddressEditorViewModel addressEditorViewModel3 = addressEditorViewModel2;
                                                switch (i10) {
                                                    case 0:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                    default:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX4);
                                    }
                                    AddressEditorComposableKt.c(addressEditorViewType, (Function0) objX4, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                break;
                            default:
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    AddressEditorViewType addressEditorViewType2 = ((AddressEditorViewState) mutableState2.getF10755b()).f52271c;
                                    boolean zY3 = composer2.y(addressEditorViewModel2) | composer2.K(function3);
                                    Object objX5 = composer2.x();
                                    if (zY3 || objX5 == composer$Companion$Empty$1) {
                                        objX5 = new Function0() { // from class: t4
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i10 = i9;
                                                Function0 function4 = function3;
                                                AddressEditorViewModel addressEditorViewModel3 = addressEditorViewModel2;
                                                switch (i10) {
                                                    case 0:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                    default:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX5);
                                    }
                                    AddressEditorComposableKt.c(addressEditorViewType2, (Function0) objX5, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 54);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
                r0 = 0;
                mutableState = mutableStateB;
                i3 = 1;
            } else {
                gapComposerH.L(-806556683);
                final int i7 = 1;
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(594284829, new Function2() { // from class: r4
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        int i8 = i7;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        MutableState mutableState2 = mutableStateB;
                        final Function0 function3 = function1;
                        final AddressEditorViewModel addressEditorViewModel2 = addressEditorViewModel;
                        final int i9 = 1;
                        final int i10 = 0;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        switch (i8) {
                            case 0:
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    AddressEditorViewType addressEditorViewType = ((AddressEditorViewState) mutableState2.getF10755b()).f52271c;
                                    boolean zY2 = composer2.y(addressEditorViewModel2) | composer2.K(function3);
                                    Object objX4 = composer2.x();
                                    if (zY2 || objX4 == composer$Companion$Empty$1) {
                                        objX4 = new Function0() { // from class: t4
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i11 = i9;
                                                Function0 function4 = function3;
                                                AddressEditorViewModel addressEditorViewModel3 = addressEditorViewModel2;
                                                switch (i11) {
                                                    case 0:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                    default:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX4);
                                    }
                                    AddressEditorComposableKt.c(addressEditorViewType, (Function0) objX4, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                break;
                            default:
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    AddressEditorViewType addressEditorViewType2 = ((AddressEditorViewState) mutableState2.getF10755b()).f52271c;
                                    boolean zY3 = composer2.y(addressEditorViewModel2) | composer2.K(function3);
                                    Object objX5 = composer2.x();
                                    if (zY3 || objX5 == composer$Companion$Empty$1) {
                                        objX5 = new Function0() { // from class: t4
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i11 = i10;
                                                Function0 function4 = function3;
                                                AddressEditorViewModel addressEditorViewModel3 = addressEditorViewModel2;
                                                switch (i11) {
                                                    case 0:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                    default:
                                                        addressEditorViewModel3.n0();
                                                        function4.mo47invoke();
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX5);
                                    }
                                    AddressEditorComposableKt.c(addressEditorViewType2, (Function0) objX5, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1009719044, new Function2() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.components.b
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            AddressEditorViewState addressEditorViewState = (AddressEditorViewState) mutableStateB.getF10755b();
                            AddressEditorViewModel addressEditorViewModel2 = addressEditorViewModel;
                            boolean zY2 = composer2.y(addressEditorViewModel2);
                            Object objX4 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zY2 || objX4 == composer$Companion$Empty$1) {
                                AddressEditorComposableKt$AddressEditorComposable$5$1$1 addressEditorComposableKt$AddressEditorComposable$5$1$1 = new AddressEditorComposableKt$AddressEditorComposable$5$1$1(0, addressEditorViewModel2, AddressEditorViewModel.class, "upsertAddress", "upsertAddress()V", 0);
                                composer2.q(addressEditorComposableKt$AddressEditorComposable$5$1$1);
                                objX4 = addressEditorComposableKt$AddressEditorComposable$5$1$1;
                            }
                            Function0 function3 = (Function0) ((KFunction) objX4);
                            LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                            boolean zY3 = composer2.y(lVModalBottomSheetState);
                            Object objX5 = composer2.x();
                            if (zY3 || objX5 == composer$Companion$Empty$1) {
                                AddressEditorComposableKt$AddressEditorComposable$5$2$1 addressEditorComposableKt$AddressEditorComposable$5$2$1 = new AddressEditorComposableKt$AddressEditorComposable$5$2$1(0, lVModalBottomSheetState, LVModalBottomSheetState.class, "show", "show()V", 0);
                                composer2.q(addressEditorComposableKt$AddressEditorComposable$5$2$1);
                                objX5 = addressEditorComposableKt$AddressEditorComposable$5$2$1;
                            }
                            AddressEditorComposableKt.b(addressEditorViewState, function3, (Function0) ((KFunction) objX5), composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1681244379, new g0(snackbarHostState, 4), gapComposerH);
                ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(-1678034190, new Function3() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.components.c
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj2, Object obj3, Object obj4) {
                        PaddingValues paddingValues = (PaddingValues) obj2;
                        Composer composer2 = (Composer) obj3;
                        int iIntValue = ((Integer) obj4).intValue();
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierB = DynamicFormToolBox.b(new DTFunctionNameModifier("AddressEditorComposable$lambda$8"), paddingValues, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, ((iIntValue << 6) & 896) | 24582, 5);
                            MutableState mutableState2 = mutableStateB;
                            FormUiModel formUiModel = ((AddressEditorViewState) mutableState2.getF10755b()).d;
                            AddressEditorViewModel addressEditorViewModel2 = addressEditorViewModel;
                            boolean zY2 = composer2.y(addressEditorViewModel2);
                            Object objX4 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zY2 || objX4 == composer$Companion$Empty$1) {
                                AddressEditorComposableKt$AddressEditorComposable$7$1$1 addressEditorComposableKt$AddressEditorComposable$7$1$1 = new AddressEditorComposableKt$AddressEditorComposable$7$1$1(2, addressEditorViewModel2, AddressEditorViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                                composer2.q(addressEditorComposableKt$AddressEditorComposable$7$1$1);
                                objX4 = addressEditorComposableKt$AddressEditorComposable$7$1$1;
                            }
                            Function2 function3 = (Function2) ((KFunction) objX4);
                            boolean zY3 = composer2.y(addressEditorViewModel2);
                            Object objX5 = composer2.x();
                            if (zY3 || objX5 == composer$Companion$Empty$1) {
                                objX5 = new AddressEditorComposableKt$AddressEditorComposable$7$2$1(1, addressEditorViewModel2, AddressEditorViewModel.class, "onFieldClicked", "onFieldClicked(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V", 0);
                                composer2.q(objX5);
                            }
                            Function1 function4 = (Function1) ((KFunction) objX5);
                            boolean zK = composer2.K(mutableState2) | composer2.y(addressEditorViewModel2);
                            Object objX6 = composer2.x();
                            if (zK || objX6 == composer$Companion$Empty$1) {
                                objX6 = new l0(addressEditorViewModel2, mutableState2, 5);
                                composer2.q(objX6);
                            }
                            Function0 function5 = (Function0) objX6;
                            boolean zY4 = composer2.y(addressEditorViewModel2);
                            Object objX7 = composer2.x();
                            if (zY4 || objX7 == composer$Companion$Empty$1) {
                                AddressEditorComposableKt$AddressEditorComposable$7$4$1 addressEditorComposableKt$AddressEditorComposable$7$4$1 = new AddressEditorComposableKt$AddressEditorComposable$7$4$1(1, addressEditorViewModel2, AddressEditorViewModel.class, "onPhoneAdditionRequested", "onPhoneAdditionRequested(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V", 0);
                                composer2.q(addressEditorComposableKt$AddressEditorComposable$7$4$1);
                                objX7 = addressEditorComposableKt$AddressEditorComposable$7$4$1;
                            }
                            Function1 function6 = (Function1) ((KFunction) objX7);
                            boolean zY5 = composer2.y(addressEditorViewModel2);
                            Object objX8 = composer2.x();
                            if (zY5 || objX8 == composer$Companion$Empty$1) {
                                AddressEditorComposableKt$AddressEditorComposable$7$5$1 addressEditorComposableKt$AddressEditorComposable$7$5$1 = new AddressEditorComposableKt$AddressEditorComposable$7$5$1(1, addressEditorViewModel2, AddressEditorViewModel.class, "onPhoneDeletionRequested", "onPhoneDeletionRequested(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V", 0);
                                composer2.q(addressEditorComposableKt$AddressEditorComposable$7$5$1);
                                objX8 = addressEditorComposableKt$AddressEditorComposable$7$5$1;
                            }
                            DynamicFormComposableKt.a(modifierB, null, formUiModel, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function3, function4, function5, function6, (Function1) ((KFunction) objX8), false, false, false, null, null, null, null, ComposableLambdaKt.b(-539312823, new f1(lVModalBottomSheetStateF, addressEditorViewModel2, 2), composer2), false, composer2, 0, 12582912, 392218);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                mutableState = mutableStateB;
                i3 = 1;
                r0 = 0;
                ScaffoldKt.a(null, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, null, 0, 0L, 0L, null, composableLambdaImplB4, gapComposerH, 805309872, 497);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(false);
                gapComposer2 = gapComposer3;
            }
            if (((AddressEditorViewState) mutableState.getF10755b()).f52269a) {
                gapComposer2.L(-804518309);
                LVLoadingOverlayKt.a(r0, gapComposer2, r0, i3);
                gapComposer2.Z(r0);
                gapComposer = gapComposer2;
            } else {
                gapComposer2.L(-804485635);
                gapComposer2.Z(r0);
                gapComposer = gapComposer2;
            }
        } else {
            GapComposer gapComposer4 = gapComposerH;
            gapComposer4.D();
            gapComposer = gapComposer4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) addressEditorViewModel, (Object) function0, (Object) function1, (Object) function2, i2, 6);
        }
    }

    public static final void b(final AddressEditorViewState addressEditorViewState, final Function0 function0, final Function0 function1, Composer composer, final int i2) {
        AddressEditorViewState addressEditorViewState2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        GapComposer gapComposerH = composer.h(2112573557);
        int i3 = i2 | (gapComposerH.y(addressEditorViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (addressEditorViewState.d.f57486a.isEmpty()) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i4 = 0;
                function2 = new Function2(addressEditorViewState, function0, function1, i2, i4) { // from class: s4

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f79703b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ AddressEditorViewState f79704c;
                    public final /* synthetic */ Function0 d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ Function0 f79705e;

                    {
                        this.f79703b = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i5 = this.f79703b;
                        Composer composer2 = (Composer) obj;
                        ((Integer) obj2).getClass();
                        switch (i5) {
                            case 0:
                                AddressEditorComposableKt.b(this.f79704c, this.d, this.f79705e, composer2, RecomposeScopeImplKt.a(1));
                                break;
                            default:
                                AddressEditorComposableKt.b(this.f79704c, this.d, this.f79705e, composer2, RecomposeScopeImplKt.a(1));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                addressEditorViewState2 = addressEditorViewState;
                Modifier modifierB = BackgroundKt.b(WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("EditAddressBottomBar"), 1.0f)), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function3 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                LVButtonKt.b((i3 << 24) & 1879048192, 376, gapComposerH, PaddingKt.m(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("EditAddressBottomBar"), "addAddress_save_button"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.save), function0, false, addressEditorViewState2.d.i(), false);
                if (addressEditorViewState2.f52271c == AddressEditorViewType.EDIT_SECONDARY_ADDRESS) {
                    gapComposerH.L(2030317606);
                    LVButtonKt.b((i3 << 21) & 1879048192, 504, gapComposerH, PaddingKt.l(tr.d("EditAddressBottomBar", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.mylv_myprofile_addressbookbrick_deleteaddress), function1, false, false, false);
                    gapComposerH.Z(false);
                } else {
                    SpacerKt.a(gapComposerH, PaddingKt.m(n00.i(gapComposerH, 2030998955, "EditAddressBottomBar"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7));
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
            }
            recomposeScopeImplB0.d = function2;
        }
        addressEditorViewState2 = addressEditorViewState;
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i5 = 1;
            final AddressEditorViewState addressEditorViewState3 = addressEditorViewState2;
            function2 = new Function2(addressEditorViewState3, function0, function1, i2, i5) { // from class: s4

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f79703b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AddressEditorViewState f79704c;
                public final /* synthetic */ Function0 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f79705e;

                {
                    this.f79703b = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i6 = this.f79703b;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i6) {
                        case 0:
                            AddressEditorComposableKt.b(this.f79704c, this.d, this.f79705e, composer2, RecomposeScopeImplKt.a(1));
                            break;
                        default:
                            AddressEditorComposableKt.b(this.f79704c, this.d, this.f79705e, composer2, RecomposeScopeImplKt.a(1));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }

    public static final void c(AddressEditorViewType addressEditorViewType, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-250504716);
        int i4 = (gapComposerH.d(addressEditorViewType.ordinal()) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = WhenMappings.f52105a[addressEditorViewType.ordinal()];
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
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, i3), null, null, function0, null, null, null, null, gapComposerH, (i4 << 15) & 3670016, 0, 4023);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(addressEditorViewType, function0, i2, 5);
        }
    }
}
