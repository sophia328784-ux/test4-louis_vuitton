package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.AutofillHighlightKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.ClearButtonMode;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import defpackage.n00;
import defpackage.n60;
import defpackage.uc;
import defpackage.vc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.squirrelframework.foundation.fsm.Action;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/text/input/TextFieldValue;", "textFieldValueState", "", "lastTextValue", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTextFieldInternalKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpringSpec f48631a = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48632a;

        static {
            int[] iArr = new int[ClearButtonMode.values().length];
            try {
                iArr[ClearButtonMode.Never.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ClearButtonMode.Always.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ClearButtonMode.WhileEditing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48632a = iArr;
        }
    }

    public static final void a(final TextFieldValue textFieldValue, final Function1 function1, Modifier modifier, final ConfigurationTextField configurationTextField, final boolean z, final boolean z2, final String str, final Modifier modifier2, final boolean z3, final String str2, final Modifier modifier3, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final boolean z4, final int i2, final int i3, final Integer num, final String str3, final Function0 function0, final VisualTransformation visualTransformation, final MutableInteractionSource mutableInteractionSource, final boolean z5, final Function1 function2, final ClearButtonMode clearButtonMode, final Modifier modifier4, final String str4, final boolean z6, Composer composer, final int i4, final int i5, final int i6) {
        int i7;
        final Function1 function3;
        boolean z7;
        int i8;
        int i9;
        GapComposer gapComposer;
        final Modifier modifier5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTextFieldInternal");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(1870592736);
        if ((i4 & 6) == 0) {
            i7 = (gapComposerH.K(textFieldValue) ? 4 : 2) | i4;
        } else {
            i7 = i4;
        }
        if ((i4 & 48) == 0) {
            function3 = function1;
            i7 |= gapComposerH.y(function3) ? 32 : 16;
        } else {
            function3 = function1;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i7 |= gapComposerH.K(configurationTextField) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            z7 = z;
            i7 |= gapComposerH.b(z7) ? 16384 : 8192;
        } else {
            z7 = z;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            i7 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i7 |= gapComposerH.K(str) ? 1048576 : 524288;
        }
        if ((i4 & 12582912) == 0) {
            i7 |= gapComposerH.K(modifier2) ? 8388608 : 4194304;
        }
        if ((i4 & 100663296) == 0) {
            i7 |= gapComposerH.b(z3) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i7 |= gapComposerH.K(str2) ? 536870912 : 268435456;
        }
        if ((i5 & 6) == 0) {
            i8 = i5 | (gapComposerH.K(modifier3) ? 4 : 2);
        } else {
            i8 = i5;
        }
        if ((i5 & 48) == 0) {
            i8 |= gapComposerH.K(keyboardOptions) ? 32 : 16;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.K(keyboardActions) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i8 |= gapComposerH.b(z4) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i8 |= gapComposerH.d(i2) ? 16384 : 8192;
        }
        if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
            i8 |= gapComposerH.d(i3) ? 131072 : 65536;
        }
        if ((i5 & 1572864) == 0) {
            i8 |= gapComposerH.K(num) ? 1048576 : 524288;
        }
        if ((i5 & 12582912) == 0) {
            i8 |= gapComposerH.K(str3) ? 8388608 : 4194304;
        }
        if ((i5 & 100663296) == 0) {
            i8 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if ((i5 & 805306368) == 0) {
            i8 |= gapComposerH.K(visualTransformation) ? 536870912 : 268435456;
        }
        if ((i6 & 6) == 0) {
            i9 = i6 | (gapComposerH.K(mutableInteractionSource) ? 4 : 2);
        } else {
            i9 = i6;
        }
        if ((i6 & 48) == 0) {
            i9 |= gapComposerH.b(z5) ? 32 : 16;
        }
        if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
            i9 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i6 & 3072) == 0) {
            i9 |= gapComposerH.d(clearButtonMode == null ? -1 : clearButtonMode.ordinal()) ? 2048 : 1024;
        }
        if ((i6 & 24576) == 0) {
            i9 |= gapComposerH.K(modifier4) ? 16384 : 8192;
        }
        if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
            i9 |= gapComposerH.K(str4) ? 131072 : 65536;
        }
        if ((i6 & 1572864) == 0) {
            i9 |= gapComposerH.b(z6) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (i8 & 306783379) == 306783378 && (i9 & 599187) == 599186) ? false : true)) {
            gapComposerH.y0();
            if ((i4 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextSelectionColors textSelectionColors = new TextSelectionColors(configurationTextField.r, configurationTextField.s, null);
            long j2 = configurationTextField.w;
            final LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            final boolean z8 = z7;
            modifier5 = modifierE;
            gapComposer = gapComposerH;
            CompositionLocalKt.b(new ProvidedValue[]{TextSelectionColorsKt.f6503a.c(textSelectionColors), defpackage.a.d(j2, AutofillHighlightKt.f5852b)}, ComposableLambdaKt.b(1245032352, new Function2() { // from class: m80
                /* JADX WARN: Code duplicated, block: B:43:0x00f1  */
                /* JADX WARN: Code duplicated, block: B:45:0x00fb  */
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Modifier dTFunctionNameModifier;
                    long j3;
                    final FocusRequester focusRequester;
                    int i10;
                    int i11;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                    Modifier modifierE2 = modifier5;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "LVTextFieldInternal$lambda$13");
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new FocusRequester();
                            composer2.q(objX);
                        }
                        FocusRequester focusRequester2 = (FocusRequester) objX;
                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        final MutableState mutableStateA = FocusInteractionKt.a(mutableInteractionSource2, composer2, 0);
                        Modifier modifierA = FocusRequesterModifierKt.a(modifierE2, focusRequester2);
                        final boolean z9 = z3;
                        boolean zB = composer2.b(z9);
                        Object objX2 = composer2.x();
                        if (zB || objX2 == composer$Companion$Empty$1) {
                            objX2 = new x4(z9, 5);
                            composer2.q(objX2);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX2);
                        final String str5 = str2;
                        if (z9) {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-578390072, composer2, "LVTextFieldInternal$lambda$13");
                            boolean zK = composer2.K(str5);
                            Object objX3 = composer2.x();
                            if (zK || objX3 == composer$Companion$Empty$1) {
                                objX3 = new lt(str5, 18);
                                composer2.q(objX3);
                            }
                            dTFunctionNameModifier = SemanticsModifierKt.b(dTFunctionNameModifierJ, false, (Function1) objX3);
                            composer2.F();
                        } else {
                            composer2.L(-578234390);
                            composer2.F();
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVTextFieldInternal$lambda$13");
                        }
                        Modifier modifierO = modifierB.o(dTFunctionNameModifier);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48429j;
                        final boolean z10 = z8;
                        final ConfigurationTextField configurationTextField2 = configurationTextField;
                        if (z10) {
                            j3 = z9 ? configurationTextField2.f48607c : configurationTextField2.f48605a;
                        } else {
                            j3 = configurationTextField2.f48606b;
                        }
                        LayoutDirection layoutDirection2 = LayoutDirection.Rtl;
                        LayoutDirection layoutDirection3 = layoutDirection;
                        KeyboardOptions keyboardOptions2 = keyboardOptions;
                        if (layoutDirection3 == layoutDirection2) {
                            int i12 = keyboardOptions2.f5922c;
                            KeyboardType.f10809b.getClass();
                            focusRequester = focusRequester2;
                            if (i12 == KeyboardType.f10814i) {
                                TextDirection.f10969b.getClass();
                                i10 = TextDirection.f10970c;
                            }
                            int i13 = i10;
                            if (layoutDirection3 == layoutDirection2) {
                                TextAlign.f10959b.getClass();
                                i11 = TextAlign.f10963h;
                            } else {
                                TextAlign.f10959b.getClass();
                                i11 = TextAlign.g;
                            }
                            TextStyle textStyleA = TextStyle.a(textStyle, j3, 0L, null, null, 0L, null, i11, i13, 0L, null, null, 16678910);
                            SolidColor solidColor = new SolidColor(configurationTextField2.q, null);
                            final ClearButtonMode clearButtonMode2 = clearButtonMode;
                            final TextFieldValue textFieldValue2 = textFieldValue;
                            final String str6 = str;
                            final Modifier modifier6 = modifier2;
                            final Modifier modifier7 = modifier3;
                            final boolean z11 = z4;
                            final Integer num2 = num;
                            final boolean z12 = z5;
                            final boolean z13 = z6;
                            final Modifier modifier8 = modifier4;
                            final String str7 = str3;
                            final Function0 function4 = function0;
                            final Function1 function5 = function3;
                            final String str8 = str4;
                            BasicTextFieldKt.a(textFieldValue2, function5, modifierO, z10, z2, textStyleA, keyboardOptions2, keyboardActions, z11, i2, i3, visualTransformation, function2, mutableInteractionSource2, solidColor, ComposableLambdaKt.b(-542744611, new Function3() { // from class: k80
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj3, Object obj4, Object obj5) {
                                    ConfigurationTextField configurationTextField3;
                                    boolean z14;
                                    ComposableLambdaImpl composableLambdaImpl;
                                    ComposableLambdaImpl composableLambdaImpl2;
                                    Function2 function6 = (Function2) obj3;
                                    Composer composer3 = (Composer) obj4;
                                    int iIntValue2 = ((Integer) obj5).intValue();
                                    SpringSpec springSpec2 = LVTextFieldInternalKt.f48631a;
                                    Modifier modifierE3 = modifier6;
                                    if (modifierE3 != null) {
                                        modifierE3 = a.e(modifierE3, "LVTextFieldInternal$lambda$13$3");
                                    }
                                    Modifier modifier9 = modifierE3;
                                    function6.getClass();
                                    if ((iIntValue2 & 6) == 0) {
                                        iIntValue2 |= composer3.y(function6) ? 4 : 2;
                                    }
                                    boolean zBooleanValue = false;
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        int i14 = LVTextFieldInternalKt.WhenMappings.f48632a[clearButtonMode2.ordinal()];
                                        State state = mutableStateA;
                                        if (i14 != 1) {
                                            if (i14 == 2) {
                                                zBooleanValue = true;
                                            } else {
                                                if (i14 != 3) {
                                                    v40.g();
                                                    return null;
                                                }
                                                zBooleanValue = ((Boolean) state.getF10755b()).booleanValue();
                                            }
                                        }
                                        LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                                        String str9 = textFieldValue2.f10840a.f10420c;
                                        boolean zBooleanValue2 = ((Boolean) state.getF10755b()).booleanValue();
                                        ConfigurationTextField configurationTextField4 = configurationTextField2;
                                        boolean z15 = z10;
                                        Integer num3 = num2;
                                        if (num3 != null) {
                                            composer3.L(1648022771);
                                            z14 = z15;
                                            configurationTextField3 = configurationTextField4;
                                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1269768816, new hg(modifier8, num3, str7, z14, function4, configurationTextField4, 7), composer3);
                                            composer3.F();
                                            composableLambdaImpl = composableLambdaImplB;
                                        } else {
                                            configurationTextField3 = configurationTextField4;
                                            z14 = z15;
                                            composer3.L(1648570417);
                                            composer3.F();
                                            composableLambdaImpl = null;
                                        }
                                        if (zBooleanValue) {
                                            composer3.L(1648699873);
                                            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1688560945, new uv(function5, str8, configurationTextField3, focusRequester), composer3);
                                            composer3.F();
                                            composableLambdaImpl2 = composableLambdaImplB2;
                                        } else {
                                            composer3.L(1649295569);
                                            composer3.F();
                                            composableLambdaImpl2 = null;
                                        }
                                        lVTextFieldInternal.b(null, str9, configurationTextField3, z14, str6, modifier9, str5, modifier7, z9, zBooleanValue2, z11, composableLambdaImpl, composableLambdaImpl2, function6, z12, z13, composer3, 0, ((iIntValue2 << 9) & 7168) | 1572864);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 0, ImageMetadata.EDGE_MODE, 0);
                        } else {
                            focusRequester = focusRequester2;
                        }
                        if (layoutDirection3 == layoutDirection2) {
                            TextDirection.f10969b.getClass();
                            i10 = TextDirection.f10970c;
                        } else {
                            TextDirection.f10969b.getClass();
                            i10 = TextDirection.f10970c;
                        }
                        int i14 = i10;
                        if (layoutDirection3 == layoutDirection2) {
                            TextAlign.f10959b.getClass();
                            i11 = TextAlign.f10963h;
                        } else {
                            TextAlign.f10959b.getClass();
                            i11 = TextAlign.g;
                        }
                        TextStyle textStyleA2 = TextStyle.a(textStyle, j3, 0L, null, null, 0L, null, i11, i14, 0L, null, null, 16678910);
                        SolidColor solidColor2 = new SolidColor(configurationTextField2.q, null);
                        final ClearButtonMode clearButtonMode3 = clearButtonMode;
                        final TextFieldValue textFieldValue3 = textFieldValue;
                        final String str9 = str;
                        final Modifier modifier9 = modifier2;
                        final Modifier modifier10 = modifier3;
                        final boolean z14 = z4;
                        final Integer num3 = num;
                        final boolean z15 = z5;
                        final boolean z16 = z6;
                        final Modifier modifier11 = modifier4;
                        final String str10 = str3;
                        final Function0 function6 = function0;
                        final Function1 function7 = function3;
                        final String str11 = str4;
                        BasicTextFieldKt.a(textFieldValue3, function7, modifierO, z10, z2, textStyleA2, keyboardOptions2, keyboardActions, z14, i2, i3, visualTransformation, function2, mutableInteractionSource2, solidColor2, ComposableLambdaKt.b(-542744611, new Function3() { // from class: k80
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj3, Object obj4, Object obj5) {
                                ConfigurationTextField configurationTextField3;
                                boolean z17;
                                ComposableLambdaImpl composableLambdaImpl;
                                ComposableLambdaImpl composableLambdaImpl2;
                                Function2 function8 = (Function2) obj3;
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Integer) obj5).intValue();
                                SpringSpec springSpec2 = LVTextFieldInternalKt.f48631a;
                                Modifier modifierE3 = modifier9;
                                if (modifierE3 != null) {
                                    modifierE3 = a.e(modifierE3, "LVTextFieldInternal$lambda$13$3");
                                }
                                Modifier modifier12 = modifierE3;
                                function8.getClass();
                                if ((iIntValue2 & 6) == 0) {
                                    iIntValue2 |= composer3.y(function8) ? 4 : 2;
                                }
                                boolean zBooleanValue = false;
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    int i15 = LVTextFieldInternalKt.WhenMappings.f48632a[clearButtonMode3.ordinal()];
                                    State state = mutableStateA;
                                    if (i15 != 1) {
                                        if (i15 == 2) {
                                            zBooleanValue = true;
                                        } else {
                                            if (i15 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            zBooleanValue = ((Boolean) state.getF10755b()).booleanValue();
                                        }
                                    }
                                    LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                                    String str12 = textFieldValue3.f10840a.f10420c;
                                    boolean zBooleanValue2 = ((Boolean) state.getF10755b()).booleanValue();
                                    ConfigurationTextField configurationTextField4 = configurationTextField2;
                                    boolean z18 = z10;
                                    Integer num4 = num3;
                                    if (num4 != null) {
                                        composer3.L(1648022771);
                                        z17 = z18;
                                        configurationTextField3 = configurationTextField4;
                                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1269768816, new hg(modifier11, num4, str10, z17, function6, configurationTextField4, 7), composer3);
                                        composer3.F();
                                        composableLambdaImpl = composableLambdaImplB;
                                    } else {
                                        configurationTextField3 = configurationTextField4;
                                        z17 = z18;
                                        composer3.L(1648570417);
                                        composer3.F();
                                        composableLambdaImpl = null;
                                    }
                                    if (zBooleanValue) {
                                        composer3.L(1648699873);
                                        ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1688560945, new uv(function7, str11, configurationTextField3, focusRequester), composer3);
                                        composer3.F();
                                        composableLambdaImpl2 = composableLambdaImplB2;
                                    } else {
                                        composer3.L(1649295569);
                                        composer3.F();
                                        composableLambdaImpl2 = null;
                                    }
                                    lVTextFieldInternal.b(null, str12, configurationTextField3, z17, str9, modifier12, str5, modifier10, z9, zBooleanValue2, z14, composableLambdaImpl, composableLambdaImpl2, function8, z15, z16, composer3, 0, ((iIntValue2 << 9) & 7168) | 1572864);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 0, ImageMetadata.EDGE_MODE, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer = gapComposerH;
            modifier5 = modifierE;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier6 = modifier5;
            recomposeScopeImplB0.d = new Function2() { // from class: n80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i4 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i5);
                    int iA3 = RecomposeScopeImplKt.a(i6);
                    LVTextFieldInternalKt.a(textFieldValue, function1, modifier6, configurationTextField, z, z2, str, modifier2, z3, str2, modifier3, keyboardOptions, keyboardActions, z4, i2, i3, num, str3, function0, visualTransformation, mutableInteractionSource, z5, function2, clearButtonMode, modifier4, str4, z6, (Composer) obj, iA, iA2, iA3);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0187  */
    /* JADX WARN: Code duplicated, block: B:121:0x018d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0190  */
    /* JADX WARN: Code duplicated, block: B:126:0x0198  */
    /* JADX WARN: Code duplicated, block: B:134:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:137:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:138:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:140:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:142:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:143:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:147:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:148:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:150:0x01de  */
    /* JADX WARN: Code duplicated, block: B:152:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:153:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:157:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:158:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:160:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:162:0x0200  */
    /* JADX WARN: Code duplicated, block: B:163:0x0203  */
    /* JADX WARN: Code duplicated, block: B:167:0x020d  */
    /* JADX WARN: Code duplicated, block: B:168:0x0212  */
    /* JADX WARN: Code duplicated, block: B:170:0x0218  */
    /* JADX WARN: Code duplicated, block: B:172:0x021e  */
    /* JADX WARN: Code duplicated, block: B:173:0x0221  */
    /* JADX WARN: Code duplicated, block: B:177:0x0229  */
    /* JADX WARN: Code duplicated, block: B:178:0x022e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0234  */
    /* JADX WARN: Code duplicated, block: B:182:0x023a  */
    /* JADX WARN: Code duplicated, block: B:186:0x0244  */
    /* JADX WARN: Code duplicated, block: B:188:0x024a  */
    /* JADX WARN: Code duplicated, block: B:189:0x024d  */
    /* JADX WARN: Code duplicated, block: B:191:0x0252  */
    /* JADX WARN: Code duplicated, block: B:194:0x025a  */
    /* JADX WARN: Code duplicated, block: B:196:0x025f  */
    /* JADX WARN: Code duplicated, block: B:198:0x0265  */
    /* JADX WARN: Code duplicated, block: B:200:0x026b  */
    /* JADX WARN: Code duplicated, block: B:201:0x026e  */
    /* JADX WARN: Code duplicated, block: B:205:0x0277  */
    /* JADX WARN: Code duplicated, block: B:206:0x027a  */
    /* JADX WARN: Code duplicated, block: B:208:0x0280  */
    /* JADX WARN: Code duplicated, block: B:211:0x0289  */
    /* JADX WARN: Code duplicated, block: B:213:0x0290  */
    /* JADX WARN: Code duplicated, block: B:216:0x0298  */
    /* JADX WARN: Code duplicated, block: B:217:0x029b  */
    /* JADX WARN: Code duplicated, block: B:219:0x02a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:220:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:221:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:225:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:227:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:230:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:237:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:240:0x02db  */
    /* JADX WARN: Code duplicated, block: B:241:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:243:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:245:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:249:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:250:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:252:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:255:0x0306  */
    /* JADX WARN: Code duplicated, block: B:265:0x032c  */
    /* JADX WARN: Code duplicated, block: B:268:0x0336  */
    /* JADX WARN: Code duplicated, block: B:286:0x038e  */
    /* JADX WARN: Code duplicated, block: B:288:0x0392  */
    /* JADX WARN: Code duplicated, block: B:289:0x039b  */
    /* JADX WARN: Code duplicated, block: B:292:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:293:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:295:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:296:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:298:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:299:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:302:0x03c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:303:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:304:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:306:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:308:0x03da  */
    /* JADX WARN: Code duplicated, block: B:309:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:312:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:313:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:315:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:316:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:319:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:321:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:322:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:324:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:325:0x0400  */
    /* JADX WARN: Code duplicated, block: B:328:0x0406  */
    /* JADX WARN: Code duplicated, block: B:330:0x040c  */
    /* JADX WARN: Code duplicated, block: B:332:0x0419  */
    /* JADX WARN: Code duplicated, block: B:334:0x041d  */
    /* JADX WARN: Code duplicated, block: B:335:0x0420  */
    /* JADX WARN: Code duplicated, block: B:338:0x0428  */
    /* JADX WARN: Code duplicated, block: B:339:0x0431  */
    /* JADX WARN: Code duplicated, block: B:341:0x0435  */
    /* JADX WARN: Code duplicated, block: B:342:0x0438  */
    /* JADX WARN: Code duplicated, block: B:345:0x0453  */
    /* JADX WARN: Code duplicated, block: B:347:0x0463  */
    /* JADX WARN: Code duplicated, block: B:350:0x047c  */
    /* JADX WARN: Code duplicated, block: B:354:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:357:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:358:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:362:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:365:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:369:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:371:0x054a  */
    /* JADX WARN: Code duplicated, block: B:374:0x0576  */
    /* JADX WARN: Code duplicated, block: B:376:? A[RETURN, SYNTHETIC] */
    public static final void b(final String str, final Function1 function1, Modifier modifier, final ConfigurationTextField configurationTextField, final boolean z, final boolean z2, final String str2, Modifier modifier2, final boolean z3, final String str3, Modifier modifier3, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, final boolean z4, int i2, int i3, Integer num, String str4, Function0 function0, VisualTransformation visualTransformation, final MutableInteractionSource mutableInteractionSource, boolean z5, Function1 function2, ClearButtonMode clearButtonMode, Modifier modifier4, String str5, boolean z6, Composer composer, final int i4, final int i5, final int i6, final int i7) {
        int i8;
        ConfigurationTextField configurationTextField2;
        Modifier modifier5;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int iOrdinal;
        int i29;
        int i30;
        int i31;
        int i32;
        boolean z7;
        GapComposer gapComposer;
        final Modifier modifier6;
        final KeyboardOptions keyboardOptions2;
        final KeyboardActions keyboardActions2;
        final int i33;
        final int i34;
        final Integer num2;
        final String str6;
        final Function0 function3;
        final VisualTransformation visualTransformation2;
        final boolean z8;
        final Function1 function4;
        final ClearButtonMode clearButtonMode2;
        final Modifier modifier7;
        final String str7;
        final boolean z9;
        final Modifier modifier8;
        final Modifier modifier9;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i35;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier modifierG;
        Modifier modifierG2;
        KeyboardOptions keyboardOptions3;
        KeyboardActions keyboardActions3;
        int i36;
        int i37;
        Integer num3;
        String str8;
        VisualTransformation visualTransformation3;
        boolean z10;
        Function1 function5;
        ClearButtonMode clearButtonMode3;
        Function1 function6;
        Modifier modifierG3;
        String str9;
        int i38;
        Modifier modifier10;
        ClearButtonMode clearButtonMode4;
        Modifier modifier11;
        int i39;
        KeyboardOptions keyboardOptions4;
        KeyboardActions keyboardActions4;
        boolean z11;
        int i40;
        Function0 function7;
        VisualTransformation visualTransformation4;
        Integer num4;
        boolean z12;
        boolean z13;
        Object objX;
        Object objX2;
        MutableState mutableState;
        TextFieldValue textFieldValueB;
        boolean zK;
        Object objX3;
        boolean z14;
        Object objX4;
        MutableState mutableState2;
        boolean z15;
        Object objX5;
        int i41;
        int i42;
        int i43;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTextFieldInternal");
        }
        str.getClass();
        function1.getClass();
        configurationTextField.getClass();
        GapComposer gapComposerH = composer.h(-1542527917);
        if ((i4 & 6) == 0) {
            i8 = (gapComposerH.K(str) ? 4 : 2) | i4;
        } else {
            i8 = i4;
        }
        if ((i4 & 48) == 0) {
            i8 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            configurationTextField2 = configurationTextField;
            i8 |= gapComposerH.K(configurationTextField2) ? 2048 : 1024;
        } else {
            configurationTextField2 = configurationTextField;
        }
        int i44 = 8192;
        if ((i4 & 24576) == 0) {
            i8 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            i8 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i8 |= gapComposerH.K(str2) ? 1048576 : 524288;
        }
        if ((i4 & 12582912) == 0) {
            if ((i7 & 128) == 0) {
                modifier5 = modifier2;
                if (gapComposerH.K(modifier5)) {
                    i43 = 8388608;
                }
                i8 |= i43;
            } else {
                modifier5 = modifier2;
            }
            i43 = 4194304;
            i8 |= i43;
        } else {
            modifier5 = modifier2;
        }
        if ((i4 & 100663296) == 0) {
            i8 |= gapComposerH.b(z3) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i8 |= gapComposerH.K(str3) ? 536870912 : 268435456;
        }
        if ((i5 & 6) == 0) {
            i9 = i5 | (((i7 & 1024) == 0 && gapComposerH.K(modifier3)) ? 4 : 2);
        } else {
            i9 = i5;
        }
        int i45 = i7 & 2048;
        if (i45 != 0) {
            i9 |= 48;
        } else if ((i5 & 48) == 0) {
            i9 |= gapComposerH.K(keyboardOptions) ? 32 : 16;
        }
        int i46 = i9;
        int i47 = i7 & 4096;
        if (i47 == 0) {
            i10 = i46;
            if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
                i10 |= gapComposerH.K(keyboardActions) ? 256 : 128;
            }
            if ((i5 & 3072) == 0) {
                if (gapComposerH.b(z4)) {
                    i42 = 2048;
                } else {
                    i42 = 1024;
                }
                i10 |= i42;
            }
            if ((i5 & 24576) != 0) {
                i10 |= ((i7 & 16384) == 0 || !gapComposerH.d(i2)) ? 8192 : 16384;
            }
            i11 = i7 & 32768;
            if (i11 != 0) {
                i10 |= ImageMetadata.EDGE_MODE;
            } else if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i3)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i10 |= i12;
            }
            i13 = i7 & 65536;
            if (i13 != 0) {
                i10 |= 1572864;
            } else if ((i5 & 1572864) == 0) {
                if (gapComposerH.K(num)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i10 |= i14;
            }
            i15 = i7 & 131072;
            if (i15 != 0) {
                i10 |= 12582912;
            } else if ((i5 & 12582912) == 0) {
                if (gapComposerH.K(str4)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i10 |= i16;
            }
            i17 = i7 & 262144;
            if (i17 != 0) {
                i10 |= 100663296;
            } else if ((i5 & 100663296) == 0) {
                if (gapComposerH.y(function0)) {
                    i18 = 67108864;
                } else {
                    i18 = 33554432;
                }
                i10 |= i18;
            }
            i19 = i7 & 524288;
            if (i19 != 0) {
                i10 |= 805306368;
            } else if ((i5 & 805306368) == 0) {
                i10 |= gapComposerH.K(visualTransformation) ? 536870912 : 268435456;
            }
            if ((i6 & 6) == 0) {
                if (gapComposerH.K(mutableInteractionSource)) {
                    i41 = 4;
                } else {
                    i41 = 2;
                }
                i20 = i6 | i41;
            } else {
                i20 = i6;
            }
            i21 = i7 & PKIFailureInfo.badSenderNonce;
            if (i21 != 0) {
                i20 |= 48;
            } else if ((i6 & 48) == 0) {
                if (gapComposerH.b(z5)) {
                    i22 = 32;
                } else {
                    i22 = 16;
                }
                i20 |= i22;
            }
            i23 = i20;
            i24 = i7 & 4194304;
            if (i24 != 0) {
                i25 = i23 | KyberEngine.KyberPolyBytes;
            } else if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
                i25 = i23 | (gapComposerH.y(function2) ? 256 : 128);
            } else {
                i25 = i23;
            }
            i26 = i7 & 8388608;
            if (i26 != 0) {
                i28 = i25 | 3072;
            } else {
                i27 = i25;
                if ((i6 & 3072) == 0) {
                    if (clearButtonMode == null) {
                        iOrdinal = -1;
                    } else {
                        iOrdinal = clearButtonMode.ordinal();
                    }
                    i28 = i27 | (gapComposerH.d(iOrdinal) ? 2048 : 1024);
                } else {
                    i28 = i27;
                }
            }
            i29 = i28;
            if ((i6 & 24576) == 0) {
                if ((i7 & 16777216) == 0 && gapComposerH.K(modifier4)) {
                    i44 = 16384;
                }
                i30 = i29 | i44;
            } else {
                i30 = i29;
            }
            i31 = i7 & 33554432;
            if (i31 != 0) {
                i30 |= ImageMetadata.EDGE_MODE;
            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                i30 |= gapComposerH.K(str5) ? 131072 : 65536;
            }
            i32 = i7 & 67108864;
            if (i32 != 0) {
                i30 |= 1572864;
            } else if ((i6 & 1572864) == 0) {
                i30 |= gapComposerH.b(z6) ? 1048576 : 524288;
            }
            if ((i8 & 306783379) != 306783378 && (i10 & 306783379) == 306783378 && (i30 & 599187) == 599186) {
                z7 = false;
            } else {
                z7 = true;
            }
            if (gapComposerH.p(i8 & 1, z7)) {
                gapComposerH.y0();
                i35 = i4 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i35 != 0 || gapComposerH.h0()) {
                    if ((i7 & 128) != 0) {
                        modifierG = n00.g("LVTextFieldInternal", "textField_title_text");
                        i8 &= -29360129;
                    } else {
                        modifierG = modifier5;
                    }
                    if ((i7 & 1024) != 0) {
                        modifierG2 = n00.g("LVTextFieldInternal", "textField_supporting_text");
                        i10 &= -15;
                    } else {
                        modifierG2 = modifier3;
                    }
                    if (i45 != 0) {
                        KeyboardOptions.f5918h.getClass();
                        keyboardOptions3 = KeyboardOptions.f5919i;
                    } else {
                        keyboardOptions3 = keyboardOptions;
                    }
                    if (i47 != 0) {
                        KeyboardActions.g.getClass();
                        keyboardActions3 = KeyboardActions.f5912h;
                    } else {
                        keyboardActions3 = keyboardActions;
                    }
                    modifier5 = modifierG;
                    if ((i7 & 16384) != 0) {
                        if (z4) {
                            i36 = 1;
                        } else {
                            i36 = Integer.MAX_VALUE;
                        }
                        i10 &= -57345;
                    } else {
                        i36 = i2;
                    }
                    if (i11 != 0) {
                        i37 = 1;
                    } else {
                        i37 = i3;
                    }
                    if (i13 != 0) {
                        num3 = null;
                    } else {
                        num3 = num;
                    }
                    if (i15 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    Function0 function8 = i17 == 0 ? function0 : null;
                    if (i19 != 0) {
                        visualTransformation3 = VisualTransformation.Companion.f10865a;
                    } else {
                        visualTransformation3 = visualTransformation;
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z5;
                    }
                    int i48 = i36;
                    if (i24 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new n60(11);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i26 != 0) {
                        clearButtonMode3 = ClearButtonMode.Never;
                    } else {
                        clearButtonMode3 = clearButtonMode;
                    }
                    function6 = function5;
                    if ((i7 & 16777216) != 0) {
                        modifierG3 = n00.g("LVTextFieldInternal", "textField_accessory_button");
                        i30 &= -57345;
                    } else {
                        modifierG3 = modifier4;
                    }
                    if (i31 != 0) {
                        str9 = "textField_deleteText_button";
                    } else {
                        str9 = str5;
                    }
                    i38 = i48;
                    modifier10 = modifierG3;
                    clearButtonMode4 = clearButtonMode3;
                    modifier11 = modifierG2;
                    i39 = i30;
                    keyboardOptions4 = keyboardOptions3;
                    keyboardActions4 = keyboardActions3;
                    z11 = false;
                    i40 = i37;
                    function7 = function8;
                    visualTransformation4 = visualTransformation3;
                    num4 = num3;
                    if (i32 != 0) {
                        z12 = false;
                    } else {
                        z12 = z6;
                    }
                    z13 = z10;
                } else {
                    gapComposerH.D();
                    if ((i7 & 128) != 0) {
                        i8 &= -29360129;
                    }
                    if ((i7 & 1024) != 0) {
                        i10 &= -15;
                    }
                    if ((i7 & 16384) != 0) {
                        i10 &= -57345;
                    }
                    if ((i7 & 16777216) != 0) {
                        i30 &= -57345;
                    }
                    modifier11 = modifier3;
                    keyboardOptions4 = keyboardOptions;
                    keyboardActions4 = keyboardActions;
                    i38 = i2;
                    num4 = num;
                    str8 = str4;
                    function7 = function0;
                    visualTransformation4 = visualTransformation;
                    clearButtonMode4 = clearButtonMode;
                    modifier10 = modifier4;
                    str9 = str5;
                    z12 = z6;
                    i39 = i30;
                    z11 = false;
                    i40 = i3;
                    z13 = z5;
                    function6 = function2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(new TextFieldValue(str, 0L, (TextRange) null, 6, (DefaultConstructorMarker) null));
                    gapComposerH.q(objX2);
                }
                int i49 = i39;
                mutableState = (MutableState) objX2;
                textFieldValueB = TextFieldValue.b((TextFieldValue) mutableState.getF10755b(), str);
                zK = gapComposerH.K(textFieldValueB);
                objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new uc(textFieldValueB, mutableState, 2);
                    gapComposerH.q(objX3);
                }
                EffectsKt.i((Function0) objX3, gapComposerH);
                if ((i8 & 14) == 4) {
                    z14 = true;
                } else {
                    z14 = z11;
                }
                objX4 = gapComposerH.x();
                if (z14 || objX4 == composer$Companion$Empty$1) {
                    objX4 = SnapshotStateKt.g(str);
                    gapComposerH.q(objX4);
                }
                mutableState2 = (MutableState) objX4;
                boolean zK2 = gapComposerH.K(mutableState2);
                if ((i8 & 112) == 32) {
                    z11 = true;
                }
                z15 = zK2 | z11;
                objX5 = gapComposerH.x();
                if (z15 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new vc(function1, mutableState, mutableState2, 2);
                    gapComposerH.q(objX5);
                }
                gapComposer = gapComposerH;
                Modifier modifier12 = modifier5;
                Modifier modifier13 = modifierE;
                a(textFieldValueB, (Function1) objX5, modifier13, configurationTextField2, z, z2, str2, modifier12, z3, str3, modifier11, keyboardOptions4, keyboardActions4, z4, i38, i40, num4, str8, function7, visualTransformation4, mutableInteractionSource, z13, function6, clearButtonMode4, modifier10, str9, z12, gapComposer, i8 & 2147483520, i10 & Action.MAX_WEIGHT, i49 & 4194302);
                modifier6 = modifier13;
                modifier8 = modifier12;
                modifier9 = modifier11;
                keyboardOptions2 = keyboardOptions4;
                keyboardActions2 = keyboardActions4;
                i33 = i38;
                i34 = i40;
                num2 = num4;
                str6 = str8;
                function3 = function7;
                visualTransformation2 = visualTransformation4;
                z8 = z13;
                function4 = function6;
                clearButtonMode2 = clearButtonMode4;
                modifier7 = modifier10;
                str7 = str9;
                z9 = z12;
            } else {
                gapComposer = gapComposerH;
                modifier6 = modifierE;
                gapComposer.D();
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                i33 = i2;
                i34 = i3;
                num2 = num;
                str6 = str4;
                function3 = function0;
                visualTransformation2 = visualTransformation;
                z8 = z5;
                function4 = function2;
                clearButtonMode2 = clearButtonMode;
                modifier7 = modifier4;
                str7 = str5;
                z9 = z6;
                modifier8 = modifier5;
                modifier9 = modifier3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: l80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        int iA3 = RecomposeScopeImplKt.a(i6);
                        LVTextFieldInternalKt.b(str, function1, modifier6, configurationTextField, z, z2, str2, modifier8, z3, str3, modifier9, keyboardOptions2, keyboardActions2, z4, i33, i34, num2, str6, function3, visualTransformation2, mutableInteractionSource, z8, function4, clearButtonMode2, modifier7, str7, z9, (Composer) obj, iA, iA2, iA3, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i10 = i46 | KyberEngine.KyberPolyBytes;
        if ((i5 & 3072) == 0) {
            if (gapComposerH.b(z4)) {
                i42 = 2048;
            } else {
                i42 = 1024;
            }
            i10 |= i42;
        }
        if ((i5 & 24576) != 0) {
            i10 |= ((i7 & 16384) == 0 || !gapComposerH.d(i2)) ? 8192 : 16384;
        }
        i11 = i7 & 32768;
        if (i11 != 0) {
            i10 |= ImageMetadata.EDGE_MODE;
        } else if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.d(i3)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i10 |= i12;
        }
        i13 = i7 & 65536;
        if (i13 != 0) {
            i10 |= 1572864;
        } else if ((i5 & 1572864) == 0) {
            if (gapComposerH.K(num)) {
                i14 = 1048576;
            } else {
                i14 = 524288;
            }
            i10 |= i14;
        }
        i15 = i7 & 131072;
        if (i15 != 0) {
            i10 |= 12582912;
        } else if ((i5 & 12582912) == 0) {
            if (gapComposerH.K(str4)) {
                i16 = 8388608;
            } else {
                i16 = 4194304;
            }
            i10 |= i16;
        }
        i17 = i7 & 262144;
        if (i17 != 0) {
            i10 |= 100663296;
        } else if ((i5 & 100663296) == 0) {
            if (gapComposerH.y(function0)) {
                i18 = 67108864;
            } else {
                i18 = 33554432;
            }
            i10 |= i18;
        }
        i19 = i7 & 524288;
        if (i19 != 0) {
            i10 |= 805306368;
        } else if ((i5 & 805306368) == 0) {
            i10 |= gapComposerH.K(visualTransformation) ? 536870912 : 268435456;
        }
        if ((i6 & 6) == 0) {
            if (gapComposerH.K(mutableInteractionSource)) {
                i41 = 4;
            } else {
                i41 = 2;
            }
            i20 = i6 | i41;
        } else {
            i20 = i6;
        }
        i21 = i7 & PKIFailureInfo.badSenderNonce;
        if (i21 != 0) {
            i20 |= 48;
        } else if ((i6 & 48) == 0) {
            if (gapComposerH.b(z5)) {
                i22 = 32;
            } else {
                i22 = 16;
            }
            i20 |= i22;
        }
        i23 = i20;
        i24 = i7 & 4194304;
        if (i24 != 0) {
            i25 = i23 | KyberEngine.KyberPolyBytes;
        } else if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
            i25 = i23 | (gapComposerH.y(function2) ? 256 : 128);
        } else {
            i25 = i23;
        }
        i26 = i7 & 8388608;
        if (i26 != 0) {
            i28 = i25 | 3072;
        } else {
            i27 = i25;
            if ((i6 & 3072) == 0) {
                if (clearButtonMode == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = clearButtonMode.ordinal();
                }
                i28 = i27 | (gapComposerH.d(iOrdinal) ? 2048 : 1024);
            } else {
                i28 = i27;
            }
        }
        i29 = i28;
        if ((i6 & 24576) == 0) {
            if ((i7 & 16777216) == 0) {
                i44 = 16384;
            }
            i30 = i29 | i44;
        } else {
            i30 = i29;
        }
        i31 = i7 & 33554432;
        if (i31 != 0) {
            i30 |= ImageMetadata.EDGE_MODE;
        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
            i30 |= gapComposerH.K(str5) ? 131072 : 65536;
        }
        i32 = i7 & 67108864;
        if (i32 != 0) {
            i30 |= 1572864;
        } else if ((i6 & 1572864) == 0) {
            i30 |= gapComposerH.b(z6) ? 1048576 : 524288;
        }
        if ((i8 & 306783379) != 306783378) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (gapComposerH.p(i8 & 1, z7)) {
            gapComposerH.y0();
            i35 = i4 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i35 != 0) {
                if ((i7 & 128) != 0) {
                    modifierG = n00.g("LVTextFieldInternal", "textField_title_text");
                    i8 &= -29360129;
                } else {
                    modifierG = modifier5;
                }
                if ((i7 & 1024) != 0) {
                    modifierG2 = n00.g("LVTextFieldInternal", "textField_supporting_text");
                    i10 &= -15;
                } else {
                    modifierG2 = modifier3;
                }
                if (i45 != 0) {
                    KeyboardOptions.f5918h.getClass();
                    keyboardOptions3 = KeyboardOptions.f5919i;
                } else {
                    keyboardOptions3 = keyboardOptions;
                }
                if (i47 != 0) {
                    KeyboardActions.g.getClass();
                    keyboardActions3 = KeyboardActions.f5912h;
                } else {
                    keyboardActions3 = keyboardActions;
                }
                modifier5 = modifierG;
                if ((i7 & 16384) != 0) {
                    if (z4) {
                        i36 = 1;
                    } else {
                        i36 = Integer.MAX_VALUE;
                    }
                    i10 &= -57345;
                } else {
                    i36 = i2;
                }
                if (i11 != 0) {
                    i37 = 1;
                } else {
                    i37 = i3;
                }
                if (i13 != 0) {
                    num3 = null;
                } else {
                    num3 = num;
                }
                if (i15 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i17 == 0) {
                }
                if (i19 != 0) {
                    visualTransformation3 = VisualTransformation.Companion.f10865a;
                } else {
                    visualTransformation3 = visualTransformation;
                }
                if (i21 != 0) {
                    z10 = true;
                } else {
                    z10 = z5;
                }
                int i410 = i36;
                if (i24 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(11);
                        gapComposerH.q(objX);
                    }
                    function5 = (Function1) objX;
                } else {
                    function5 = function2;
                }
                if (i26 != 0) {
                    clearButtonMode3 = ClearButtonMode.Never;
                } else {
                    clearButtonMode3 = clearButtonMode;
                }
                function6 = function5;
                if ((i7 & 16777216) != 0) {
                    modifierG3 = n00.g("LVTextFieldInternal", "textField_accessory_button");
                    i30 &= -57345;
                } else {
                    modifierG3 = modifier4;
                }
                if (i31 != 0) {
                    str9 = "textField_deleteText_button";
                } else {
                    str9 = str5;
                }
                i38 = i410;
                modifier10 = modifierG3;
                clearButtonMode4 = clearButtonMode3;
                modifier11 = modifierG2;
                i39 = i30;
                keyboardOptions4 = keyboardOptions3;
                keyboardActions4 = keyboardActions3;
                z11 = false;
                i40 = i37;
                function7 = function8;
                visualTransformation4 = visualTransformation3;
                num4 = num3;
                if (i32 != 0) {
                    z12 = false;
                } else {
                    z12 = z6;
                }
                z13 = z10;
            } else {
                if ((i7 & 128) != 0) {
                    modifierG = n00.g("LVTextFieldInternal", "textField_title_text");
                    i8 &= -29360129;
                } else {
                    modifierG = modifier5;
                }
                if ((i7 & 1024) != 0) {
                    modifierG2 = n00.g("LVTextFieldInternal", "textField_supporting_text");
                    i10 &= -15;
                } else {
                    modifierG2 = modifier3;
                }
                if (i45 != 0) {
                    KeyboardOptions.f5918h.getClass();
                    keyboardOptions3 = KeyboardOptions.f5919i;
                } else {
                    keyboardOptions3 = keyboardOptions;
                }
                if (i47 != 0) {
                    KeyboardActions.g.getClass();
                    keyboardActions3 = KeyboardActions.f5912h;
                } else {
                    keyboardActions3 = keyboardActions;
                }
                modifier5 = modifierG;
                if ((i7 & 16384) != 0) {
                    if (z4) {
                        i36 = 1;
                    } else {
                        i36 = Integer.MAX_VALUE;
                    }
                    i10 &= -57345;
                } else {
                    i36 = i2;
                }
                if (i11 != 0) {
                    i37 = 1;
                } else {
                    i37 = i3;
                }
                if (i13 != 0) {
                    num3 = null;
                } else {
                    num3 = num;
                }
                if (i15 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i17 == 0) {
                }
                if (i19 != 0) {
                    visualTransformation3 = VisualTransformation.Companion.f10865a;
                } else {
                    visualTransformation3 = visualTransformation;
                }
                if (i21 != 0) {
                    z10 = true;
                } else {
                    z10 = z5;
                }
                int i411 = i36;
                if (i24 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new n60(11);
                        gapComposerH.q(objX);
                    }
                    function5 = (Function1) objX;
                } else {
                    function5 = function2;
                }
                if (i26 != 0) {
                    clearButtonMode3 = ClearButtonMode.Never;
                } else {
                    clearButtonMode3 = clearButtonMode;
                }
                function6 = function5;
                if ((i7 & 16777216) != 0) {
                    modifierG3 = n00.g("LVTextFieldInternal", "textField_accessory_button");
                    i30 &= -57345;
                } else {
                    modifierG3 = modifier4;
                }
                if (i31 != 0) {
                    str9 = "textField_deleteText_button";
                } else {
                    str9 = str5;
                }
                i38 = i411;
                modifier10 = modifierG3;
                clearButtonMode4 = clearButtonMode3;
                modifier11 = modifierG2;
                i39 = i30;
                keyboardOptions4 = keyboardOptions3;
                keyboardActions4 = keyboardActions3;
                z11 = false;
                i40 = i37;
                function7 = function8;
                visualTransformation4 = visualTransformation3;
                num4 = num3;
                if (i32 != 0) {
                    z12 = false;
                } else {
                    z12 = z6;
                }
                z13 = z10;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(new TextFieldValue(str, 0L, (TextRange) null, 6, (DefaultConstructorMarker) null));
                gapComposerH.q(objX2);
            }
            int i412 = i39;
            mutableState = (MutableState) objX2;
            textFieldValueB = TextFieldValue.b((TextFieldValue) mutableState.getF10755b(), str);
            zK = gapComposerH.K(textFieldValueB);
            objX3 = gapComposerH.x();
            if (zK) {
                objX3 = new uc(textFieldValueB, mutableState, 2);
                gapComposerH.q(objX3);
            } else {
                objX3 = new uc(textFieldValueB, mutableState, 2);
                gapComposerH.q(objX3);
            }
            EffectsKt.i((Function0) objX3, gapComposerH);
            if ((i8 & 14) == 4) {
                z14 = true;
            } else {
                z14 = z11;
            }
            objX4 = gapComposerH.x();
            if (z14) {
                objX4 = SnapshotStateKt.g(str);
                gapComposerH.q(objX4);
            } else {
                objX4 = SnapshotStateKt.g(str);
                gapComposerH.q(objX4);
            }
            mutableState2 = (MutableState) objX4;
            boolean zK3 = gapComposerH.K(mutableState2);
            if ((i8 & 112) == 32) {
                z11 = true;
            }
            z15 = zK3 | z11;
            objX5 = gapComposerH.x();
            if (z15) {
                objX5 = new vc(function1, mutableState, mutableState2, 2);
                gapComposerH.q(objX5);
            } else {
                objX5 = new vc(function1, mutableState, mutableState2, 2);
                gapComposerH.q(objX5);
            }
            gapComposer = gapComposerH;
            Modifier modifier14 = modifier5;
            Modifier modifier15 = modifierE;
            a(textFieldValueB, (Function1) objX5, modifier15, configurationTextField2, z, z2, str2, modifier14, z3, str3, modifier11, keyboardOptions4, keyboardActions4, z4, i38, i40, num4, str8, function7, visualTransformation4, mutableInteractionSource, z13, function6, clearButtonMode4, modifier10, str9, z12, gapComposer, i8 & 2147483520, i10 & Action.MAX_WEIGHT, i412 & 4194302);
            modifier6 = modifier15;
            modifier8 = modifier14;
            modifier9 = modifier11;
            keyboardOptions2 = keyboardOptions4;
            keyboardActions2 = keyboardActions4;
            i33 = i38;
            i34 = i40;
            num2 = num4;
            str6 = str8;
            function3 = function7;
            visualTransformation2 = visualTransformation4;
            z8 = z13;
            function4 = function6;
            clearButtonMode2 = clearButtonMode4;
            modifier7 = modifier10;
            str7 = str9;
            z9 = z12;
        } else {
            gapComposer = gapComposerH;
            modifier6 = modifierE;
            gapComposer.D();
            keyboardOptions2 = keyboardOptions;
            keyboardActions2 = keyboardActions;
            i33 = i2;
            i34 = i3;
            num2 = num;
            str6 = str4;
            function3 = function0;
            visualTransformation2 = visualTransformation;
            z8 = z5;
            function4 = function2;
            clearButtonMode2 = clearButtonMode;
            modifier7 = modifier4;
            str7 = str5;
            z9 = z6;
            modifier8 = modifier5;
            modifier9 = modifier3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: l80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i4 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i5);
                    int iA3 = RecomposeScopeImplKt.a(i6);
                    LVTextFieldInternalKt.b(str, function1, modifier6, configurationTextField, z, z2, str2, modifier8, z3, str3, modifier9, keyboardOptions2, keyboardActions2, z4, i33, i34, num2, str6, function3, visualTransformation2, mutableInteractionSource, z8, function4, clearButtonMode2, modifier7, str7, z9, (Composer) obj, iA, iA2, iA3, i7);
                    return Unit.f71739a;
                }
            };
        }
    }
}
