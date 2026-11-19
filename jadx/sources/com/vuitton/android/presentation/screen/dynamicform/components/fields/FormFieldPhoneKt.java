package com.vuitton.android.presentation.screen.dynamicform.components.fields;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldPhoneKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.dy;
import defpackage.e00;
import defpackage.j8;
import defpackage.n00;
import defpackage.tx;
import defpackage.zy0;
import java.util.Iterator;
import java.util.List;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "showSecondaryPhoneNumber", "showThirdPhoneNumber", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldPhoneKt {
    public static final void a(final FormFieldPhoneUiModel formFieldPhoneUiModel, final boolean z, final boolean z2, final boolean z3, final boolean z4, final Function1 function1, final Function2 function2, final Function1 function3, final Function0 function0, final LVColorScheme lVColorScheme, Composer composer, final int i2) {
        int i3;
        boolean z5;
        GapComposer gapComposer;
        String str;
        boolean z6;
        char c2;
        boolean z7;
        boolean z8;
        boolean z9;
        final boolean z10 = z;
        boolean z11 = z2;
        formFieldPhoneUiModel.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(677835530);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(formFieldPhoneUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z10) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z11) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            z5 = z3;
            i3 |= gapComposerH.b(z5) ? 2048 : 1024;
        } else {
            z5 = z3;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z4) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = formFieldPhoneUiModel.g;
            boolean zK = gapComposerH.K(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.valueOf(formFieldPhoneUiModel.e()));
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            boolean zK2 = gapComposerH.K(list);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.valueOf(formFieldPhoneUiModel.f()));
                gapComposerH.q(objX2);
            }
            final MutableState mutableState2 = (MutableState) objX2;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FormFieldPhone");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (z11) {
                gapComposer = gapComposerH;
                str = "FormFieldPhone";
                z6 = true;
                c2 = 0;
                z7 = false;
                gapComposer.L(1793290030);
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                str = "FormFieldPhone";
                z6 = true;
                c2 = 0;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.profile_phone_number), ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 1792948565, "FormFieldPhone"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "addressBook_phoneNum_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposer, 0, 0, 131068);
                z7 = false;
                gapComposer.Z(false);
            }
            List list2 = list;
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    zy0.c("Collection contains no element matching the predicate.");
                    return;
                }
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) it.next();
                if (formFieldUiModel.d == FormSectionTypeUiModel.PHONE_NUMBER_TYPE1) {
                    Iterator it2 = list2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            zy0.c("Collection contains no element matching the predicate.");
                            return;
                        }
                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) it2.next();
                        if (formFieldUiModel2.d == FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1) {
                            Iterator it3 = list2.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    zy0.c("Collection contains no element matching the predicate.");
                                    return;
                                }
                                FormFieldUiModel formFieldUiModel3 = (FormFieldUiModel) it3.next();
                                if (formFieldUiModel3.d == FormSectionTypeUiModel.PHONE_NUMBER1) {
                                    boolean zG = formFieldPhoneUiModel.g() ^ z6;
                                    boolean z12 = (!z10 || ((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? z7 : z6;
                                    Object objX3 = gapComposer.x();
                                    if (objX3 == composer$Companion$Empty$1) {
                                        objX3 = new tx(15);
                                        gapComposer.q(objX3);
                                    }
                                    int i5 = i4 << 15;
                                    GapComposer gapComposer2 = gapComposer;
                                    b(formFieldUiModel, formFieldUiModel2, formFieldUiModel3, zG, z12, null, (Function0) objX3, z11, z5, function2, function0, z4, lVColorScheme, null, gapComposer2, (i5 & 29360128) | 1572864 | (i5 & 234881024) | ((i4 << 9) & 1879048192), ((i4 >> 24) & 14) | ((i4 >> 9) & 112) | ((i4 >> 21) & 896), 8224);
                                    gapComposerH = gapComposer2;
                                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(2080754684, new Function3() { // from class: c00
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj, Object obj2, Object obj3) {
                                            Composer composer2 = (Composer) obj2;
                                            ((Integer) obj3).getClass();
                                            ((AnimatedVisibilityScope) obj).getClass();
                                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                                                composer2.L(-1500110313);
                                                FormFieldPhoneUiModel formFieldPhoneUiModel2 = formFieldPhoneUiModel;
                                                List<FormFieldUiModel> list3 = formFieldPhoneUiModel2.g;
                                                for (FormFieldUiModel formFieldUiModel4 : list3) {
                                                    if (formFieldUiModel4.d == FormSectionTypeUiModel.PHONE_NUMBER_TYPE2) {
                                                        for (FormFieldUiModel formFieldUiModel5 : list3) {
                                                            if (formFieldUiModel5.d == FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2) {
                                                                for (FormFieldUiModel formFieldUiModel6 : list3) {
                                                                    if (formFieldUiModel6.d == FormSectionTypeUiModel.PHONE_NUMBER2) {
                                                                        boolean z13 = !formFieldPhoneUiModel2.g();
                                                                        boolean z14 = z10 && !((Boolean) mutableState2.getF10755b()).booleanValue();
                                                                        Function1 function5 = function3;
                                                                        boolean zK3 = composer2.K(function5);
                                                                        Object objX4 = composer2.x();
                                                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                                        if (zK3 || objX4 == composer$Companion$Empty$2) {
                                                                            objX4 = new u8(function5, 25);
                                                                            composer2.q(objX4);
                                                                        }
                                                                        Function0 function6 = (Function0) objX4;
                                                                        boolean zY = composer2.y(formFieldPhoneUiModel2);
                                                                        Object objX5 = composer2.x();
                                                                        if (zY || objX5 == composer$Companion$Empty$2) {
                                                                            objX5 = new g00(formFieldPhoneUiModel2, 0);
                                                                            composer2.q(objX5);
                                                                        }
                                                                        FormFieldPhoneKt.b(formFieldUiModel4, formFieldUiModel5, formFieldUiModel6, z13, z14, function6, (Function0) objX5, z2, z3, function2, function0, z4, lVColorScheme, null, composer2, 0, 0, 8192);
                                                                        composer2.F();
                                                                    }
                                                                }
                                                                zy0.c("Collection contains no element matching the predicate.");
                                                                return null;
                                                            }
                                                        }
                                                        zy0.c("Collection contains no element matching the predicate.");
                                                        return null;
                                                    }
                                                }
                                                zy0.c("Collection contains no element matching the predicate.");
                                                return null;
                                            }
                                            composer2.L(-1498927322);
                                            composer2.F();
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            return Unit.f71739a;
                                        }
                                    }, gapComposerH);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    AnimatedVisibilityKt.c(columnScopeInstance, zBooleanValue, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
                                    String str2 = str;
                                    AnimatedVisibilityKt.c(columnScopeInstance, ((Boolean) mutableState2.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(-1499462043, new Function3() { // from class: d00
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj, Object obj2, Object obj3) {
                                            Composer composer2 = (Composer) obj2;
                                            ((Integer) obj3).getClass();
                                            ((AnimatedVisibilityScope) obj).getClass();
                                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                                                composer2.L(1481199596);
                                                FormFieldPhoneUiModel formFieldPhoneUiModel2 = formFieldPhoneUiModel;
                                                List<FormFieldUiModel> list3 = formFieldPhoneUiModel2.g;
                                                for (FormFieldUiModel formFieldUiModel4 : list3) {
                                                    if (formFieldUiModel4.d == FormSectionTypeUiModel.PHONE_NUMBER_TYPE3) {
                                                        for (FormFieldUiModel formFieldUiModel5 : list3) {
                                                            if (formFieldUiModel5.d == FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3) {
                                                                for (FormFieldUiModel formFieldUiModel6 : list3) {
                                                                    if (formFieldUiModel6.d == FormSectionTypeUiModel.PHONE_NUMBER3) {
                                                                        boolean z13 = !formFieldPhoneUiModel2.g();
                                                                        Function1 function5 = function3;
                                                                        boolean zK3 = composer2.K(function5);
                                                                        Object objX4 = composer2.x();
                                                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                                        if (zK3 || objX4 == composer$Companion$Empty$2) {
                                                                            objX4 = new u8(function5, 26);
                                                                            composer2.q(objX4);
                                                                        }
                                                                        Function0 function6 = (Function0) objX4;
                                                                        boolean zY = composer2.y(formFieldPhoneUiModel2);
                                                                        Object objX5 = composer2.x();
                                                                        if (zY || objX5 == composer$Companion$Empty$2) {
                                                                            objX5 = new g00(formFieldPhoneUiModel2, 1);
                                                                            composer2.q(objX5);
                                                                        }
                                                                        FormFieldPhoneKt.b(formFieldUiModel4, formFieldUiModel5, formFieldUiModel6, z13, z, function6, (Function0) objX5, z2, z3, function2, function0, z4, lVColorScheme, null, composer2, 0, 0, 8192);
                                                                        composer2.F();
                                                                    }
                                                                }
                                                                zy0.c("Collection contains no element matching the predicate.");
                                                                return null;
                                                            }
                                                        }
                                                        zy0.c("Collection contains no element matching the predicate.");
                                                        return null;
                                                    }
                                                }
                                                zy0.c("Collection contains no element matching the predicate.");
                                                return null;
                                            }
                                            composer2.L(1482353757);
                                            composer2.F();
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            return Unit.f71739a;
                                        }
                                    }, gapComposerH), gapComposerH, 1572870, 30);
                                    if (formFieldPhoneUiModel.g()) {
                                        z8 = true;
                                        gapComposerH.L(1797778830);
                                        gapComposerH.Z(false);
                                    } else {
                                        gapComposerH.L(1796982812);
                                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                                        Modifier modifierE = ModifierExtKt.e(SizeKt.d(PaddingKt.k(new DTFunctionNameModifier(str2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), 1.0f), "addressBook_addAdditionalPhoneNumber_button");
                                        String strC = StringResources_androidKt.c(gapComposerH, R.string.add_phone_number);
                                        boolean z13 = z4 && !(((Boolean) mutableState2.getF10755b()).booleanValue() && ((Boolean) mutableState.getF10755b()).booleanValue());
                                        boolean zK3 = gapComposerH.K(mutableState) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(mutableState2);
                                        Object objX4 = gapComposerH.x();
                                        if (zK3 || objX4 == composer$Companion$Empty$1) {
                                            z9 = false;
                                            objX4 = new e00(function1, mutableState, mutableState2, 0);
                                            gapComposerH.q(objX4);
                                        } else {
                                            z9 = false;
                                        }
                                        z8 = true;
                                        LVButtonKt.b(0, 376, gapComposerH, modifierE, configurationButton, null, null, strC, (Function0) objX4, false, z13, false);
                                        gapComposerH = gapComposerH;
                                        gapComposerH.Z(z9);
                                    }
                                    gapComposerH.Z(z8);
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    break;
                                }
                                z10 = z;
                                z11 = z2;
                                z5 = z3;
                                z6 = z6;
                            }
                        } else {
                            z10 = z;
                            z11 = z2;
                            z5 = z3;
                            z6 = z6;
                        }
                    }
                } else {
                    z10 = z;
                    z11 = z2;
                    z5 = z3;
                    z6 = z6;
                }
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: f00
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    FormFieldPhoneKt.a(formFieldPhoneUiModel, z, z2, z3, z4, function1, function2, function3, function0, lVColorScheme, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final FormFieldUiModel formFieldUiModel, final FormFieldUiModel formFieldUiModel2, final FormFieldUiModel formFieldUiModel3, final boolean z, final boolean z2, Function0 function0, final Function0 function1, final boolean z3, final boolean z4, final Function2 function2, final Function0 function3, final boolean z5, final LVColorScheme lVColorScheme, Function1 function4, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        Function0 function5;
        int i6;
        final Function2 function6;
        GapComposer gapComposer;
        final Function1 function7;
        final Function0 function8;
        Function0 function9;
        Modifier modifierJ;
        String str;
        Function2 function10;
        Function1 function11;
        Function2 function12;
        GapComposer gapComposer2;
        int i7;
        Modifier modifierJ2;
        GapComposer gapComposerH = composer.h(-475140400);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.y(formFieldUiModel) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.y(formFieldUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(formFieldUiModel3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        int i8 = i4 & 32;
        if (i8 != 0) {
            i5 |= ImageMetadata.EDGE_MODE;
            function5 = function0;
        } else {
            function5 = function0;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                i5 |= gapComposerH.y(function5) ? 131072 : 65536;
            }
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.b(z3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.b(z4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i9 = i5;
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(function3) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.b(z5) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        int i10 = i6 | 3072;
        if (gapComposerH.p(i9 & 1, ((i9 & 306783379) == 306783378 && (i10 & 1171) == 1170) ? false : true)) {
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i8 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new tx(16);
                    gapComposerH.q(objX);
                }
                function9 = (Function0) objX;
            } else {
                function9 = function5;
            }
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dy(13);
                gapComposerH.q(objX2);
            }
            Function1 function13 = (Function1) objX2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z3) {
                modifierJ = n00.j(gapComposerH, 1305322250, false, "PhoneBlock");
            } else {
                modifierJ = PaddingKt.m(n00.i(gapComposerH, 1305224724, "PhoneBlock"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                gapComposerH.Z(false);
            }
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function14 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function14);
            } else {
                gapComposerH.o();
            }
            Function2 function15 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function15);
            Function2 function16 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function16);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function17 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function17);
            Function1 function18 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function18);
            Function2 function19 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function19);
            if (z4) {
                str = "PhoneBlock";
                function10 = function16;
                function11 = function18;
                function12 = function19;
                gapComposer2 = gapComposerH;
                gapComposer2.L(677790300);
                gapComposer2.Z(false);
            } else {
                Modifier modifierD = n00.d(gapComposerH, 677345047, "PhoneBlock", "addressBook_phoneType_textField");
                FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModel.f57496e;
                formFieldTypeUiModel.getClass();
                FormFieldTypeUiModel.EnumBasedFormField enumBasedFormField = (FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel;
                boolean zY = ((i9 & 1879048192) == 536870912) | gapComposerH.y(formFieldUiModel);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    final int i11 = 0;
                    objX3 = new Function1() { // from class: a00
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i12 = i11;
                            FormFieldUiModel formFieldUiModel4 = formFieldUiModel;
                            Function2 function20 = function2;
                            switch (i12) {
                                case 0:
                                    FormEnumValueUiModel formEnumValueUiModel = (FormEnumValueUiModel) obj;
                                    formEnumValueUiModel.getClass();
                                    function20.invoke(formFieldUiModel4.d, formEnumValueUiModel);
                                    break;
                                case 1:
                                    FormEnumValueUiModel formEnumValueUiModel2 = (FormEnumValueUiModel) obj;
                                    formEnumValueUiModel2.getClass();
                                    function20.invoke(formFieldUiModel4.d, formEnumValueUiModel2);
                                    break;
                                default:
                                    String str2 = (String) obj;
                                    str2.getClass();
                                    function20.invoke(formFieldUiModel4.d, str2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX3);
                }
                gapComposer2 = gapComposerH;
                function10 = function16;
                function12 = function19;
                str = "PhoneBlock";
                function11 = function18;
                EnumBasedFormFieldKt.a(modifierD, formFieldUiModel, enumBasedFormField, z5, (Function1) objX3, null, lVColorScheme, gapComposer2, ((i10 << 6) & 7168) | ((i9 << 3) & 112) | ((i10 << 12) & 3670016), 32);
                gapComposer2.Z(false);
            }
            if (z4) {
                i7 = 0;
                modifierJ2 = n00.j(gapComposer2, 677993164, false, str);
            } else {
                modifierJ2 = PaddingKt.m(n00.i(gapComposer2, 677887702, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                i7 = 0;
                gapComposer2.Z(false);
            }
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposer2, i7);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierJ2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function14);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, rowMeasurePolicyA, function15);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function10);
            cj.t(iHashCode2, gapComposer2, function17, gapComposer2, function11);
            Updater.c(gapComposer2, modifierC2, function12);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierE = ModifierExtKt.e(SizeKt.s(dTFunctionNameModifier, 112.0f), "addressBook_countryCode_textField");
            int i12 = i9 & 1879048192;
            boolean zY2 = (i12 == 536870912) | gapComposer2.y(formFieldUiModel2);
            Object objX4 = gapComposer2.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                function6 = function2;
                final int i13 = 1;
                objX4 = new Function1() { // from class: a00
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i14 = i13;
                        FormFieldUiModel formFieldUiModel4 = formFieldUiModel2;
                        Function2 function20 = function6;
                        switch (i14) {
                            case 0:
                                FormEnumValueUiModel formEnumValueUiModel = (FormEnumValueUiModel) obj;
                                formEnumValueUiModel.getClass();
                                function20.invoke(formFieldUiModel4.d, formEnumValueUiModel);
                                break;
                            case 1:
                                FormEnumValueUiModel formEnumValueUiModel2 = (FormEnumValueUiModel) obj;
                                formEnumValueUiModel2.getClass();
                                function20.invoke(formFieldUiModel4.d, formEnumValueUiModel2);
                                break;
                            default:
                                String str2 = (String) obj;
                                str2.getClass();
                                function20.invoke(formFieldUiModel4.d, str2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer2.q(objX4);
            } else {
                function6 = function2;
            }
            int i14 = i9 >> 3;
            int i15 = i10 << 6;
            int i16 = i15 & 7168;
            c(formFieldUiModel2, (Function1) objX4, modifierE, z5, lVColorScheme, gapComposer2, (i14 & 14) | i16 | (i15 & 57344));
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(cj.b(str, RowScopeInstance.f5040a, 1.0f, true), LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "addressBook_phoneNum_textField");
            Object objX5 = gapComposer2.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new dy(14);
                gapComposer2.q(objX5);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE2, false, (Function1) objX5);
            FormFieldTypeUiModel formFieldTypeUiModel2 = formFieldUiModel3.f57496e;
            formFieldTypeUiModel2.getClass();
            FormFieldFreeformUiModel formFieldFreeformUiModel = (FormFieldFreeformUiModel) formFieldTypeUiModel2;
            ImeAction.f10785b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, ((FormFieldFreeformUiModel) formFieldUiModel3.f57496e).f57516c, !z2 ? ImeAction.f10790i : ImeAction.f10791j, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
            boolean zY3 = (i12 == 536870912) | gapComposer2.y(formFieldUiModel3);
            Object objX6 = gapComposer2.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                final int i17 = 2;
                objX6 = new Function1() { // from class: a00
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i18 = i17;
                        FormFieldUiModel formFieldUiModel4 = formFieldUiModel3;
                        Function2 function20 = function6;
                        switch (i18) {
                            case 0:
                                FormEnumValueUiModel formEnumValueUiModel = (FormEnumValueUiModel) obj;
                                formEnumValueUiModel.getClass();
                                function20.invoke(formFieldUiModel4.d, formEnumValueUiModel);
                                break;
                            case 1:
                                FormEnumValueUiModel formEnumValueUiModel2 = (FormEnumValueUiModel) obj;
                                formEnumValueUiModel2.getClass();
                                function20.invoke(formFieldUiModel4.d, formEnumValueUiModel2);
                                break;
                            default:
                                String str2 = (String) obj;
                                str2.getClass();
                                function20.invoke(formFieldUiModel4.d, str2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer2.q(objX6);
            }
            int i18 = (i14 & 112) | i16 | ((i10 << 9) & 3670016) | ((i10 << 21) & 29360128) | ((i10 << 18) & 234881024);
            GapComposer gapComposer3 = gapComposer2;
            String str2 = str;
            FormFieldFreeformKt.a(modifierB, formFieldUiModel3, formFieldFreeformUiModel, z5, keyboardOptions, (Function1) objX6, function13, function3, lVColorScheme, gapComposer3, i18, 0);
            gapComposer = gapComposer3;
            gapComposer.Z(true);
            if (z) {
                LVLinkKt.a(n00.d(gapComposer, 679525866, str2, "addressBook_phoneNumberDelete_button"), StringResources_androidKt.c(gapComposer, R.string.profile_delete_phone_number), z5 && ((Boolean) function1.mo47invoke()).booleanValue(), null, false, function9, gapComposer, i9 & ImageMetadata.JPEG_GPS_COORDINATES, 24);
                gapComposer.Z(false);
            } else {
                gapComposer.L(679850684);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            function7 = function13;
            function8 = function9;
        } else {
            function6 = function2;
            gapComposer = gapComposerH;
            gapComposer.D();
            function7 = function4;
            function8 = function5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function2 function20 = function6;
            recomposeScopeImplB0.d = new Function2() { // from class: b00
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    FormFieldPhoneKt.b(formFieldUiModel, formFieldUiModel2, formFieldUiModel3, z, z2, function8, function1, z3, z4, function20, function3, z5, lVColorScheme, function7, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(FormFieldUiModel formFieldUiModel, Function1 function1, Modifier modifier, boolean z, LVColorScheme lVColorScheme, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier != null ? a.e(modifier, "PhoneNumberCountry") : modifier;
        GapComposer gapComposerH = composer.h(69312515);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(formFieldUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (formFieldUiModel.f57496e instanceof FormFieldTypeUiModel.EnumBasedFormField) {
                gapComposerH.L(-989773177);
                EnumBasedFormFieldKt.a(modifierE, formFieldUiModel, (FormFieldTypeUiModel.EnumBasedFormField) formFieldUiModel.f57496e, z, function1, null, lVColorScheme, gapComposerH, ((i3 >> 6) & 14) | ((i3 << 3) & 112) | (i3 & 7168) | ((i3 << 9) & 57344) | ((i3 << 6) & 3670016), 32);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-989455427);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(formFieldUiModel, function1, modifierE, z, lVColorScheme, i2);
        }
    }
}
