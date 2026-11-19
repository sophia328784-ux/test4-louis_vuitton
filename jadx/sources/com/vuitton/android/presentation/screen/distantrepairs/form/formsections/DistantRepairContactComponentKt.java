package com.vuitton.android.presentation.screen.distantrepairs.form.formsections;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActions;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownItem;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDropdownKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.compose.components.LVDialogListPickerKt;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.helper.PhoneNumberHelper;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairContactComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.CountryUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.cj;
import defpackage.cu;
import defpackage.d21;
import defpackage.du;
import defpackage.eu;
import defpackage.k3;
import defpackage.n00;
import defpackage.o60;
import defpackage.ss;
import defpackage.tr;
import defpackage.u;
import defpackage.u8;
import defpackage.v40;
import defpackage.w;
import defpackage.x3;
import defpackage.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\n²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00058\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\b\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002"}, d2 = {"", "disabledMode", "editMode", "", "currentZipPostalCode", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;", "selectedCountry", "Lcom/vuitton/android/presentation/compose/components/ListPickerItem;", "currentCountryItemSelected", "currentPhoneNumber", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairContactComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57333a;

        static {
            int[] iArr = new int[StepState.values().length];
            try {
                iArr[StepState.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StepState.EDIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StepState.READ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57333a = iArr;
        }
    }

    public static final void a(String str, FormUiModel formUiModel, Function2 function2, Function1 function1, Composer composer, int i2) {
        formUiModel.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(713640294);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.y(formUiModel) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = Float.valueOf(1.0f);
                gapComposerH.q(objX);
            }
            float fFloatValue = ((Number) objX).floatValue();
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = Float.valueOf(3.0f);
                gapComposerH.q(objX2);
            }
            float fFloatValue2 = ((Number) objX2).floatValue();
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = Float.valueOf(6.0f);
                gapComposerH.q(objX3);
            }
            float fFloatValue3 = ((Number) objX3).floatValue();
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("ContactEditCardBff", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            boolean z = false;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card2_text1), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ContactEditCardBff"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), "careservicesForm_contactInformationDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            int i4 = i3 << 3;
            d(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_email), str, "careservicesForm_contactInformationEmailTitle_text", "careservicesForm_contactInformationEmail_text", fFloatValue2, fFloatValue3, fFloatValue, gapComposerH, (i4 & 112) | 1797504);
            SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            boolean zK = gapComposerH.K(softwareKeyboardController);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new ss(softwareKeyboardController, 6);
                gapComposerH.q(objX4);
            }
            DynamicFormComposableKt.a(null, null, formUiModel, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, null, (Function0) objX4, null, null, true, false, true, null, null, null, null, null, false, gapComposerH, (i4 & 896) | ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES), 390, 519003);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card2_text2), ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("ContactEditCardBff"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), "careservicesForm_contactInformationPhoneDisclaimer_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ContactEditCardBff"), 1.0f), "careservicesForm_contactInformationNext_button");
            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_next);
            boolean zI = formUiModel.i();
            if ((i3 & 7168) == 2048) {
                z = true;
            }
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$1) {
                objX5 = new u8(function1, 13);
                gapComposerH.q(objX5);
            }
            LVButtonKt.b(0, 376, gapComposerH, modifierE, configurationButton, null, null, strC, (Function0) objX5, false, zI, false);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(str, formUiModel, function2, function1, i2, 28);
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:110:0x03db  */
    /* JADX WARN: Code duplicated, block: B:111:0x03df  */
    /* JADX WARN: Code duplicated, block: B:114:0x0405  */
    /* JADX WARN: Code duplicated, block: B:115:0x0413  */
    /* JADX WARN: Code duplicated, block: B:119:0x0443  */
    /* JADX WARN: Code duplicated, block: B:122:0x0468  */
    /* JADX WARN: Code duplicated, block: B:123:0x046a  */
    /* JADX WARN: Code duplicated, block: B:129:0x0477  */
    /* JADX WARN: Code duplicated, block: B:131:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:233:0x08b1  */
    /* JADX WARN: Code duplicated, block: B:234:0x08b3  */
    /* JADX WARN: Code duplicated, block: B:238:0x08bc  */
    /* JADX WARN: Code duplicated, block: B:241:0x0995  */
    /* JADX WARN: Code duplicated, block: B:257:0x09cc  */
    /* JADX WARN: Code duplicated, block: B:258:0x09cf  */
    /* JADX WARN: Code duplicated, block: B:260:0x09d4  */
    /* JADX WARN: Code duplicated, block: B:274:0x0a1b  */
    /* JADX WARN: Code duplicated, block: B:275:0x0a1d  */
    /* JADX WARN: Code duplicated, block: B:278:0x0a26  */
    /* JADX WARN: Code duplicated, block: B:279:0x0a28  */
    /* JADX WARN: Code duplicated, block: B:282:0x0a33  */
    /* JADX WARN: Code duplicated, block: B:283:0x0a35  */
    /* JADX WARN: Code duplicated, block: B:286:0x0a3c  */
    /* JADX WARN: Code duplicated, block: B:287:0x0a3e  */
    /* JADX WARN: Code duplicated, block: B:290:0x0a48  */
    /* JADX WARN: Code duplicated, block: B:294:0x0a52  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r10v5, types: [androidx.compose.foundation.layout.RowScopeInstance] */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r15v18, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v5, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r3v46 */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v46 */
    /* JADX WARN: Type inference failed for: r4v47 */
    /* JADX WARN: Type inference failed for: r4v50 */
    /* JADX WARN: Type inference failed for: r4v51 */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v63 */
    /* JADX WARN: Type inference failed for: r4v64 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void b(String str, PhoneNumber phoneNumber, ArrayList arrayList, String str2, final String str3, String str4, final String str5, final boolean z, Function3 function3, final Function1 function1, final Function0 function0, Function1 function2, Composer composer, int i2) {
        PhoneNumber phoneNumber2;
        ?? r15;
        Object obj;
        SoftwareKeyboardController softwareKeyboardController;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        GapComposer gapComposer;
        String str6;
        Object next;
        Object next2;
        Object wVar;
        int i3;
        MutableState mutableState;
        MutableState mutableState2;
        ?? r0;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        ?? r4;
        Object objX;
        ?? r16;
        String str7;
        ?? r23;
        ?? r3;
        ?? r5;
        ?? r6;
        ?? r7;
        ?? r8;
        Object objX2;
        String str8;
        String str9;
        String str10;
        CountryUiModel countryUiModel;
        Object obj2;
        boolean z2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        int i4;
        String strF;
        boolean zK;
        Object obj3;
        boolean z3;
        Object obj4;
        str4 = str4;
        arrayList.getClass();
        function3.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(801368580);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.y(phoneNumber) ? 32 : 16) | (gapComposerH.y(arrayList) ? 256 : 128) | (gapComposerH.K(str2 != null ? new DispatchRegionCode(str2) : null) ? 2048 : 1024) | (gapComposerH.K(str3) ? 16384 : 8192) | (gapComposerH.K(str4) ? 131072 : 65536) | (gapComposerH.K(str5) ? 1048576 : 524288) | (gapComposerH.b(z) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432) | (gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i6 = (gapComposerH.y(function0) ? (char) 4 : (char) 2) | (gapComposerH.y(function2) ? ' ' : (char) 16);
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SoftwareKeyboardController softwareKeyboardController2 = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$3) {
                obj = objX3;
                Float fValueOf = Float.valueOf(1.0f);
                gapComposerH.q(fValueOf);
                obj = fValueOf;
            }
            obj = objX3;
            float fFloatValue = ((Number) obj).floatValue();
            Object objX4 = gapComposerH.x();
            Object obj5 = objX4;
            if (objX4 == composer$Companion$Empty$3) {
                Float fValueOf2 = Float.valueOf(3.0f);
                gapComposerH.q(fValueOf2);
                obj5 = fValueOf2;
            }
            float fFloatValue2 = ((Number) obj5).floatValue();
            Object objX5 = gapComposerH.x();
            Object obj6 = objX5;
            if (objX5 == composer$Companion$Empty$3) {
                Float fValueOf3 = Float.valueOf(4.0f);
                gapComposerH.q(fValueOf3);
                obj6 = fValueOf3;
            }
            float fFloatValue3 = ((Number) obj6).floatValue();
            Object objX6 = gapComposerH.x();
            Object obj7 = objX6;
            if (objX6 == composer$Companion$Empty$3) {
                Float fValueOf4 = Float.valueOf(6.0f);
                gapComposerH.q(fValueOf4);
                obj7 = fValueOf4;
            }
            float fFloatValue4 = ((Number) obj7).floatValue();
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("ContactEditCardLegacy-CQh16_E", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            Integer numValueOf = Integer.valueOf(iHashCode2);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card2_text1), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC2, function9, "ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), "careservicesForm_contactInformationDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E");
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$SpaceBetween$1, vertical, gapComposerH, 6);
            int iHashCode3 = Long.hashCode(gapComposerH.getT());
            BiasAlignment.Vertical vertical2 = vertical;
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
            cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function8);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC3, function9, "ContactEditCardLegacy-CQh16_E");
            ?? r10 = RowScopeInstance.f5040a;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card1_email), ModifierExtKt.e(r10.a(dTFunctionNameModifierE, fFloatValue2, true), "careservicesForm_contactInformationEmailTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            SpacerKt.a(gapComposerH, r10.a(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), fFloatValue, true));
            Modifier modifierE = ModifierExtKt.e(r10.a(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), fFloatValue4, true), "careservicesForm_contactInformationEmail_text");
            String str11 = str == null ? "" : str;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            TextAlign.f10959b.getClass();
            String str12 = "";
            TextKt.c(str11, modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            GapComposer gapComposer2 = gapComposerH;
            gapComposer2.Z(true);
            if (z) {
                gapComposer2.L(-1303646732);
                Object objX7 = gapComposer2.x();
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                if (objX7 == composer$Companion$Empty$1) {
                    MutableState mutableStateG = SnapshotStateKt.g(str3 == null ? str12 : str3);
                    gapComposer2.q(mutableStateG);
                    obj2 = mutableStateG;
                }
                obj2 = objX7;
                MutableState mutableState3 = (MutableState) obj2;
                if (((String) mutableState3.getF10755b()).length() > 0) {
                    z2 = str4 != null ? new Regex(str4, RegexOption.IGNORE_CASE).a((String) mutableState3.getF10755b()) ^ true : false;
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposer2, 0);
                    iHashCode = Long.hashCode(gapComposer2.getT());
                    persistentCompositionLocalMapU = gapComposer2.U();
                    modifierC = ComposedModifierKt.c(gapComposer2, modifierM);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        vertical2 = vertical2;
                        gapComposer2.C(function4);
                    } else {
                        vertical2 = vertical2;
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, rowMeasurePolicyA, function5);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, function6);
                    cj.t(iHashCode, gapComposer2, function7, gapComposer2, function8);
                    Modifier modifierF = n00.f(gapComposer2, modifierC, function9, "ContactEditCardLegacy-CQh16_E", "careservicesForm_contactInformationZipcode_textfield");
                    String strJ = d21.j(StringResources_androidKt.c(gapComposer2, R.string.global_postal_code), Browse.CAPS_WILDCARD);
                    String str13 = (String) mutableState3.getF10755b();
                    if (z2) {
                        i4 = 0;
                        strF = cj.f(gapComposer2, -802367321, R.string.global_form_invalid_postal_code, gapComposer2, false);
                    } else {
                        i4 = 0;
                        gapComposer2.L(-802255969);
                        gapComposer2.Z(false);
                        strF = null;
                    }
                    KeyboardOptions.f5918h.getClass();
                    KeyboardOptions keyboardOptions = KeyboardOptions.f5919i;
                    ImeAction.f10785b.getClass();
                    KeyboardOptions keyboardOptionsA = KeyboardOptions.a(keyboardOptions, i4, ImeAction.f10790i, 119);
                    softwareKeyboardController = softwareKeyboardController2;
                    zK = gapComposer2.K(softwareKeyboardController);
                    Object objX8 = gapComposer2.x();
                    obj3 = objX8;
                    if (zK || objX8 == composer$Companion$Empty$1) {
                        eu euVar = new eu(softwareKeyboardController, i4);
                        gapComposer2.q(euVar);
                        obj3 = euVar;
                    }
                    KeyboardActions keyboardActions = new KeyboardActions((Function1) obj3, null, null, null, null, null, 62, null);
                    if ((i6 & 112) == 32) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    Object objX9 = gapComposer2.x();
                    if (!z3 || objX9 == composer$Companion$Empty$1) {
                        x3 x3Var = new x3(function2, mutableState3, 6);
                        gapComposer2.q(x3Var);
                        obj4 = x3Var;
                    } else {
                        obj4 = objX9;
                    }
                    LVTextFieldKt.a(str13, (Function1) obj4, modifierF, null, false, strJ, z2, strF, null, keyboardOptionsA, keyboardActions, null, null, null, false, gapComposer2, 0, 0, 31000);
                    GapComposer gapComposer3 = gapComposer2;
                    gapComposer3.Z(true);
                    gapComposer3.Z(false);
                    gapComposer = gapComposer3;
                }
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposer2, 0);
                iHashCode = Long.hashCode(gapComposer2.getT());
                persistentCompositionLocalMapU = gapComposer2.U();
                modifierC = ComposedModifierKt.c(gapComposer2, modifierM2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    vertical2 = vertical2;
                    gapComposer2.C(function4);
                } else {
                    vertical2 = vertical2;
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, rowMeasurePolicyA, function5);
                Updater.c(gapComposer2, persistentCompositionLocalMapU, function6);
                cj.t(iHashCode, gapComposer2, function7, gapComposer2, function8);
                Modifier modifierF2 = n00.f(gapComposer2, modifierC, function9, "ContactEditCardLegacy-CQh16_E", "careservicesForm_contactInformationZipcode_textfield");
                String strJ2 = d21.j(StringResources_androidKt.c(gapComposer2, R.string.global_postal_code), Browse.CAPS_WILDCARD);
                String str14 = (String) mutableState3.getF10755b();
                if (z2) {
                    i4 = 0;
                    strF = cj.f(gapComposer2, -802367321, R.string.global_form_invalid_postal_code, gapComposer2, false);
                } else {
                    i4 = 0;
                    gapComposer2.L(-802255969);
                    gapComposer2.Z(false);
                    strF = null;
                }
                KeyboardOptions.f5918h.getClass();
                KeyboardOptions keyboardOptions2 = KeyboardOptions.f5919i;
                ImeAction.f10785b.getClass();
                KeyboardOptions keyboardOptionsA2 = KeyboardOptions.a(keyboardOptions2, i4, ImeAction.f10790i, 119);
                softwareKeyboardController = softwareKeyboardController2;
                zK = gapComposer2.K(softwareKeyboardController);
                Object objX10 = gapComposer2.x();
                obj3 = objX10;
                if (zK) {
                    eu euVar2 = new eu(softwareKeyboardController, i4);
                    gapComposer2.q(euVar2);
                    obj3 = euVar2;
                } else {
                    eu euVar3 = new eu(softwareKeyboardController, i4);
                    gapComposer2.q(euVar3);
                    obj3 = euVar3;
                }
                KeyboardActions keyboardActions2 = new KeyboardActions((Function1) obj3, null, null, null, null, null, 62, null);
                if ((i6 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Object objX11 = gapComposer2.x();
                if (z3) {
                    x3 x3Var2 = new x3(function2, mutableState3, 6);
                    gapComposer2.q(x3Var2);
                    obj4 = x3Var2;
                } else {
                    x3 x3Var3 = new x3(function2, mutableState3, 6);
                    gapComposer2.q(x3Var3);
                    obj4 = x3Var3;
                }
                LVTextFieldKt.a(str14, (Function1) obj4, modifierF2, null, false, strJ2, z2, strF, null, keyboardOptionsA2, keyboardActions2, null, null, null, false, gapComposer2, 0, 0, 31000);
                GapComposer gapComposer4 = gapComposer2;
                gapComposer4.Z(true);
                gapComposer4.Z(false);
                gapComposer = gapComposer4;
            } else {
                softwareKeyboardController = softwareKeyboardController2;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                gapComposer2.L(-1302139884);
                gapComposer2.Z(false);
                gapComposer = gapComposer2;
            }
            Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController;
            RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(Arrangement.f4918a, vertical2, gapComposer, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode4 = Long.hashCode(gapComposer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierM3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function4);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, rowMeasurePolicyA3, function5);
            Updater.c(gapComposer, persistentCompositionLocalMapU4, function6);
            cj.t(iHashCode4, gapComposer, function7, gapComposer, function8);
            Updater.c(gapComposer, modifierC4, function9);
            EnumEntries enumEntriesB = PhoneNumber.Type.b();
            gapComposer.L(-157301153);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(enumEntriesB, 10));
            Iterator it = enumEntriesB.iterator();
            while (it.hasNext()) {
                arrayList2.add(new DropdownItem(StringResources_androidKt.c(gapComposer, ((PhoneNumber.Type) it.next()).getDisplayStringId()), true));
            }
            gapComposer.Z(false);
            ?? r24 = gapComposer;
            LVDropdownKt.a(ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), 1.0f), "careservicesForm_contactInformationMobileType_textfield"), null, StringResources_androidKt.c(gapComposer, R.string.profile_phone_type), arrayList2, 0, false, false, null, null, false, r24, 221184, 962);
            Modifier modifierM4 = PaddingKt.m(o60.f(r24, true, "ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA4 = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, r24, 0);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            int iHashCode5 = Long.hashCode(r24.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU5 = r24.U();
            Modifier modifierC5 = ComposedModifierKt.c(r24, modifierM4);
            ComposeUiNode.b0.getClass();
            Function0 function10 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            r24.B();
            if (r24.S) {
                r24.C(function10);
            } else {
                r24.o();
            }
            Updater.c(r24, rowMeasurePolicyA4, ComposeUiNode.Companion.f9644f);
            Updater.c(r24, persistentCompositionLocalMapU5, ComposeUiNode.Companion.f9643e);
            Updater.c(r24, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
            Updater.b(r24, ComposeUiNode.Companion.f9645h);
            Updater.c(r24, modifierC5, ComposeUiNode.Companion.d);
            if (phoneNumber == null || (str6 = phoneNumber.f57393b) == null) {
                str6 = str2 == null ? null : str2;
            }
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c(((CountryUiModel) next).f57372b, str6));
            CountryUiModel countryUiModel2 = (CountryUiModel) next;
            Object objX12 = r24.x();
            Object obj8 = objX12;
            if (objX12 == composer$Companion$Empty$1) {
                MutableState mutableStateG2 = SnapshotStateKt.g(countryUiModel2);
                r24.q(mutableStateG2);
                obj8 = mutableStateG2;
            }
            MutableState mutableState4 = (MutableState) obj8;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList, 10));
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                CountryUiModel countryUiModel3 = (CountryUiModel) it3.next();
                String strH = tr.h(countryUiModel3.d, " ", countryUiModel3.f57373c);
                String str15 = countryUiModel3.d;
                arrayList3.add(new ListPickerItem(strH, false, str15 == null ? str12 : str15, 2, null));
            }
            Iterator it4 = arrayList3.iterator();
            do {
                if (!it4.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it4.next();
                str9 = ((ListPickerItem) next2).f51013a;
                CountryUiModel countryUiModel4 = (CountryUiModel) mutableState4.getF10755b();
                str10 = countryUiModel4 != null ? countryUiModel4.d : null;
                countryUiModel = (CountryUiModel) mutableState4.getF10755b();
            } while (!Intrinsics.c(str9, str10 + " " + (countryUiModel != null ? countryUiModel.f57373c : null)));
            ListPickerItem listPickerItem = (ListPickerItem) next2;
            Object objX13 = r24.x();
            Object obj9 = objX13;
            if (objX13 == composer$Companion$Empty$1) {
                MutableState mutableStateG3 = SnapshotStateKt.g(listPickerItem);
                r24.q(mutableStateG3);
                obj9 = mutableStateG3;
            }
            MutableState mutableState5 = (MutableState) obj9;
            Object objX14 = r24.x();
            Object obj10 = objX14;
            if (objX14 == composer$Companion$Empty$1) {
                String str16 = phoneNumber != null ? phoneNumber.f57394c : null;
                MutableState mutableStateG4 = SnapshotStateKt.g(str16 != null ? str16 : "");
                r24.q(mutableStateG4);
                obj10 = mutableStateG4;
            }
            MutableState mutableState6 = (MutableState) obj10;
            Modifier modifierB = cj.b("ContactEditCardLegacy-CQh16_E", r10, fFloatValue3, true);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, horizontal, r24, 0);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            int iHashCode6 = Long.hashCode(r24.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU6 = r24.U();
            Modifier modifierC6 = ComposedModifierKt.c(r24, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function11 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            r24.B();
            if (r24.S) {
                r24.C(function11);
            } else {
                r24.o();
            }
            Function2 function12 = ComposeUiNode.Companion.f9644f;
            Updater.c(r24, columnMeasurePolicyA2, function12);
            Function2 function13 = ComposeUiNode.Companion.f9643e;
            Updater.c(r24, persistentCompositionLocalMapU6, function13);
            Integer numValueOf2 = Integer.valueOf(iHashCode6);
            Function2 function14 = ComposeUiNode.Companion.g;
            Updater.c(r24, numValueOf2, function14);
            Function1 function15 = ComposeUiNode.Companion.f9645h;
            Updater.b(r24, function15);
            Function2 function16 = ComposeUiNode.Companion.d;
            Modifier modifierF3 = n00.f(r24, modifierC6, function16, "ContactEditCardLegacy-CQh16_E", "careservicesForm_contactInformationCallSign_textfield");
            String strC = StringResources_androidKt.c(r24, R.string.profile_call_sign);
            ListPickerItem listPickerItem2 = (ListPickerItem) mutableState5.getF10755b();
            int i7 = i5 & 234881024;
            boolean zY = r24.y(arrayList) | (i7 == 67108864) | r24.y(phoneNumber);
            Object objX15 = r24.x();
            if (zY || objX15 == composer$Companion$Empty$1) {
                i3 = i7;
                mutableState = mutableState5;
                mutableState2 = mutableState4;
                r0 = 1;
                wVar = new w(arrayList, function3, phoneNumber, mutableState, mutableState2, 14);
                r24.q(wVar);
            } else {
                wVar = objX15;
                i3 = i7;
                mutableState = mutableState5;
                mutableState2 = mutableState4;
                r0 = 1;
            }
            LVDialogListPickerKt.a(modifierF3, strC, listPickerItem2, arrayList3, false, false, (Function2) wVar, null, r24, 0, 176);
            Modifier modifierA = r10.a(o60.f(r24, r0, "ContactEditCardLegacy-CQh16_E"), fFloatValue4, r0);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, horizontal, r24, 0);
            int iHashCode7 = Long.hashCode(r24.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU7 = r24.U();
            Modifier modifierC7 = ComposedModifierKt.c(r24, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            r24.B();
            if (r24.S) {
                r24.C(function11);
            } else {
                r24.o();
            }
            Updater.c(r24, columnMeasurePolicyA3, function12);
            Updater.c(r24, persistentCompositionLocalMapU7, function13);
            cj.t(iHashCode7, r24, function14, r24, function15);
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.e(r24, modifierC7, function16, "ContactEditCardLegacy-CQh16_E"), LVAppDesignKitTheme.l(r24).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "careservicesForm_contactInformationPhoneNumber_textfield");
            String strJ3 = d21.j(StringResources_androidKt.c(r24, R.string.dr_card2_phone), Browse.CAPS_WILDCARD);
            String str17 = (String) mutableState6.getF10755b();
            KeyboardOptions.f5918h.getClass();
            KeyboardOptions keyboardOptions3 = KeyboardOptions.f5919i;
            KeyboardType.f10809b.getClass();
            int i8 = KeyboardType.f10812f;
            ImeAction.f10785b.getClass();
            KeyboardOptions keyboardOptionsA3 = KeyboardOptions.a(keyboardOptions3, i8, ImeAction.f10791j, 115);
            boolean zK2 = r24.K(softwareKeyboardController3);
            Object objX16 = r24.x();
            if (zK2) {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
            } else {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                if (objX16 == composer$Companion$Empty$2) {
                }
                obj = objX16;
                KeyboardActions keyboardActions3 = new KeyboardActions((Function1) obj, null, null, null, null, null, 62, null);
                if (i3 == 67108864) {
                    r4 = r0;
                } else {
                    r4 = 0;
                }
                objX = r24.x();
                if (r4 == 0 || objX == composer$Companion$Empty$2) {
                    objX = new k3(function3, mutableState6, mutableState, mutableState2, 9);
                    r24.q(objX);
                }
                LVTextFieldKt.a(str17, (Function1) objX, modifierE2, null, false, strJ3, false, null, null, keyboardOptionsA3, keyboardActions3, null, null, null, false, r24, 0, 0, 31192);
                r24.Z(r0);
                r24.Z(r0);
                TextKt.c(StringResources_androidKt.c(r24, R.string.dr_card2_text2), ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48416e, r0), "careservicesForm_contactInformationPhoneDisclaimer_text"), LVAppDesignKitTheme.c(r24).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r24).m, r24, 0, 0, 131064);
                TextKt.c(StringResources_androidKt.c(r24, R.string.mylv_mandatoryfield), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48415c, 5), "careservicesForm_contactInformationPhoneMandatory_text"), LVAppDesignKitTheme.c(r24).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r24).m, r24, 0, 0, 131064);
                r16 = r24;
                if (z) {
                    if (str3 == null && str3.length() > 0 && str4 != 0) {
                        if (new Regex(str4, RegexOption.IGNORE_CASE).a(str3) == r0 && str != null && str.length() > 0 && phoneNumber2 != 0 && (str8 = phoneNumber2.f57394c) != null && str8.length() > 0) {
                            Set set = PhoneNumberHelper.f51519a;
                            if (PhoneNumberHelper.b(phoneNumber.f57393b, str8)) {
                                r23 = r0;
                            }
                        }
                    }
                    r23 = 0;
                } else {
                    if (str != null && str.length() > 0 && phoneNumber2 != 0 && (str7 = phoneNumber2.f57394c) != null && str7.length() > 0) {
                        Set set2 = PhoneNumberHelper.f51519a;
                        if (PhoneNumberHelper.b(phoneNumber2.f57393b, str7)) {
                            r23 = r0;
                        }
                    }
                    r23 = 0;
                }
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(r16).f48446a;
                Modifier modifierE3 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), 1.0f), "careservicesForm_contactInformationNext_button");
                String strC2 = StringResources_androidKt.c(r16, R.string.dr_card1_cta_next);
                if ((i5 & 29360128) == 8388608) {
                    r3 = r0;
                } else {
                    r3 = 0;
                }
                if ((i5 & 3670016) == 1048576) {
                    r5 = r0;
                } else {
                    r5 = 0;
                }
                int i9 = r3 | r5;
                if ((i5 & 57344) == 16384) {
                    r6 = r0;
                } else {
                    r6 = 0;
                }
                ?? r9 = i9 | r6;
                if ((i6 & 14) == 4) {
                    r7 = r0;
                } else {
                    r7 = 0;
                }
                r8 = (r9 == true ? 1 : 0) | r7 | ((i5 & 1879048192) == 536870912 ? r0 : 0);
                objX2 = r16.x();
                if (r8 == 0 || objX2 == composer$Companion$Empty$2) {
                    Function0 function17 = new Function0() { // from class: fu
                        /* JADX WARN: Code duplicated, block: B:12:0x0023  */
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            String str18;
                            if (!z || (str18 = str5) == null) {
                                function1.invoke(Step.THREE);
                            } else {
                                Regex regex = new Regex(str18, RegexOption.IGNORE_CASE);
                                String str19 = str3;
                                if (str19 == null) {
                                    str19 = "";
                                }
                                if (!regex.a(str19)) {
                                    function0.mo47invoke();
                                } else {
                                    function1.invoke(Step.THREE);
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    r16.q(function17);
                    objX2 = function17;
                }
                LVButtonKt.b(0, 376, r16, modifierE3, configurationButton, null, null, strC2, (Function0) objX2, false, r23, false);
                r16.Z(r0);
                r15 = r16;
            }
            obj = objX16;
            eu euVar4 = new eu(softwareKeyboardController3, r0);
            r24.q(euVar4);
            Object obj11 = euVar4;
            obj11 = objX16;
            KeyboardActions keyboardActions4 = new KeyboardActions((Function1) obj11, null, null, null, null, null, 62, null);
            if (i3 == 67108864) {
                r4 = r0;
            } else {
                r4 = 0;
            }
            objX = r24.x();
            if (r4 == 0) {
                objX = new k3(function3, mutableState6, mutableState, mutableState2, 9);
                r24.q(objX);
            } else {
                objX = new k3(function3, mutableState6, mutableState, mutableState2, 9);
                r24.q(objX);
            }
            LVTextFieldKt.a(str17, (Function1) objX, modifierE2, null, false, strJ3, false, null, null, keyboardOptionsA3, keyboardActions4, null, null, null, false, r24, 0, 0, 31192);
            r24.Z(r0);
            r24.Z(r0);
            TextKt.c(StringResources_androidKt.c(r24, R.string.dr_card2_text2), ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48416e, r0), "careservicesForm_contactInformationPhoneDisclaimer_text"), LVAppDesignKitTheme.c(r24).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r24).m, r24, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(r24, R.string.mylv_mandatoryfield), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r24).f48415c, 5), "careservicesForm_contactInformationPhoneMandatory_text"), LVAppDesignKitTheme.c(r24).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r24).m, r24, 0, 0, 131064);
            r16 = r24;
            if (z) {
                if (str3 == null) {
                }
                r23 = 0;
            } else {
                if (str != null) {
                    Set set3 = PhoneNumberHelper.f51519a;
                    if (PhoneNumberHelper.b(phoneNumber2.f57393b, str7)) {
                        r23 = r0;
                    }
                }
                r23 = 0;
            }
            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(r16).f48446a;
            Modifier modifierE4 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ContactEditCardLegacy-CQh16_E"), 1.0f), "careservicesForm_contactInformationNext_button");
            String strC3 = StringResources_androidKt.c(r16, R.string.dr_card1_cta_next);
            if ((i5 & 29360128) == 8388608) {
                r3 = r0;
            } else {
                r3 = 0;
            }
            if ((i5 & 3670016) == 1048576) {
                r5 = r0;
            } else {
                r5 = 0;
            }
            int i10 = r3 | r5;
            if ((i5 & 57344) == 16384) {
                r6 = r0;
            } else {
                r6 = 0;
            }
            ?? r11 = i10 | r6;
            if ((i6 & 14) == 4) {
                r7 = r0;
            } else {
                r7 = 0;
            }
            r8 = (r11 == true ? 1 : 0) | r7 | ((i5 & 1879048192) == 536870912 ? r0 : 0);
            objX2 = r16.x();
            if (r8 == 0) {
                Function0 function18 = new Function0() { // from class: fu
                    /* JADX WARN: Code duplicated, block: B:12:0x0023  */
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        String str18;
                        if (!z || (str18 = str5) == null) {
                            function1.invoke(Step.THREE);
                        } else {
                            Regex regex = new Regex(str18, RegexOption.IGNORE_CASE);
                            String str19 = str3;
                            if (str19 == null) {
                                str19 = "";
                            }
                            if (!regex.a(str19)) {
                                function0.mo47invoke();
                            } else {
                                function1.invoke(Step.THREE);
                            }
                        }
                        return Unit.f71739a;
                    }
                };
                r16.q(function18);
                objX2 = function18;
            } else {
                Function0 function19 = new Function0() { // from class: fu
                    /* JADX WARN: Code duplicated, block: B:12:0x0023  */
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        String str18;
                        if (!z || (str18 = str5) == null) {
                            function1.invoke(Step.THREE);
                        } else {
                            Regex regex = new Regex(str18, RegexOption.IGNORE_CASE);
                            String str19 = str3;
                            if (str19 == null) {
                                str19 = "";
                            }
                            if (!regex.a(str19)) {
                                function0.mo47invoke();
                            } else {
                                function1.invoke(Step.THREE);
                            }
                        }
                        return Unit.f71739a;
                    }
                };
                r16.q(function19);
                objX2 = function19;
            }
            LVButtonKt.b(0, 376, r16, modifierE4, configurationButton2, null, null, strC3, (Function0) objX2, false, r23, false);
            r16.Z(r0);
            r15 = r16;
        } else {
            phoneNumber2 = phoneNumber;
            gapComposerH.D();
            r15 = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r15.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new du(str, phoneNumber2, arrayList, str2, str3, str4, str5, z, function3, function1, function0, function2, i2);
        }
    }

    public static final void c(String str, String str2, PhoneNumber phoneNumber, Composer composer, int i2) {
        float f2;
        GapComposer gapComposerH = composer.h(-1963653910);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.y(phoneNumber) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = Float.valueOf(3.0f);
                gapComposerH.q(objX);
            }
            float fFloatValue = ((Number) objX).floatValue();
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = Float.valueOf(4.0f);
                gapComposerH.q(objX2);
            }
            float fFloatValue2 = ((Number) objX2).floatValue();
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = Float.valueOf(1.0f);
                gapComposerH.q(objX3);
            }
            float fFloatValue3 = ((Number) objX3).floatValue();
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = Float.valueOf(6.0f);
                gapComposerH.q(objX4);
            }
            float fFloatValue4 = ((Number) objX4).floatValue();
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("ContactReadCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            d(StringResources_androidKt.c(gapComposerH, R.string.dr_card2_email), str, "careservicesFormRecap_contactInformationEmailTitle_text", "careservicesFormRecap_contactInformationEmail_text", fFloatValue, fFloatValue4, fFloatValue3, gapComposerH, ((i3 << 3) & 112) | 1797504);
            if (str2 == null) {
                gapComposerH.L(1884744848);
                gapComposerH.Z(false);
                f2 = fFloatValue2;
            } else {
                gapComposerH.L(1884744849);
                f2 = fFloatValue2;
                d(StringResources_androidKt.c(gapComposerH, R.string.global_postal_code), str2, "careservicesFormRecap_contactInformationZipcodeTitle_text", "careservicesFormRecap_contactInformationZipcode_text", f2, f2, fFloatValue3, gapComposerH, 1797504);
                gapComposerH.Z(false);
            }
            d(StringResources_androidKt.c(gapComposerH, R.string.dr_card2_phone), phoneNumber != null ? phoneNumber.toString() : null, "careservicesFormRecap_contactInformationPhoneNumberTitle_text", "careservicesFormRecap_contactInformationPhoneNumber_text", fFloatValue4, f2, fFloatValue3, gapComposerH, 1797504);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 26, str, str2, phoneNumber);
        }
    }

    public static final void d(final String str, final String str2, final String str3, final String str4, final float f2, final float f3, final float f4, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1342007161);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str4) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.c(f2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.c(f3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.c(f4) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ContactReadCardRow");
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            int i4 = i3;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ContactReadCardRow");
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            TextKt.c(str, ModifierExtKt.e(rowScopeInstance.a(dTFunctionNameModifier2, f2, true), str3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i4 & 14, 0, 131064);
            SpacerKt.a(gapComposerH, rowScopeInstance.a(new DTFunctionNameModifier("ContactReadCardRow"), f4, true));
            Modifier modifierE = ModifierExtKt.e(rowScopeInstance.a(new DTFunctionNameModifier("ContactReadCardRow"), f3, true), str4);
            String str5 = str2 == null ? "" : str2;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            TextAlign.f10959b.getClass();
            TextKt.c(str5, modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: bu
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    DistantRepairContactComponentKt.d(str, str2, str3, str4, f2, f3, f4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void e(StepState stepState, final Step2StateUIModel step2StateUIModel, final String str, final boolean z, final String str2, final FormUiModel formUiModel, final Function3 function3, Function1 function1, final Function1 function2, final Function0 function0, final Function1 function4, final Function2 function5, Composer composer, int i2) {
        FormUiModel formUiModel2;
        stepState.getClass();
        step2StateUIModel.getClass();
        formUiModel.getClass();
        function3.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(552701949);
        int i3 = i2 | (gapComposerH.d(stepState.ordinal()) ? 4 : 2) | (gapComposerH.y(step2StateUIModel) ? 32 : 16) | (gapComposerH.K(str != null ? new DispatchRegionCode(str) : null) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.K(str2) ? 16384 : 8192) | (gapComposerH.y(formUiModel) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function0) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && (((gapComposerH.y(function4) ? (char) 4 : (char) 2) | (gapComposerH.y(function5) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            final boolean z2 = !formUiModel.f57486a.isEmpty();
            int i4 = WhenMappings.f57333a[stepState.ordinal()];
            if (i4 == 1) {
                mutableState.setValue(Boolean.TRUE);
            } else if (i4 == 2) {
                mutableState.setValue(Boolean.FALSE);
                mutableState2.setValue(Boolean.TRUE);
            } else if (i4 != 3) {
                v40.g();
                return;
            } else {
                Boolean bool = Boolean.FALSE;
                mutableState.setValue(bool);
                mutableState2.setValue(bool);
            }
            Modifier modifierA = ClipKt.a(tr.d("DistantRepairContactCard-E4zmGwE", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int i5 = 0;
            DistantRepairCardHeaderComponentKt.a(Step.TWO, R.string.dr_card2_title, stepState, false, function1, gapComposerH, ((i3 << 6) & 896) | 6 | ((i3 >> 9) & 57344), 8);
            boolean z3 = !((Boolean) mutableState.getF10755b()).booleanValue() && ((Boolean) mutableState2.getF10755b()).booleanValue();
            formUiModel2 = formUiModel;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(196542319, new Function3() { // from class: au
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z4 = z2;
                    Step2StateUIModel step2StateUIModel2 = step2StateUIModel;
                    Function1 function7 = function2;
                    if (z4) {
                        composer2.L(1151838579);
                        Profile profile = step2StateUIModel2.f57404a;
                        DistantRepairContactComponentKt.a(profile != null ? profile.g : null, formUiModel, function5, function7, composer2, 0);
                        composer2.F();
                    } else {
                        composer2.L(1152164854);
                        Profile profile2 = step2StateUIModel2.f57404a;
                        DistantRepairContactComponentKt.b(profile2 != null ? profile2.g : null, step2StateUIModel2.f57405b, step2StateUIModel2.f57407e, str, step2StateUIModel2.f57406c, step2StateUIModel2.d, str2, z, function3, function7, function0, function4, composer2, 0);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            gapComposerH = gapComposerH;
            AnimatedVisibilityKt.c(columnScopeInstance, z3, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
            AnimatedVisibilityKt.c(columnScopeInstance, (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? false : true, null, null, null, null, ComposableLambdaKt.b(230207768, new cu(z2, formUiModel2, step2StateUIModel, i5), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(true);
        } else {
            formUiModel2 = formUiModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new du(stepState, step2StateUIModel, str, z, str2, formUiModel2, function3, function1, function2, function0, function4, function5, i2);
        }
    }
}
