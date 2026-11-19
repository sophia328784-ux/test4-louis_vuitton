package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRegistrationAddressComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterAddressTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.d4;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterRegistrationAddressComposableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f53854a = CollectionsKt.P(FormSectionTypeUiModel.POSTAL_CODE, FormSectionTypeUiModel.STATE, FormSectionTypeUiModel.CITY, FormSectionTypeUiModel.ADDRESS1, FormSectionTypeUiModel.ADDRESS2, FormSectionTypeUiModel.ADDRESS3);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53857a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.POSTAL_CODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.STATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.CITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f53857a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:147:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:148:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:151:0x0406  */
    /* JADX WARN: Code duplicated, block: B:152:0x0408  */
    /* JADX WARN: Code duplicated, block: B:158:0x0417  */
    public static final void a(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function2 function2, Function1 function1, Function0 function0, Function0 function3, final Function0 function4, final Function1 function5, boolean z, Composer composer, int i2) {
        final Function0 function6;
        final Function1 function7;
        GapComposer gapComposer;
        final NativeRegisterViewState nativeRegisterViewState2;
        String str;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Object objX;
        columnScope.getClass();
        nativeRegisterViewState.getClass();
        FormUiModel formUiModel = nativeRegisterViewState.l;
        function2.getClass();
        function1.getClass();
        function0.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-646446470);
        int i8 = (i2 & 6) == 0 ? (gapComposerH.K(columnScope) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i8 |= gapComposerH.y(nativeRegisterViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i8 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i8 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i8 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i8 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i8 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i8 |= gapComposerH.b(z) ? 67108864 : 33554432;
        }
        int i9 = i8;
        if (gapComposerH.p(i9 & 1, (i9 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Boolean boolValueOf = Boolean.valueOf(z);
            int i10 = i9 & 29360128;
            boolean zY = ((i9 & 234881024) == 67108864) | (i10 == 8388608) | gapComposerH.y(nativeRegisterViewState);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY || objX2 == composer$Companion$Empty$2) {
                objX2 = new NativeRegisterRegistrationAddressComposableKt$NativeRegisterRegistrationAddressComposable$1$1(z, function5, nativeRegisterViewState, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            boolean zK = gapComposerH.K(formUiModel);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$2) {
                List list = formUiModel.f57486a;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                    FormFieldUiModel formFieldUiModel = formFieldGenericUiModel instanceof FormFieldUiModel ? (FormFieldUiModel) formFieldGenericUiModel : null;
                    if ((formFieldUiModel != null ? formFieldUiModel.d : null) != FormSectionTypeUiModel.COUNTRY) {
                        arrayList.add(obj);
                    }
                }
                IndexingIterable indexingIterableD0 = CollectionsKt.D0(f53854a);
                int iG = MapsKt.g(CollectionsKt.t(indexingIterableD0, 10));
                if (iG < 16) {
                    iG = 16;
                }
                final LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                Iterator it = indexingIterableD0.iterator();
                while (true) {
                    IndexingIterator indexingIterator = (IndexingIterator) it;
                    if (!indexingIterator.f71774b.hasNext()) {
                        break;
                    }
                    IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                    Pair pair = new Pair((FormSectionTypeUiModel) indexedValue.f71772b, Integer.valueOf(indexedValue.f71771a));
                    linkedHashMap.put(pair.f71705b, pair.f71706c);
                }
                final Comparator comparator = new Comparator() { // from class: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$compareBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj2, Object obj3) {
                        Integer num;
                        FormSectionTypeUiModel formSectionTypeUiModel;
                        Integer num2;
                        FormSectionTypeUiModel formSectionTypeUiModel2;
                        Integer num3 = Integer.MAX_VALUE;
                        FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) obj2;
                        FormFieldUiModel formFieldUiModel2 = formFieldGenericUiModel2 instanceof FormFieldUiModel ? (FormFieldUiModel) formFieldGenericUiModel2 : null;
                        Map map = linkedHashMap;
                        if (formFieldUiModel2 == null || (formSectionTypeUiModel2 = formFieldUiModel2.d) == null || (num = (Integer) map.get(formSectionTypeUiModel2)) == null) {
                            num = num3;
                        }
                        FormFieldGenericUiModel formFieldGenericUiModel3 = (FormFieldGenericUiModel) obj3;
                        FormFieldUiModel formFieldUiModel3 = formFieldGenericUiModel3 instanceof FormFieldUiModel ? (FormFieldUiModel) formFieldGenericUiModel3 : null;
                        if (formFieldUiModel3 != null && (formSectionTypeUiModel = formFieldUiModel3.d) != null && (num2 = (Integer) map.get(formSectionTypeUiModel)) != null) {
                            num3 = num2;
                        }
                        return num.compareTo(num3);
                    }
                };
                List<Object> listO0 = CollectionsKt.o0(arrayList, new Comparator() { // from class: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$thenBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj2, Object obj3) {
                        String strName;
                        FormSectionTypeUiModel formSectionTypeUiModel;
                        String strName2;
                        FormSectionTypeUiModel formSectionTypeUiModel2;
                        int iCompare = comparator.compare(obj2, obj3);
                        if (iCompare != 0) {
                            return iCompare;
                        }
                        FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) obj2;
                        FormFieldUiModel formFieldUiModel2 = formFieldGenericUiModel2 instanceof FormFieldUiModel ? (FormFieldUiModel) formFieldGenericUiModel2 : null;
                        String str2 = "";
                        if (formFieldUiModel2 == null || (formSectionTypeUiModel2 = formFieldUiModel2.d) == null || (strName = formSectionTypeUiModel2.name()) == null) {
                            strName = "";
                        }
                        FormFieldGenericUiModel formFieldGenericUiModel3 = (FormFieldGenericUiModel) obj3;
                        FormFieldUiModel formFieldUiModel3 = formFieldGenericUiModel3 instanceof FormFieldUiModel ? (FormFieldUiModel) formFieldGenericUiModel3 : null;
                        if (formFieldUiModel3 != null && (formSectionTypeUiModel = formFieldUiModel3.d) != null && (strName2 = formSectionTypeUiModel.name()) != null) {
                            str2 = strName2;
                        }
                        return strName.compareTo(str2);
                    }
                });
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listO0, 10));
                for (Object objC : listO0) {
                    if (objC instanceof FormFieldUiModel) {
                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) objC;
                        switch (WhenMappings.f53857a[formFieldUiModel2.d.ordinal()]) {
                            case 1:
                                str = "nativeRegister_postalCode_textField";
                                break;
                            case 2:
                                str = "nativeRegister_state_textField";
                                break;
                            case 3:
                                str = "nativeRegister_city_textField";
                                break;
                            case 4:
                                str = "nativeRegister_address1_textField";
                                break;
                            case 5:
                                str = "nativeRegister_address2_textField";
                                break;
                            case 6:
                                str = "nativeRegister_address3_textField";
                                break;
                            default:
                                str = formFieldUiModel2.f57501k;
                                break;
                        }
                        objC = FormFieldUiModel.c(formFieldUiModel2, false, null, null, null, null, null, str, false, false, 959);
                    }
                    arrayList2.add(objC);
                }
                objX3 = new FormUiModel(arrayList2);
                gapComposerH.q(objX3);
            }
            Modifier modifierM = PaddingKt.m(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("NativeRegisterRegistrationAddressComposable"), "nativeRegister_addressSearch_textField"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7);
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            LVReadOnlyTextFieldKt.a("", modifierM, null, lVColorScheme, false, StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_search_address), false, null, null, null, null, function0, null, gapComposerH, 3078, (i9 >> 9) & 112, 14292);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_native_register_manually_description_address), PaddingKt.m(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("NativeRegisterRegistrationAddressComposable"), "nativeRegister_addressManualDescription_text"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            int i11 = i9 << 9;
            DynamicFormComposableKt.a(null, lVColorScheme, (FormUiModel) objX3, false, LVAppDesignKitTheme.l(gapComposerH).f48416e, function2, function1, function3, null, null, false, false, false, null, null, null, null, null, false, gapComposerH, (i11 & 3670016) | (458752 & i11) | 48 | ((i9 << 6) & 29360128), 100663296, 261897);
            function6 = function3;
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("NativeRegisterRegistrationAddressComposable"), 1.0f, true));
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48447b;
            Modifier modifierM2 = PaddingKt.m(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("NativeRegisterRegistrationAddressComposable"), "nativeRegister_confirm_button"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.confirm);
            nativeRegisterViewState2 = nativeRegisterViewState;
            boolean z2 = nativeRegisterViewState2.f54037k.f53992a;
            boolean zY2 = (i10 == 8388608) | gapComposerH.y(nativeRegisterViewState2) | ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX4 = gapComposerH.x();
            if (zY2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX4 != composer$Companion$Empty$1) {
                    i3 = 0;
                }
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                i4 = i3;
                function7 = function5;
                LVButtonKt.b(0, 376, gapComposerH, modifierM2, configurationButton, null, null, strC, (Function0) objX4, false, z2, false);
                Modifier modifierG = n00.g("NativeRegisterRegistrationAddressComposable", "nativeRegister_skipStep_link");
                Alignment.f8582a.getClass();
                Modifier modifierM3 = PaddingKt.m(columnScope.b(modifierG, Alignment.Companion.o), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 5);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_skip_the_step_cta);
                if (i10 == 8388608) {
                    i5 = 1;
                } else {
                    i5 = i4;
                }
                int i12 = (gapComposerH.y(nativeRegisterViewState2) ? 1 : 0) | i5;
                if ((i9 & 3670016) == 1048576) {
                    i6 = 1;
                } else {
                    i6 = i4;
                }
                i7 = i12 | i6;
                objX = gapComposerH.x();
                if (i7 == 0 || objX == composer$Companion$Empty$3) {
                    final int i13 = 1;
                    objX = new Function0() { // from class: sf0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i14 = i13;
                            Function0 function8 = function4;
                            NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                            Function1 function9 = function7;
                            switch (i14) {
                                case 0:
                                    List list2 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                                    function9.invoke(new NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                                    function8.mo47invoke();
                                    break;
                                default:
                                    List list3 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                                    function9.invoke(new NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                                    function8.mo47invoke();
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                gapComposer = gapComposerH;
                LVLinkKt.a(modifierM3, strC2, false, lVColorScheme, false, (Function0) objX, gapComposer, 3072, 20);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            i3 = 0;
            objX4 = new Function0() { // from class: sf0
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i14 = i3;
                    Function0 function8 = function6;
                    NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                    Function1 function9 = function5;
                    switch (i14) {
                        case 0:
                            List list2 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                            function9.invoke(new NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                            function8.mo47invoke();
                            break;
                        default:
                            List list3 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                            function9.invoke(new NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                            function8.mo47invoke();
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            gapComposerH.q(objX4);
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
            i4 = i3;
            function7 = function5;
            LVButtonKt.b(0, 376, gapComposerH, modifierM2, configurationButton, null, null, strC, (Function0) objX4, false, z2, false);
            Modifier modifierG2 = n00.g("NativeRegisterRegistrationAddressComposable", "nativeRegister_skipStep_link");
            Alignment.f8582a.getClass();
            Modifier modifierM4 = PaddingKt.m(columnScope.b(modifierG2, Alignment.Companion.o), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 5);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.mylv_skip_the_step_cta);
            if (i10 == 8388608) {
                i5 = 1;
            } else {
                i5 = i4;
            }
            int i14 = (gapComposerH.y(nativeRegisterViewState2) ? 1 : 0) | i5;
            if ((i9 & 3670016) == 1048576) {
                i6 = 1;
            } else {
                i6 = i4;
            }
            i7 = i14 | i6;
            objX = gapComposerH.x();
            if (i7 == 0) {
                final int i15 = 1;
                objX = new Function0() { // from class: sf0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i16 = i15;
                        Function0 function8 = function4;
                        NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                        Function1 function9 = function7;
                        switch (i16) {
                            case 0:
                                List list2 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                                function9.invoke(new NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                                function8.mo47invoke();
                                break;
                            default:
                                List list3 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                                function9.invoke(new NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                                function8.mo47invoke();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            } else {
                final int i16 = 1;
                objX = new Function0() { // from class: sf0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i17 = i16;
                        Function0 function8 = function4;
                        NativeRegisterViewState nativeRegisterViewState3 = nativeRegisterViewState2;
                        Function1 function9 = function7;
                        switch (i17) {
                            case 0:
                                List list2 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                                function9.invoke(new NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                                function8.mo47invoke();
                                break;
                            default:
                                List list3 = NativeRegisterRegistrationAddressComposableKt.f53854a;
                                function9.invoke(new NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent(nativeRegisterViewState3.o, nativeRegisterViewState3.p));
                                function8.mo47invoke();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LVLinkKt.a(modifierM4, strC3, false, lVColorScheme, false, (Function0) objX, gapComposer, 3072, 20);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            function6 = function3;
            function7 = function5;
            gapComposer = gapComposerH;
            nativeRegisterViewState2 = nativeRegisterViewState;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d4(columnScope, nativeRegisterViewState2, function2, function1, function0, function6, function4, function7, z, i2);
        }
    }
}
