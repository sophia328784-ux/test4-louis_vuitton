package com.vuitton.android.presentation.screen.dynamicform.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.core.helper.DebounceHandler;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.EnumBasedFormFieldKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldBooleanKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldFreeformKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldPasswordKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldPhoneKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldReadOnlyKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import defpackage.a;
import defpackage.bp;
import defpackage.d21;
import defpackage.dt;
import defpackage.gv;
import defpackage.iv;
import defpackage.jv;
import defpackage.n00;
import defpackage.rt;
import defpackage.vg;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DynamicFormComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57481a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57481a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0147  */
    /* JADX WARN: Code duplicated, block: B:102:0x014d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0153  */
    /* JADX WARN: Code duplicated, block: B:105:0x0156  */
    /* JADX WARN: Code duplicated, block: B:109:0x0160  */
    /* JADX WARN: Code duplicated, block: B:110:0x0169  */
    /* JADX WARN: Code duplicated, block: B:112:0x016d  */
    /* JADX WARN: Code duplicated, block: B:114:0x0177  */
    /* JADX WARN: Code duplicated, block: B:115:0x017a  */
    /* JADX WARN: Code duplicated, block: B:117:0x017f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0189  */
    /* JADX WARN: Code duplicated, block: B:122:0x0190  */
    /* JADX WARN: Code duplicated, block: B:124:0x0194  */
    /* JADX WARN: Code duplicated, block: B:126:0x019e  */
    /* JADX WARN: Code duplicated, block: B:128:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:131:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:132:0x01af  */
    /* JADX WARN: Code duplicated, block: B:134:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:136:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:139:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:142:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:143:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:145:0x01da  */
    /* JADX WARN: Code duplicated, block: B:149:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:150:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:152:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:156:0x0202  */
    /* JADX WARN: Code duplicated, block: B:157:0x0207  */
    /* JADX WARN: Code duplicated, block: B:159:0x020d  */
    /* JADX WARN: Code duplicated, block: B:161:0x0213  */
    /* JADX WARN: Code duplicated, block: B:162:0x0216  */
    /* JADX WARN: Code duplicated, block: B:166:0x021e  */
    /* JADX WARN: Code duplicated, block: B:167:0x0223  */
    /* JADX WARN: Code duplicated, block: B:169:0x0229  */
    /* JADX WARN: Code duplicated, block: B:171:0x022f  */
    /* JADX WARN: Code duplicated, block: B:175:0x0237  */
    /* JADX WARN: Code duplicated, block: B:176:0x023c  */
    /* JADX WARN: Code duplicated, block: B:178:0x0242  */
    /* JADX WARN: Code duplicated, block: B:180:0x0248  */
    /* JADX WARN: Code duplicated, block: B:184:0x0252  */
    /* JADX WARN: Code duplicated, block: B:186:0x0259  */
    /* JADX WARN: Code duplicated, block: B:188:0x025f  */
    /* JADX WARN: Code duplicated, block: B:190:0x0265  */
    /* JADX WARN: Code duplicated, block: B:198:0x0283  */
    /* JADX WARN: Code duplicated, block: B:201:0x028c  */
    /* JADX WARN: Code duplicated, block: B:210:0x02cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:211:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:212:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:214:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:215:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:217:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:218:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:221:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:223:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:225:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:227:0x0305  */
    /* JADX WARN: Code duplicated, block: B:229:0x0309  */
    /* JADX WARN: Code duplicated, block: B:231:0x030f  */
    /* JADX WARN: Code duplicated, block: B:233:0x031c  */
    /* JADX WARN: Code duplicated, block: B:235:0x0320  */
    /* JADX WARN: Code duplicated, block: B:237:0x0326  */
    /* JADX WARN: Code duplicated, block: B:238:0x0332  */
    /* JADX WARN: Code duplicated, block: B:240:0x0338  */
    /* JADX WARN: Code duplicated, block: B:242:0x033e  */
    /* JADX WARN: Code duplicated, block: B:244:0x0344  */
    /* JADX WARN: Code duplicated, block: B:245:0x0350  */
    /* JADX WARN: Code duplicated, block: B:247:0x0356  */
    /* JADX WARN: Code duplicated, block: B:249:0x035c  */
    /* JADX WARN: Code duplicated, block: B:250:0x035e  */
    /* JADX WARN: Code duplicated, block: B:252:0x0362  */
    /* JADX WARN: Code duplicated, block: B:253:0x0365  */
    /* JADX WARN: Code duplicated, block: B:255:0x0369  */
    /* JADX WARN: Code duplicated, block: B:256:0x036c  */
    /* JADX WARN: Code duplicated, block: B:258:0x0370  */
    /* JADX WARN: Code duplicated, block: B:259:0x0373  */
    /* JADX WARN: Code duplicated, block: B:261:0x0377  */
    /* JADX WARN: Code duplicated, block: B:262:0x037a  */
    /* JADX WARN: Code duplicated, block: B:264:0x037e  */
    /* JADX WARN: Code duplicated, block: B:265:0x0381  */
    /* JADX WARN: Code duplicated, block: B:267:0x0385  */
    /* JADX WARN: Code duplicated, block: B:268:0x0388  */
    /* JADX WARN: Code duplicated, block: B:270:0x038c  */
    /* JADX WARN: Code duplicated, block: B:271:0x0394  */
    /* JADX WARN: Code duplicated, block: B:273:0x0398  */
    /* JADX WARN: Code duplicated, block: B:275:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:278:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:279:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:283:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:285:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:287:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:290:0x0404  */
    /* JADX WARN: Code duplicated, block: B:293:0x040e  */
    /* JADX WARN: Code duplicated, block: B:297:0x041d  */
    /* JADX WARN: Code duplicated, block: B:304:0x043a  */
    /* JADX WARN: Code duplicated, block: B:307:0x0477  */
    /* JADX WARN: Code duplicated, block: B:309:0x047e  */
    /* JADX WARN: Code duplicated, block: B:310:0x0482  */
    /* JADX WARN: Code duplicated, block: B:313:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:315:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:317:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:319:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:321:0x0504  */
    /* JADX WARN: Code duplicated, block: B:324:0x057f  */
    /* JADX WARN: Code duplicated, block: B:326:0x0597  */
    /* JADX WARN: Code duplicated, block: B:331:0x05aa  */
    /* JADX WARN: Code duplicated, block: B:334:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:338:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:340:0x05f2  */
    /* JADX WARN: Code duplicated, block: B:341:0x0605  */
    /* JADX WARN: Code duplicated, block: B:343:0x060e  */
    /* JADX WARN: Code duplicated, block: B:349:0x0689  */
    /* JADX WARN: Code duplicated, block: B:351:0x0691  */
    /* JADX WARN: Code duplicated, block: B:353:0x0695  */
    /* JADX WARN: Code duplicated, block: B:354:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:356:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:357:0x06c2  */
    /* JADX WARN: Code duplicated, block: B:360:0x06d1  */
    /* JADX WARN: Code duplicated, block: B:361:0x06db  */
    /* JADX WARN: Code duplicated, block: B:363:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:364:0x06fb  */
    /* JADX WARN: Code duplicated, block: B:367:0x070a  */
    /* JADX WARN: Code duplicated, block: B:369:0x0714  */
    /* JADX WARN: Code duplicated, block: B:372:0x0724  */
    /* JADX WARN: Code duplicated, block: B:373:0x0726  */
    /* JADX WARN: Code duplicated, block: B:376:0x0735  */
    /* JADX WARN: Code duplicated, block: B:377:0x0737  */
    /* JADX WARN: Code duplicated, block: B:380:0x0740  */
    /* JADX WARN: Code duplicated, block: B:383:0x0745  */
    /* JADX WARN: Code duplicated, block: B:384:0x0748  */
    /* JADX WARN: Code duplicated, block: B:388:0x0767  */
    /* JADX WARN: Code duplicated, block: B:389:0x0769  */
    /* JADX WARN: Code duplicated, block: B:392:0x0771 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:393:0x0773  */
    /* JADX WARN: Code duplicated, block: B:396:0x078c  */
    /* JADX WARN: Code duplicated, block: B:397:0x078e  */
    /* JADX WARN: Code duplicated, block: B:400:0x0796 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:403:0x079b  */
    /* JADX WARN: Code duplicated, block: B:406:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:407:0x07b6  */
    /* JADX WARN: Code duplicated, block: B:410:0x07be A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:411:0x07c0  */
    /* JADX WARN: Code duplicated, block: B:414:0x0806  */
    /* JADX WARN: Code duplicated, block: B:416:0x0811  */
    /* JADX WARN: Code duplicated, block: B:421:0x0885  */
    /* JADX WARN: Code duplicated, block: B:423:0x088a  */
    /* JADX WARN: Code duplicated, block: B:426:0x08b7  */
    /* JADX WARN: Code duplicated, block: B:429:0x0837 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:430:0x0666 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:431:0x05c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:432:? A[LOOP:1: B:332:0x05ae->B:432:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:433:0x041b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:434:0x041d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:435:? A[LOOP:2: B:291:0x0408->B:435:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:436:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:55:0x00af  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:64:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:79:0x0100  */
    /* JADX WARN: Code duplicated, block: B:80:0x0105  */
    /* JADX WARN: Code duplicated, block: B:82:0x010b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0111  */
    /* JADX WARN: Code duplicated, block: B:85:0x0114  */
    /* JADX WARN: Code duplicated, block: B:89:0x0122  */
    /* JADX WARN: Code duplicated, block: B:90:0x0127  */
    /* JADX WARN: Code duplicated, block: B:92:0x012d  */
    /* JADX WARN: Code duplicated, block: B:94:0x0133  */
    /* JADX WARN: Code duplicated, block: B:95:0x0136  */
    /* JADX WARN: Code duplicated, block: B:99:0x0142  */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v52 */
    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, final FormUiModel formUiModel, boolean z, float f2, final Function2 function2, Function1 function1, Function0 function0, Function1 function3, Function1 function4, boolean z2, boolean z3, boolean z4, Function3 function5, Function3 function6, Function3 function7, Function3 function8, Function3 function9, boolean z5, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        float f3;
        int i6;
        int i7;
        int i8;
        int i9;
        Modifier modifier2;
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
        int i29;
        int i30;
        int i31;
        boolean z6;
        final LVColorScheme lVColorScheme2;
        final boolean z7;
        final Function1 function10;
        final Function0 function11;
        final Function1 function12;
        final boolean z8;
        final boolean z9;
        final Function3 function13;
        final Function3 function14;
        final Function3 function15;
        final Function3 function16;
        final Function3 function17;
        final boolean z10;
        GapComposer gapComposer;
        final float f4;
        final Modifier modifier3;
        final Function1 function18;
        final boolean z11;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i32;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier dTFunctionNameModifier;
        LVColorScheme lVColorScheme3;
        boolean z12;
        Function1 function19;
        Function0 function20;
        Function1 function21;
        Function1 function22;
        boolean z13;
        boolean z14;
        boolean z15;
        Function3 function23;
        Function3 function24;
        Function3 function25;
        Function3 function26;
        Function3 function27;
        boolean z16;
        Function1 function28;
        LVColorScheme lVColorScheme4;
        Function1 function29;
        boolean z17;
        Function0 function30;
        float f5;
        Function1 function31;
        Object objX;
        Object objX2;
        Object objX3;
        Object objX4;
        LVColorScheme lVColorScheme5;
        Object objX5;
        final DebounceHandler debounceHandler;
        boolean zK;
        Object objX6;
        boolean z18;
        List list;
        Iterator it;
        boolean zBooleanValue;
        boolean zY;
        Object objX7;
        ?? r2;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function32;
        ColumnScopeInstance columnScopeInstance;
        final Function1 function33;
        Function0 function34;
        final Function1 function35;
        final Function1 function36;
        Modifier modifier4;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        Function3 function37;
        Function3 function38;
        Function3 function39;
        Function3 function40;
        GapComposer gapComposer2;
        Function3 function41;
        Function3 function42;
        Function3 function43;
        List list2;
        Iterator it2;
        int i33;
        long j2;
        Function3 function44;
        Iterator it3;
        int i34;
        Object next;
        int i35;
        FormFieldGenericUiModel formFieldGenericUiModel;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        Object objX8;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        boolean z23;
        boolean z24;
        Object objX9;
        boolean z25;
        boolean z26;
        Object objX10;
        boolean z27;
        boolean z28;
        Object objX11;
        Function3 function45;
        boolean z29;
        int i36;
        long j3;
        int i37;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "DynamicFormComposable-KMZiVUk");
        }
        formUiModel.getClass();
        List list3 = formUiModel.f57486a;
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1951664219);
        int i38 = i4 & 1;
        if (i38 != 0) {
            i5 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        int i39 = i4 & 2;
        if (i39 != 0) {
            i5 |= 48;
        } else if ((i2 & 48) == 0) {
            i5 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(formUiModel) ? 256 : 128;
        }
        int i40 = i4 & 8;
        if (i40 == 0) {
            if ((i2 & 3072) == 0) {
                i5 |= gapComposerH.b(z) ? 2048 : 1024;
            }
            if ((i2 & 24576) == 0) {
                if ((i4 & 16) == 0) {
                    f3 = f2;
                    int i41 = gapComposerH.c(f3) ? 16384 : 8192;
                    i5 |= i41;
                } else {
                    f3 = f2;
                }
                i5 |= i41;
            } else {
                f3 = f2;
            }
            if ((i2 & ImageMetadata.EDGE_MODE) != 0) {
                if (gapComposerH.y(function2)) {
                    i37 = 131072;
                } else {
                    i37 = 65536;
                }
                i5 |= i37;
            }
            i6 = i4 & 64;
            if (i6 != 0) {
                i5 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                if (gapComposerH.y(function1)) {
                    i7 = 1048576;
                } else {
                    i7 = 524288;
                }
                i5 |= i7;
            }
            i8 = i4 & 128;
            if (i8 != 0) {
                i5 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function0)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i5 |= i9;
            }
            modifier2 = modifierE;
            i10 = i4 & 256;
            if (i10 != 0) {
                i5 |= 100663296;
            } else if ((i2 & 100663296) == 0) {
                if (gapComposerH.y(function3)) {
                    i11 = 67108864;
                } else {
                    i11 = 33554432;
                }
                i5 |= i11;
            }
            i12 = i4 & 512;
            if (i12 != 0) {
                i5 |= 805306368;
            } else if ((i2 & 805306368) == 0) {
                if (gapComposerH.y(function4)) {
                    i13 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i13 = 268435456;
                }
                i5 |= i13;
            }
            i14 = i4 & 1024;
            if (i14 != 0) {
                i15 = i3 | 6;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.b(z2)) {
                    i16 = 4;
                } else {
                    i16 = 2;
                }
                i15 = i3 | i16;
            } else {
                i15 = i3;
            }
            i17 = i4 & 2048;
            if (i17 != 0) {
                i15 |= 48;
            } else if ((i3 & 48) != 0) {
                i15 |= gapComposerH.b(z3) ? 32 : 16;
            }
            i18 = i15;
            i19 = i4 & 4096;
            if (i19 != 0) {
                i21 = i18 | KyberEngine.KyberPolyBytes;
            } else {
                i20 = i18;
                if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                    i20 |= gapComposerH.b(z4) ? 256 : 128;
                }
                i21 = i20;
            }
            i22 = i4 & 8192;
            if (i22 != 0) {
                i23 = i21 | 3072;
            } else {
                i23 = i21 | (gapComposerH.y(function5) ? 2048 : 1024);
            }
            i24 = i4 & 16384;
            if (i24 != 0) {
                i25 = i23 | 24576;
            } else {
                i25 = i23 | (gapComposerH.y(function6) ? 16384 : 8192);
            }
            i26 = i4 & 32768;
            if (i26 != 0) {
                i25 |= ImageMetadata.EDGE_MODE;
            } else if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function7)) {
                    i27 = 131072;
                } else {
                    i27 = 65536;
                }
                i25 |= i27;
            }
            i28 = i4 & 65536;
            if (i28 != 0) {
                i25 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                i25 |= gapComposerH.y(function8) ? 1048576 : 524288;
            }
            i29 = i4 & 131072;
            if (i29 != 0) {
                i25 |= 12582912;
            } else if ((i3 & 12582912) == 0) {
                i25 |= gapComposerH.y(function9) ? 8388608 : 4194304;
            }
            i30 = i4 & 262144;
            if (i30 != 0) {
                i25 |= 100663296;
            } else if ((i3 & 100663296) == 0) {
                i25 |= gapComposerH.b(z5) ? 67108864 : 33554432;
            }
            i31 = i25;
            if ((i5 & 306783379) == 306783378 || (i31 & 38347923) != 38347922) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i5 & 1, z6)) {
                gapComposerH.y0();
                i32 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i32 != 0 || gapComposerH.h0()) {
                    if (i38 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DynamicFormComposable-KMZiVUk");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i39 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i40 != 0) {
                        z12 = true;
                    } else {
                        z12 = z;
                    }
                    if ((i4 & 16) != 0) {
                        f3 = LVAppDesignKitTheme.l(gapComposerH).d;
                        i5 &= -57345;
                    }
                    if (i6 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new bp(29);
                            gapComposerH.q(objX4);
                        }
                        function19 = (Function1) objX4;
                    } else {
                        function19 = function1;
                    }
                    if (i8 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new rt(10);
                            gapComposerH.q(objX3);
                        }
                        function20 = (Function0) objX3;
                    } else {
                        function20 = function0;
                    }
                    if (i10 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new iv(0);
                            gapComposerH.q(objX2);
                        }
                        function21 = (Function1) objX2;
                    } else {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        function21 = function3;
                    }
                    if (i12 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new iv(1);
                            gapComposerH.q(objX);
                        }
                        function22 = (Function1) objX;
                    } else {
                        function21 = function21;
                        function22 = function4;
                    }
                    if (i14 != 0) {
                        z13 = false;
                    } else {
                        z13 = z2;
                    }
                    if (i17 != 0) {
                        z14 = false;
                    } else {
                        z14 = z3;
                    }
                    if (i19 != 0) {
                        z15 = false;
                    } else {
                        z15 = z4;
                    }
                    if (i22 != 0) {
                        function23 = null;
                    } else {
                        function23 = function5;
                    }
                    if (i24 != 0) {
                        function24 = null;
                    } else {
                        function24 = function6;
                    }
                    if (i26 != 0) {
                        function25 = null;
                    } else {
                        function25 = function7;
                    }
                    if (i28 != 0) {
                        function26 = null;
                    } else {
                        function26 = function8;
                    }
                    if (i29 != 0) {
                        ComposableSingletons$DynamicFormComposableKt.f57479a.getClass();
                        function27 = ComposableSingletons$DynamicFormComposableKt.f57480b;
                    } else {
                        function27 = function9;
                    }
                    if (i30 != 0) {
                        z16 = true;
                    } else {
                        z16 = z5;
                    }
                    function28 = function22;
                    lVColorScheme4 = lVColorScheme3;
                    function29 = function19;
                    z17 = z12;
                    function30 = function20;
                    f5 = f3;
                    function31 = function21;
                } else {
                    gapComposerH.D();
                    if ((i4 & 16) != 0) {
                        i5 &= -57345;
                    }
                    lVColorScheme4 = lVColorScheme;
                    z17 = z;
                    function29 = function1;
                    function30 = function0;
                    z14 = z3;
                    z15 = z4;
                    function23 = function5;
                    function24 = function6;
                    function25 = function7;
                    function26 = function8;
                    function27 = function9;
                    z16 = z5;
                    f5 = f3;
                    i5 = i5;
                    dTFunctionNameModifier = modifier2;
                    function31 = function3;
                    function28 = function4;
                    z13 = z2;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                lVColorScheme5 = lVColorScheme4;
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new DebounceHandler(0L, 1, null);
                    gapComposerH.q(objX5);
                }
                debounceHandler = (DebounceHandler) objX5;
                zK = gapComposerH.K(formUiModel);
                objX6 = gapComposerH.x();
                if (zK || objX6 == composer$Companion$Empty$1) {
                    if (list3.isEmpty()) {
                        z18 = false;
                    } else {
                        list = list3;
                        if ((list instanceof Collection) || !list.isEmpty()) {
                            it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                        z18 = false;
                                    }
                                }
                            }
                        }
                        z18 = true;
                    }
                    objX6 = Boolean.valueOf(z18);
                    gapComposerH.q(objX6);
                }
                zBooleanValue = ((Boolean) objX6).booleanValue();
                zY = gapComposerH.y(formUiModel);
                objX7 = gapComposerH.x();
                if (!zY || objX7 == composer$Companion$Empty$1) {
                    r2 = 0;
                    objX7 = new jv(formUiModel, 0);
                    gapComposerH.q(objX7);
                } else {
                    r2 = 0;
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, r2, (Function1) objX7);
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f5);
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, r2);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                function32 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function32);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                columnScopeInstance = ColumnScopeInstance.f4944a;
                if (zBooleanValue) {
                    Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 1476356324, "DynamicFormComposable-KMZiVUk"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.all_fields_mandatory_label);
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                    i36 = WhenMappings.f57481a[lVColorScheme5.ordinal()];
                    if (i36 != 1) {
                        gapComposerH.L(601825192);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                        gapComposerH.Z(false);
                    } else {
                        if (i36 == 2) {
                            throw d21.u(gapComposerH, 601822298, false);
                        }
                        gapComposerH.L(601828046);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                        gapComposerH.Z(false);
                    }
                    modifier4 = dTFunctionNameModifier;
                    function37 = function24;
                    function38 = function25;
                    function33 = function29;
                    function34 = function30;
                    function40 = function27;
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    function41 = function23;
                    function35 = function31;
                    long j4 = j3;
                    function36 = function28;
                    function44 = function26;
                    TextKt.c(strC, modifierM, j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(false);
                } else {
                    list3 = list3;
                    function33 = function29;
                    function34 = function30;
                    function35 = function31;
                    function36 = function28;
                    modifier4 = dTFunctionNameModifier;
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    function37 = function24;
                    function38 = function25;
                    function39 = function26;
                    function40 = function27;
                    gapComposer2 = gapComposerH;
                    function41 = function23;
                    if (z16) {
                        list2 = list3;
                        if ((list2 instanceof Collection) || !list2.isEmpty()) {
                            it2 = list2.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (((FormFieldGenericUiModel) it2.next()).getF57495c()) {
                                        DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer2, 1477095984, "DynamicFormComposable-KMZiVUk");
                                        Alignment.f8582a.getClass();
                                        Modifier modifierE2 = ModifierExtKt.e(columnScopeInstance.b(dTFunctionNameModifierI, Alignment.Companion.p), "dropdown_supporting_text");
                                        String strC2 = StringResources_androidKt.c(gapComposer2, R.string.mylv_mandatoryfield);
                                        TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer2).m;
                                        i33 = WhenMappings.f57481a[lVColorScheme5.ordinal()];
                                        if (i33 == 1) {
                                            gapComposer2.L(601850601);
                                            j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                                            gapComposer2.Z(false);
                                        } else {
                                            if (i33 != 2) {
                                                throw d21.u(gapComposer2, 601847708, false);
                                            }
                                            gapComposer2.L(601853487);
                                            j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.m;
                                            gapComposer2.Z(false);
                                        }
                                        function44 = function39;
                                        TextKt.c(strC2, modifierE2, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer2, 0, 0, 131064);
                                        gapComposer2 = gapComposer2;
                                        gapComposer2.Z(false);
                                    }
                                }
                            }
                        }
                    }
                    function42 = function37;
                    function43 = function38;
                    gapComposer2.L(1477650791);
                    gapComposer2.Z(false);
                    gapComposer2.L(601857931);
                    i34 = 0;
                    for (it3 = list3.iterator(); it3.hasNext(); it3 = it3) {
                        next = it3.next();
                        i35 = i34 + 1;
                        if (i34 >= 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        formFieldGenericUiModel = (FormFieldGenericUiModel) next;
                        if (function41 == null) {
                            gapComposer2.L(1664522971);
                            z19 = false;
                            gapComposer2.Z(false);
                        } else {
                            gapComposer2.L(1664522972);
                            if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                                gapComposer2.L(-183511606);
                                ((FormFieldUiModel) formFieldGenericUiModel).g = (AnnotatedString) function41.A(formFieldGenericUiModel, gapComposer2, 0);
                                z19 = false;
                                gapComposer2.Z(false);
                            } else {
                                z19 = false;
                                gapComposer2.L(-183433765);
                                gapComposer2.Z(false);
                            }
                            gapComposer2.Z(z19);
                        }
                        if (function42 == null) {
                            gapComposer2.L(1664784177);
                            gapComposer2.Z(z19);
                        } else {
                            gapComposer2.L(1664784178);
                            if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                                gapComposer2.L(583667575);
                                ((FormFieldUiModel) formFieldGenericUiModel).f57498h = (Function0) function42.A(formFieldGenericUiModel, gapComposer2, 0);
                                z19 = false;
                                gapComposer2.Z(false);
                            } else {
                                z19 = false;
                                gapComposer2.L(583755026);
                                gapComposer2.Z(false);
                            }
                            gapComposer2.Z(z19);
                        }
                        if (function43 == null) {
                            gapComposer2.L(1665034750);
                        } else {
                            gapComposer2.L(1665034751);
                            function43.A(formFieldGenericUiModel, gapComposer2, 0);
                        }
                        gapComposer2.Z(z19);
                        if (i34 == CollectionsKt.F(list3)) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean zY2 = gapComposer2.y(debounceHandler);
                        if ((i5 & 3670016) == 1048576) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        z22 = zY2 | z21;
                        objX8 = gapComposer2.x();
                        if (z22) {
                            composer$Companion$Empty$3 = composer$Companion$Empty$2;
                        } else {
                            composer$Companion$Empty$3 = composer$Companion$Empty$2;
                            if (objX8 == composer$Companion$Empty$3) {
                            }
                            Function1 function46 = (Function1) objX8;
                            boolean zY3 = gapComposer2.y(debounceHandler);
                            Function1 function47 = function33;
                            if ((i5 & 234881024) == 67108864) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                            z24 = zY3 | z23;
                            objX9 = gapComposer2.x();
                            if (z24 || objX9 == composer$Companion$Empty$3) {
                                final int i42 = 1;
                                objX9 = new Function1() { // from class: kv
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int i43 = i42;
                                        Function1 function48 = function35;
                                        DebounceHandler debounceHandler2 = debounceHandler;
                                        switch (i43) {
                                            case 0:
                                                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                                formSectionTypeUiModel.getClass();
                                                debounceHandler2.getClass();
                                                function48.getClass();
                                                long jCurrentTimeMillis = System.currentTimeMillis();
                                                if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                    debounceHandler2.f43514b = jCurrentTimeMillis;
                                                    function48.invoke(formSectionTypeUiModel);
                                                }
                                                break;
                                            case 1:
                                                PhoneType phoneType = (PhoneType) obj;
                                                phoneType.getClass();
                                                debounceHandler2.getClass();
                                                function48.getClass();
                                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                    debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                    function48.invoke(phoneType);
                                                }
                                                break;
                                            default:
                                                PhoneType phoneType2 = (PhoneType) obj;
                                                phoneType2.getClass();
                                                debounceHandler2.getClass();
                                                function48.getClass();
                                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                                if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                    debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                    function48.invoke(phoneType2);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX9);
                            }
                            Function1 function48 = (Function1) objX9;
                            boolean zY4 = gapComposer2.y(debounceHandler);
                            if ((i5 & 1879048192) == 536870912) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            z26 = zY4 | z25;
                            objX10 = gapComposer2.x();
                            if (z26 || objX10 == composer$Companion$Empty$3) {
                                final int i43 = 2;
                                objX10 = new Function1() { // from class: kv
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int i44 = i43;
                                        Function1 function49 = function36;
                                        DebounceHandler debounceHandler2 = debounceHandler;
                                        switch (i44) {
                                            case 0:
                                                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                                formSectionTypeUiModel.getClass();
                                                debounceHandler2.getClass();
                                                function49.getClass();
                                                long jCurrentTimeMillis = System.currentTimeMillis();
                                                if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                    debounceHandler2.f43514b = jCurrentTimeMillis;
                                                    function49.invoke(formSectionTypeUiModel);
                                                }
                                                break;
                                            case 1:
                                                PhoneType phoneType = (PhoneType) obj;
                                                phoneType.getClass();
                                                debounceHandler2.getClass();
                                                function49.getClass();
                                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                    debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                    function49.invoke(phoneType);
                                                }
                                                break;
                                            default:
                                                PhoneType phoneType2 = (PhoneType) obj;
                                                phoneType2.getClass();
                                                debounceHandler2.getClass();
                                                function49.getClass();
                                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                                if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                    debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                    function49.invoke(phoneType2);
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX10);
                            }
                            Function1 function49 = (Function1) objX10;
                            boolean zY5 = gapComposer2.y(debounceHandler);
                            if ((i5 & 29360128) == 8388608) {
                                z27 = true;
                            } else {
                                z27 = false;
                            }
                            z28 = z27 | zY5;
                            objX11 = gapComposer2.x();
                            if (z28 || objX11 == composer$Companion$Empty$3) {
                                objX11 = new dt(debounceHandler, function34, 7);
                                gapComposer2.q(objX11);
                            }
                            Function0 function50 = (Function0) objX11;
                            int i44 = i31 << 9;
                            LVColorScheme lVColorScheme6 = lVColorScheme5;
                            GapComposer gapComposer3 = gapComposer2;
                            Function3 function51 = function42;
                            Function3 function52 = function43;
                            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$3;
                            function45 = function39;
                            boolean z30 = z13;
                            boolean z31 = z14;
                            boolean z32 = z15;
                            boolean z33 = z17;
                            b(formFieldGenericUiModel, z20, z33, z30, z31, z32, function2, function46, function48, function49, function50, lVColorScheme6, gapComposer3, ((i5 >> 3) & 896) | (i44 & 7168) | (57344 & i44) | (458752 & i44) | ((i5 << 3) & 3670016), i5 & 112);
                            gapComposer2 = gapComposer3;
                            if (function45 == null) {
                                gapComposer2.L(1666004926);
                                z29 = false;
                            } else {
                                z29 = false;
                                gapComposer2.L(1666004927);
                                function45.A(formFieldGenericUiModel, gapComposer2, 0);
                            }
                            gapComposer2.Z(z29);
                            function39 = function45;
                            z17 = z33;
                            z13 = z30;
                            z14 = z31;
                            z15 = z32;
                            lVColorScheme5 = lVColorScheme6;
                            i34 = i35;
                            function33 = function47;
                            composer$Companion$Empty$2 = composer$Companion$Empty$4;
                            function42 = function51;
                            function43 = function52;
                        }
                        final int i45 = 0;
                        objX8 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i46 = i45;
                                Function1 function410 = function33;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i46) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function410.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function410.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function410.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function410.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function410.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function410.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX8);
                        Function1 function410 = (Function1) objX8;
                        boolean zY6 = gapComposer2.y(debounceHandler);
                        Function1 function411 = function33;
                        if ((i5 & 234881024) == 67108864) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        z24 = zY6 | z23;
                        objX9 = gapComposer2.x();
                        if (z24) {
                            final int i46 = 1;
                            objX9 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i47 = i46;
                                    Function1 function412 = function35;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i47) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function412.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function412.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function412.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function412.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function412.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function412.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX9);
                        } else {
                            final int i47 = 1;
                            objX9 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i48 = i47;
                                    Function1 function412 = function35;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i48) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function412.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function412.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function412.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function412.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function412.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function412.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        Function1 function412 = (Function1) objX9;
                        boolean zY7 = gapComposer2.y(debounceHandler);
                        if ((i5 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        z26 = zY7 | z25;
                        objX10 = gapComposer2.x();
                        if (z26) {
                            final int i48 = 2;
                            objX10 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i49 = i48;
                                    Function1 function413 = function36;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i49) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function413.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function413.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function413.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function413.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function413.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function413.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        } else {
                            final int i49 = 2;
                            objX10 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i410 = i49;
                                    Function1 function413 = function36;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i410) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function413.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function413.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function413.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function413.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function413.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function413.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        }
                        Function1 function413 = (Function1) objX10;
                        boolean zY8 = gapComposer2.y(debounceHandler);
                        if ((i5 & 29360128) == 8388608) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        z28 = z27 | zY8;
                        objX11 = gapComposer2.x();
                        if (z28) {
                            objX11 = new dt(debounceHandler, function34, 7);
                            gapComposer2.q(objX11);
                        } else {
                            objX11 = new dt(debounceHandler, function34, 7);
                            gapComposer2.q(objX11);
                        }
                        Function0 function53 = (Function0) objX11;
                        int i410 = i31 << 9;
                        LVColorScheme lVColorScheme7 = lVColorScheme5;
                        GapComposer gapComposer4 = gapComposer2;
                        Function3 function54 = function42;
                        Function3 function55 = function43;
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$3;
                        function45 = function39;
                        boolean z34 = z13;
                        boolean z35 = z14;
                        boolean z36 = z15;
                        boolean z37 = z17;
                        b(formFieldGenericUiModel, z20, z37, z34, z35, z36, function2, function410, function412, function413, function53, lVColorScheme7, gapComposer4, ((i5 >> 3) & 896) | (i410 & 7168) | (57344 & i410) | (458752 & i410) | ((i5 << 3) & 3670016), i5 & 112);
                        gapComposer2 = gapComposer4;
                        if (function45 == null) {
                            gapComposer2.L(1666004926);
                            z29 = false;
                        } else {
                            z29 = false;
                            gapComposer2.L(1666004927);
                            function45.A(formFieldGenericUiModel, gapComposer2, 0);
                        }
                        gapComposer2.Z(z29);
                        function39 = function45;
                        z17 = z37;
                        z13 = z34;
                        z14 = z35;
                        z15 = z36;
                        lVColorScheme5 = lVColorScheme7;
                        i34 = i35;
                        function33 = function411;
                        composer$Companion$Empty$2 = composer$Companion$Empty$5;
                        function42 = function54;
                        function43 = function55;
                    }
                    Function1 function56 = function33;
                    Function3 function57 = function42;
                    Function3 function58 = function43;
                    gapComposer2.Z(false);
                    Function3 function59 = function40;
                    function59.A(columnScopeInstance, gapComposer2, Integer.valueOf(((i31 >> 18) & 112) | 6));
                    gapComposer2.Z(true);
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Function3 function60 = function41;
                    function12 = function35;
                    z7 = z17;
                    z11 = z14;
                    function13 = function60;
                    f4 = f5;
                    function17 = function59;
                    function16 = function39;
                    gapComposer = gapComposer2;
                    z8 = z13;
                    z9 = z15;
                    lVColorScheme2 = lVColorScheme5;
                    function10 = function56;
                    z10 = z16;
                    modifier3 = modifier4;
                    function14 = function57;
                    function15 = function58;
                    function18 = function36;
                    function11 = function34;
                }
                function39 = function44;
                function42 = function37;
                function43 = function38;
                gapComposer2.L(601857931);
                i34 = 0;
                while (it3.hasNext()) {
                    next = it3.next();
                    i35 = i34 + 1;
                    if (i34 >= 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    formFieldGenericUiModel = (FormFieldGenericUiModel) next;
                    if (function41 == null) {
                        gapComposer2.L(1664522971);
                        z19 = false;
                        gapComposer2.Z(false);
                    } else {
                        gapComposer2.L(1664522972);
                        if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                            gapComposer2.L(-183511606);
                            ((FormFieldUiModel) formFieldGenericUiModel).g = (AnnotatedString) function41.A(formFieldGenericUiModel, gapComposer2, 0);
                            z19 = false;
                            gapComposer2.Z(false);
                        } else {
                            z19 = false;
                            gapComposer2.L(-183433765);
                            gapComposer2.Z(false);
                        }
                        gapComposer2.Z(z19);
                    }
                    if (function42 == null) {
                        gapComposer2.L(1664784177);
                        gapComposer2.Z(z19);
                    } else {
                        gapComposer2.L(1664784178);
                        if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                            gapComposer2.L(583667575);
                            ((FormFieldUiModel) formFieldGenericUiModel).f57498h = (Function0) function42.A(formFieldGenericUiModel, gapComposer2, 0);
                            z19 = false;
                            gapComposer2.Z(false);
                        } else {
                            z19 = false;
                            gapComposer2.L(583755026);
                            gapComposer2.Z(false);
                        }
                        gapComposer2.Z(z19);
                    }
                    if (function43 == null) {
                        gapComposer2.L(1665034750);
                    } else {
                        gapComposer2.L(1665034751);
                        function43.A(formFieldGenericUiModel, gapComposer2, 0);
                    }
                    gapComposer2.Z(z19);
                    if (i34 == CollectionsKt.F(list3)) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean zY9 = gapComposer2.y(debounceHandler);
                    if ((i5 & 3670016) == 1048576) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    z22 = zY9 | z21;
                    objX8 = gapComposer2.x();
                    if (z22) {
                        composer$Companion$Empty$3 = composer$Companion$Empty$2;
                        if (objX8 == composer$Companion$Empty$3) {
                        }
                        Function1 function414 = (Function1) objX8;
                        boolean zY10 = gapComposer2.y(debounceHandler);
                        Function1 function415 = function33;
                        if ((i5 & 234881024) == 67108864) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        z24 = zY10 | z23;
                        objX9 = gapComposer2.x();
                        if (z24) {
                            final int i411 = 1;
                            objX9 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i412 = i411;
                                    Function1 function416 = function35;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i412) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function416.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function416.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function416.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function416.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function416.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function416.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX9);
                        } else {
                            final int i412 = 1;
                            objX9 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i413 = i412;
                                    Function1 function416 = function35;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i413) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function416.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function416.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function416.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function416.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function416.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function416.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        Function1 function416 = (Function1) objX9;
                        boolean zY11 = gapComposer2.y(debounceHandler);
                        if ((i5 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        z26 = zY11 | z25;
                        objX10 = gapComposer2.x();
                        if (z26) {
                            final int i413 = 2;
                            objX10 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i414 = i413;
                                    Function1 function417 = function36;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i414) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function417.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function417.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function417.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function417.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function417.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function417.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        } else {
                            final int i414 = 2;
                            objX10 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i415 = i414;
                                    Function1 function417 = function36;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i415) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function417.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function417.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function417.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function417.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function417.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function417.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        }
                        Function1 function417 = (Function1) objX10;
                        boolean zY12 = gapComposer2.y(debounceHandler);
                        if ((i5 & 29360128) == 8388608) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        z28 = z27 | zY12;
                        objX11 = gapComposer2.x();
                        if (z28) {
                            objX11 = new dt(debounceHandler, function34, 7);
                            gapComposer2.q(objX11);
                        } else {
                            objX11 = new dt(debounceHandler, function34, 7);
                            gapComposer2.q(objX11);
                        }
                        Function0 function510 = (Function0) objX11;
                        int i415 = i31 << 9;
                        LVColorScheme lVColorScheme8 = lVColorScheme5;
                        GapComposer gapComposer5 = gapComposer2;
                        Function3 function511 = function42;
                        Function3 function512 = function43;
                        Composer$Companion$Empty$1 composer$Companion$Empty$6 = composer$Companion$Empty$3;
                        function45 = function39;
                        boolean z38 = z13;
                        boolean z39 = z14;
                        boolean z310 = z15;
                        boolean z311 = z17;
                        b(formFieldGenericUiModel, z20, z311, z38, z39, z310, function2, function414, function416, function417, function510, lVColorScheme8, gapComposer5, ((i5 >> 3) & 896) | (i415 & 7168) | (57344 & i415) | (458752 & i415) | ((i5 << 3) & 3670016), i5 & 112);
                        gapComposer2 = gapComposer5;
                        if (function45 == null) {
                            gapComposer2.L(1666004926);
                            z29 = false;
                        } else {
                            z29 = false;
                            gapComposer2.L(1666004927);
                            function45.A(formFieldGenericUiModel, gapComposer2, 0);
                        }
                        gapComposer2.Z(z29);
                        function39 = function45;
                        z17 = z311;
                        z13 = z38;
                        z14 = z39;
                        z15 = z310;
                        lVColorScheme5 = lVColorScheme8;
                        i34 = i35;
                        function33 = function415;
                        composer$Companion$Empty$2 = composer$Companion$Empty$6;
                        function42 = function511;
                        function43 = function512;
                    } else {
                        composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    }
                    final int i416 = 0;
                    objX8 = new Function1() { // from class: kv
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i417 = i416;
                            Function1 function418 = function33;
                            DebounceHandler debounceHandler2 = debounceHandler;
                            switch (i417) {
                                case 0:
                                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                    formSectionTypeUiModel.getClass();
                                    debounceHandler2.getClass();
                                    function418.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis;
                                        function418.invoke(formSectionTypeUiModel);
                                    }
                                    break;
                                case 1:
                                    PhoneType phoneType = (PhoneType) obj;
                                    phoneType.getClass();
                                    debounceHandler2.getClass();
                                    function418.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis2;
                                        function418.invoke(phoneType);
                                    }
                                    break;
                                default:
                                    PhoneType phoneType2 = (PhoneType) obj;
                                    phoneType2.getClass();
                                    debounceHandler2.getClass();
                                    function418.getClass();
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis3;
                                        function418.invoke(phoneType2);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX8);
                    Function1 function418 = (Function1) objX8;
                    boolean zY13 = gapComposer2.y(debounceHandler);
                    Function1 function419 = function33;
                    if ((i5 & 234881024) == 67108864) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    z24 = zY13 | z23;
                    objX9 = gapComposer2.x();
                    if (z24) {
                        final int i417 = 1;
                        objX9 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i418 = i417;
                                Function1 function4110 = function35;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i418) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4110.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4110.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4110.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4110.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4110.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4110.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX9);
                    } else {
                        final int i418 = 1;
                        objX9 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i419 = i418;
                                Function1 function4110 = function35;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i419) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4110.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4110.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4110.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4110.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4110.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4110.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    Function1 function4110 = (Function1) objX9;
                    boolean zY14 = gapComposer2.y(debounceHandler);
                    if ((i5 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    z26 = zY14 | z25;
                    objX10 = gapComposer2.x();
                    if (z26) {
                        final int i419 = 2;
                        objX10 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i4110 = i419;
                                Function1 function4111 = function36;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i4110) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4111.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4111.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4111.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4111.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4111.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4111.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    } else {
                        final int i4110 = 2;
                        objX10 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i4111 = i4110;
                                Function1 function4111 = function36;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i4111) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4111.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4111.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4111.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4111.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4111.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4111.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    }
                    Function1 function4111 = (Function1) objX10;
                    boolean zY15 = gapComposer2.y(debounceHandler);
                    if ((i5 & 29360128) == 8388608) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    z28 = z27 | zY15;
                    objX11 = gapComposer2.x();
                    if (z28) {
                        objX11 = new dt(debounceHandler, function34, 7);
                        gapComposer2.q(objX11);
                    } else {
                        objX11 = new dt(debounceHandler, function34, 7);
                        gapComposer2.q(objX11);
                    }
                    Function0 function513 = (Function0) objX11;
                    int i4111 = i31 << 9;
                    LVColorScheme lVColorScheme9 = lVColorScheme5;
                    GapComposer gapComposer6 = gapComposer2;
                    Function3 function514 = function42;
                    Function3 function515 = function43;
                    Composer$Companion$Empty$1 composer$Companion$Empty$7 = composer$Companion$Empty$3;
                    function45 = function39;
                    boolean z312 = z13;
                    boolean z313 = z14;
                    boolean z314 = z15;
                    boolean z315 = z17;
                    b(formFieldGenericUiModel, z20, z315, z312, z313, z314, function2, function418, function4110, function4111, function513, lVColorScheme9, gapComposer6, ((i5 >> 3) & 896) | (i4111 & 7168) | (57344 & i4111) | (458752 & i4111) | ((i5 << 3) & 3670016), i5 & 112);
                    gapComposer2 = gapComposer6;
                    if (function45 == null) {
                        gapComposer2.L(1666004926);
                        z29 = false;
                    } else {
                        z29 = false;
                        gapComposer2.L(1666004927);
                        function45.A(formFieldGenericUiModel, gapComposer2, 0);
                    }
                    gapComposer2.Z(z29);
                    function39 = function45;
                    z17 = z315;
                    z13 = z312;
                    z14 = z313;
                    z15 = z314;
                    lVColorScheme5 = lVColorScheme9;
                    i34 = i35;
                    function33 = function419;
                    composer$Companion$Empty$2 = composer$Companion$Empty$7;
                    function42 = function514;
                    function43 = function515;
                }
                Function1 function516 = function33;
                Function3 function517 = function42;
                Function3 function518 = function43;
                gapComposer2.Z(false);
                Function3 function519 = function40;
                function519.A(columnScopeInstance, gapComposer2, Integer.valueOf(((i31 >> 18) & 112) | 6));
                gapComposer2.Z(true);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Function3 function61 = function41;
                function12 = function35;
                z7 = z17;
                z11 = z14;
                function13 = function61;
                f4 = f5;
                function17 = function519;
                function16 = function39;
                gapComposer = gapComposer2;
                z8 = z13;
                z9 = z15;
                lVColorScheme2 = lVColorScheme5;
                function10 = function516;
                z10 = z16;
                modifier3 = modifier4;
                function14 = function517;
                function15 = function518;
                function18 = function36;
                function11 = function34;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                z7 = z;
                function10 = function1;
                function11 = function0;
                function12 = function3;
                z8 = z2;
                z9 = z4;
                function13 = function5;
                function14 = function6;
                function15 = function7;
                function16 = function8;
                function17 = function9;
                z10 = z5;
                gapComposer = gapComposerH;
                f4 = f3;
                modifier3 = modifier2;
                function18 = function4;
                z11 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: lv
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        DynamicFormComposableKt.a(modifier3, lVColorScheme2, formUiModel, z7, f4, function2, function10, function11, function12, function18, z8, z11, z9, function13, function14, function15, function16, function17, z10, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 3072;
        if ((i2 & 24576) == 0) {
            if ((i4 & 16) == 0) {
                f3 = f2;
                if (gapComposerH.c(f3)) {
                }
                i5 |= i41;
            } else {
                f3 = f2;
            }
            i5 |= i41;
        } else {
            f3 = f2;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) != 0) {
            if (gapComposerH.y(function2)) {
                i37 = 131072;
            } else {
                i37 = 65536;
            }
            i5 |= i37;
        }
        i6 = i4 & 64;
        if (i6 != 0) {
            i5 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            if (gapComposerH.y(function1)) {
                i7 = 1048576;
            } else {
                i7 = 524288;
            }
            i5 |= i7;
        }
        i8 = i4 & 128;
        if (i8 != 0) {
            i5 |= 12582912;
        } else if ((i2 & 12582912) == 0) {
            if (gapComposerH.y(function0)) {
                i9 = 8388608;
            } else {
                i9 = 4194304;
            }
            i5 |= i9;
        }
        modifier2 = modifierE;
        i10 = i4 & 256;
        if (i10 != 0) {
            i5 |= 100663296;
        } else if ((i2 & 100663296) == 0) {
            if (gapComposerH.y(function3)) {
                i11 = 67108864;
            } else {
                i11 = 33554432;
            }
            i5 |= i11;
        }
        i12 = i4 & 512;
        if (i12 != 0) {
            i5 |= 805306368;
        } else if ((i2 & 805306368) == 0) {
            if (gapComposerH.y(function4)) {
                i13 = PKIFailureInfo.duplicateCertReq;
            } else {
                i13 = 268435456;
            }
            i5 |= i13;
        }
        i14 = i4 & 1024;
        if (i14 != 0) {
            i15 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            if (gapComposerH.b(z2)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i15 = i3 | i16;
        } else {
            i15 = i3;
        }
        i17 = i4 & 2048;
        if (i17 != 0) {
            i15 |= 48;
        } else if ((i3 & 48) != 0) {
            i15 |= gapComposerH.b(z3) ? 32 : 16;
        }
        i18 = i15;
        i19 = i4 & 4096;
        if (i19 != 0) {
            i21 = i18 | KyberEngine.KyberPolyBytes;
        } else {
            i20 = i18;
            if ((i3 & KyberEngine.KyberPolyBytes) != 0) {
                i20 |= gapComposerH.b(z4) ? 256 : 128;
            }
            i21 = i20;
        }
        i22 = i4 & 8192;
        if (i22 != 0) {
            i23 = i21 | 3072;
        } else {
            i23 = i21 | (gapComposerH.y(function5) ? 2048 : 1024);
        }
        i24 = i4 & 16384;
        if (i24 != 0) {
            i25 = i23 | 24576;
        } else {
            i25 = i23 | (gapComposerH.y(function6) ? 16384 : 8192);
        }
        i26 = i4 & 32768;
        if (i26 != 0) {
            i25 |= ImageMetadata.EDGE_MODE;
        } else if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.y(function7)) {
                i27 = 131072;
            } else {
                i27 = 65536;
            }
            i25 |= i27;
        }
        i28 = i4 & 65536;
        if (i28 != 0) {
            i25 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            i25 |= gapComposerH.y(function8) ? 1048576 : 524288;
        }
        i29 = i4 & 131072;
        if (i29 != 0) {
            i25 |= 12582912;
        } else if ((i3 & 12582912) == 0) {
            i25 |= gapComposerH.y(function9) ? 8388608 : 4194304;
        }
        i30 = i4 & 262144;
        if (i30 != 0) {
            i25 |= 100663296;
        } else if ((i3 & 100663296) == 0) {
            i25 |= gapComposerH.b(z5) ? 67108864 : 33554432;
        }
        i31 = i25;
        if ((i5 & 306783379) == 306783378) {
            z6 = true;
        } else {
            z6 = true;
        }
        if (gapComposerH.p(i5 & 1, z6)) {
            gapComposerH.y0();
            i32 = i2 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i32 != 0) {
                if (i38 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("DynamicFormComposable-KMZiVUk");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i39 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i40 != 0) {
                    z12 = true;
                } else {
                    z12 = z;
                }
                if ((i4 & 16) != 0) {
                    f3 = LVAppDesignKitTheme.l(gapComposerH).d;
                    i5 &= -57345;
                }
                if (i6 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new bp(29);
                        gapComposerH.q(objX4);
                    }
                    function19 = (Function1) objX4;
                } else {
                    function19 = function1;
                }
                if (i8 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new rt(10);
                        gapComposerH.q(objX3);
                    }
                    function20 = (Function0) objX3;
                } else {
                    function20 = function0;
                }
                if (i10 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new iv(0);
                        gapComposerH.q(objX2);
                    }
                    function21 = (Function1) objX2;
                } else {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    function21 = function3;
                }
                if (i12 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new iv(1);
                        gapComposerH.q(objX);
                    }
                    function22 = (Function1) objX;
                } else {
                    function21 = function21;
                    function22 = function4;
                }
                if (i14 != 0) {
                    z13 = false;
                } else {
                    z13 = z2;
                }
                if (i17 != 0) {
                    z14 = false;
                } else {
                    z14 = z3;
                }
                if (i19 != 0) {
                    z15 = false;
                } else {
                    z15 = z4;
                }
                if (i22 != 0) {
                    function23 = null;
                } else {
                    function23 = function5;
                }
                if (i24 != 0) {
                    function24 = null;
                } else {
                    function24 = function6;
                }
                if (i26 != 0) {
                    function25 = null;
                } else {
                    function25 = function7;
                }
                if (i28 != 0) {
                    function26 = null;
                } else {
                    function26 = function8;
                }
                if (i29 != 0) {
                    ComposableSingletons$DynamicFormComposableKt.f57479a.getClass();
                    function27 = ComposableSingletons$DynamicFormComposableKt.f57480b;
                } else {
                    function27 = function9;
                }
                if (i30 != 0) {
                    z16 = true;
                } else {
                    z16 = z5;
                }
                function28 = function22;
                lVColorScheme4 = lVColorScheme3;
                function29 = function19;
                z17 = z12;
                function30 = function20;
                f5 = f3;
                function31 = function21;
            } else {
                if (i38 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("DynamicFormComposable-KMZiVUk");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i39 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i40 != 0) {
                    z12 = true;
                } else {
                    z12 = z;
                }
                if ((i4 & 16) != 0) {
                    f3 = LVAppDesignKitTheme.l(gapComposerH).d;
                    i5 &= -57345;
                }
                if (i6 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new bp(29);
                        gapComposerH.q(objX4);
                    }
                    function19 = (Function1) objX4;
                } else {
                    function19 = function1;
                }
                if (i8 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new rt(10);
                        gapComposerH.q(objX3);
                    }
                    function20 = (Function0) objX3;
                } else {
                    function20 = function0;
                }
                if (i10 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new iv(0);
                        gapComposerH.q(objX2);
                    }
                    function21 = (Function1) objX2;
                } else {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    function21 = function3;
                }
                if (i12 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new iv(1);
                        gapComposerH.q(objX);
                    }
                    function22 = (Function1) objX;
                } else {
                    function21 = function21;
                    function22 = function4;
                }
                if (i14 != 0) {
                    z13 = false;
                } else {
                    z13 = z2;
                }
                if (i17 != 0) {
                    z14 = false;
                } else {
                    z14 = z3;
                }
                if (i19 != 0) {
                    z15 = false;
                } else {
                    z15 = z4;
                }
                if (i22 != 0) {
                    function23 = null;
                } else {
                    function23 = function5;
                }
                if (i24 != 0) {
                    function24 = null;
                } else {
                    function24 = function6;
                }
                if (i26 != 0) {
                    function25 = null;
                } else {
                    function25 = function7;
                }
                if (i28 != 0) {
                    function26 = null;
                } else {
                    function26 = function8;
                }
                if (i29 != 0) {
                    ComposableSingletons$DynamicFormComposableKt.f57479a.getClass();
                    function27 = ComposableSingletons$DynamicFormComposableKt.f57480b;
                } else {
                    function27 = function9;
                }
                if (i30 != 0) {
                    z16 = true;
                } else {
                    z16 = z5;
                }
                function28 = function22;
                lVColorScheme4 = lVColorScheme3;
                function29 = function19;
                z17 = z12;
                function30 = function20;
                f5 = f3;
                function31 = function21;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            lVColorScheme5 = lVColorScheme4;
            objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new DebounceHandler(0L, 1, null);
                gapComposerH.q(objX5);
            }
            debounceHandler = (DebounceHandler) objX5;
            zK = gapComposerH.K(formUiModel);
            objX6 = gapComposerH.x();
            if (zK) {
                if (list3.isEmpty()) {
                    list = list3;
                    if (list instanceof Collection) {
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                    z18 = false;
                                }
                            }
                        }
                    } else {
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                    z18 = false;
                                }
                            }
                        }
                    }
                    z18 = true;
                } else {
                    z18 = false;
                }
                objX6 = Boolean.valueOf(z18);
                gapComposerH.q(objX6);
            } else {
                if (list3.isEmpty()) {
                    list = list3;
                    if (list instanceof Collection) {
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                    z18 = false;
                                }
                            }
                        }
                    } else {
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                    z18 = false;
                                }
                            }
                        }
                    }
                    z18 = true;
                } else {
                    z18 = false;
                }
                objX6 = Boolean.valueOf(z18);
                gapComposerH.q(objX6);
            }
            zBooleanValue = ((Boolean) objX6).booleanValue();
            zY = gapComposerH.y(formUiModel);
            objX7 = gapComposerH.x();
            if (zY) {
                r2 = 0;
                objX7 = new jv(formUiModel, 0);
                gapComposerH.q(objX7);
            } else {
                r2 = 0;
                objX7 = new jv(formUiModel, 0);
                gapComposerH.q(objX7);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier, r2, (Function1) objX7);
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(f5);
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(spacedAlignedF2, Alignment.Companion.n, gapComposerH, r2);
            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            function32 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function32);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            columnScopeInstance = ColumnScopeInstance.f4944a;
            if (zBooleanValue) {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposerH, 1476356324, "DynamicFormComposable-KMZiVUk"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.all_fields_mandatory_label);
                TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).m;
                i36 = WhenMappings.f57481a[lVColorScheme5.ordinal()];
                if (i36 != 1) {
                    gapComposerH.L(601825192);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                } else {
                    if (i36 == 2) {
                        throw d21.u(gapComposerH, 601822298, false);
                    }
                    gapComposerH.L(601828046);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                }
                modifier4 = dTFunctionNameModifier;
                function37 = function24;
                function38 = function25;
                function33 = function29;
                function34 = function30;
                function40 = function27;
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                function41 = function23;
                function35 = function31;
                long j5 = j3;
                function36 = function28;
                function44 = function26;
                TextKt.c(strC3, modifierM2, j5, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, 0, 0, 131064);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
            } else {
                list3 = list3;
                function33 = function29;
                function34 = function30;
                function35 = function31;
                function36 = function28;
                modifier4 = dTFunctionNameModifier;
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                function37 = function24;
                function38 = function25;
                function39 = function26;
                function40 = function27;
                gapComposer2 = gapComposerH;
                function41 = function23;
                if (z16) {
                    list2 = list3;
                    if (list2 instanceof Collection) {
                        it2 = list2.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (((FormFieldGenericUiModel) it2.next()).getF57495c()) {
                                    DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposer2, 1477095984, "DynamicFormComposable-KMZiVUk");
                                    Alignment.f8582a.getClass();
                                    Modifier modifierE3 = ModifierExtKt.e(columnScopeInstance.b(dTFunctionNameModifierI2, Alignment.Companion.p), "dropdown_supporting_text");
                                    String strC4 = StringResources_androidKt.c(gapComposer2, R.string.mylv_mandatoryfield);
                                    TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposer2).m;
                                    i33 = WhenMappings.f57481a[lVColorScheme5.ordinal()];
                                    if (i33 == 1) {
                                        gapComposer2.L(601850601);
                                        j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                                        gapComposer2.Z(false);
                                    } else {
                                        if (i33 != 2) {
                                            throw d21.u(gapComposer2, 601847708, false);
                                        }
                                        gapComposer2.L(601853487);
                                        j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.m;
                                        gapComposer2.Z(false);
                                    }
                                    function44 = function39;
                                    TextKt.c(strC4, modifierE3, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer2, 0, 0, 131064);
                                    gapComposer2 = gapComposer2;
                                    gapComposer2.Z(false);
                                }
                            }
                        }
                    } else {
                        it2 = list2.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (((FormFieldGenericUiModel) it2.next()).getF57495c()) {
                                    DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposer2, 1477095984, "DynamicFormComposable-KMZiVUk");
                                    Alignment.f8582a.getClass();
                                    Modifier modifierE4 = ModifierExtKt.e(columnScopeInstance.b(dTFunctionNameModifierI3, Alignment.Companion.p), "dropdown_supporting_text");
                                    String strC5 = StringResources_androidKt.c(gapComposer2, R.string.mylv_mandatoryfield);
                                    TextStyle textStyle5 = LVAppDesignKitTheme.n(gapComposer2).m;
                                    i33 = WhenMappings.f57481a[lVColorScheme5.ordinal()];
                                    if (i33 == 1) {
                                        gapComposer2.L(601850601);
                                        j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                                        gapComposer2.Z(false);
                                    } else {
                                        if (i33 != 2) {
                                            throw d21.u(gapComposer2, 601847708, false);
                                        }
                                        gapComposer2.L(601853487);
                                        j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.m;
                                        gapComposer2.Z(false);
                                    }
                                    function44 = function39;
                                    TextKt.c(strC5, modifierE4, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer2, 0, 0, 131064);
                                    gapComposer2 = gapComposer2;
                                    gapComposer2.Z(false);
                                }
                            }
                        }
                    }
                }
                function42 = function37;
                function43 = function38;
                gapComposer2.L(1477650791);
                gapComposer2.Z(false);
                gapComposer2.L(601857931);
                i34 = 0;
                while (it3.hasNext()) {
                    next = it3.next();
                    i35 = i34 + 1;
                    if (i34 >= 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    formFieldGenericUiModel = (FormFieldGenericUiModel) next;
                    if (function41 == null) {
                        gapComposer2.L(1664522971);
                        z19 = false;
                        gapComposer2.Z(false);
                    } else {
                        gapComposer2.L(1664522972);
                        if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                            gapComposer2.L(-183511606);
                            ((FormFieldUiModel) formFieldGenericUiModel).g = (AnnotatedString) function41.A(formFieldGenericUiModel, gapComposer2, 0);
                            z19 = false;
                            gapComposer2.Z(false);
                        } else {
                            z19 = false;
                            gapComposer2.L(-183433765);
                            gapComposer2.Z(false);
                        }
                        gapComposer2.Z(z19);
                    }
                    if (function42 == null) {
                        gapComposer2.L(1664784177);
                        gapComposer2.Z(z19);
                    } else {
                        gapComposer2.L(1664784178);
                        if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                            gapComposer2.L(583667575);
                            ((FormFieldUiModel) formFieldGenericUiModel).f57498h = (Function0) function42.A(formFieldGenericUiModel, gapComposer2, 0);
                            z19 = false;
                            gapComposer2.Z(false);
                        } else {
                            z19 = false;
                            gapComposer2.L(583755026);
                            gapComposer2.Z(false);
                        }
                        gapComposer2.Z(z19);
                    }
                    if (function43 == null) {
                        gapComposer2.L(1665034750);
                    } else {
                        gapComposer2.L(1665034751);
                        function43.A(formFieldGenericUiModel, gapComposer2, 0);
                    }
                    gapComposer2.Z(z19);
                    if (i34 == CollectionsKt.F(list3)) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean zY16 = gapComposer2.y(debounceHandler);
                    if ((i5 & 3670016) == 1048576) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    z22 = zY16 | z21;
                    objX8 = gapComposer2.x();
                    if (z22) {
                        composer$Companion$Empty$3 = composer$Companion$Empty$2;
                        if (objX8 == composer$Companion$Empty$3) {
                        }
                        Function1 function4112 = (Function1) objX8;
                        boolean zY17 = gapComposer2.y(debounceHandler);
                        Function1 function4113 = function33;
                        if ((i5 & 234881024) == 67108864) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        z24 = zY17 | z23;
                        objX9 = gapComposer2.x();
                        if (z24) {
                            final int i4112 = 1;
                            objX9 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i4113 = i4112;
                                    Function1 function4114 = function35;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i4113) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function4114.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function4114.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function4114.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function4114.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function4114.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function4114.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX9);
                        } else {
                            final int i4113 = 1;
                            objX9 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i4114 = i4113;
                                    Function1 function4114 = function35;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i4114) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function4114.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function4114.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function4114.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function4114.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function4114.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function4114.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX9);
                        }
                        Function1 function4114 = (Function1) objX9;
                        boolean zY18 = gapComposer2.y(debounceHandler);
                        if ((i5 & 1879048192) == 536870912) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        z26 = zY18 | z25;
                        objX10 = gapComposer2.x();
                        if (z26) {
                            final int i4114 = 2;
                            objX10 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i4115 = i4114;
                                    Function1 function4115 = function36;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i4115) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function4115.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function4115.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function4115.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function4115.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function4115.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function4115.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        } else {
                            final int i4115 = 2;
                            objX10 = new Function1() { // from class: kv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i4116 = i4115;
                                    Function1 function4115 = function36;
                                    DebounceHandler debounceHandler2 = debounceHandler;
                                    switch (i4116) {
                                        case 0:
                                            FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                            formSectionTypeUiModel.getClass();
                                            debounceHandler2.getClass();
                                            function4115.getClass();
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis;
                                                function4115.invoke(formSectionTypeUiModel);
                                            }
                                            break;
                                        case 1:
                                            PhoneType phoneType = (PhoneType) obj;
                                            phoneType.getClass();
                                            debounceHandler2.getClass();
                                            function4115.getClass();
                                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis2;
                                                function4115.invoke(phoneType);
                                            }
                                            break;
                                        default:
                                            PhoneType phoneType2 = (PhoneType) obj;
                                            phoneType2.getClass();
                                            debounceHandler2.getClass();
                                            function4115.getClass();
                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                            if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                                debounceHandler2.f43514b = jCurrentTimeMillis3;
                                                function4115.invoke(phoneType2);
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        }
                        Function1 function4115 = (Function1) objX10;
                        boolean zY19 = gapComposer2.y(debounceHandler);
                        if ((i5 & 29360128) == 8388608) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        z28 = z27 | zY19;
                        objX11 = gapComposer2.x();
                        if (z28) {
                            objX11 = new dt(debounceHandler, function34, 7);
                            gapComposer2.q(objX11);
                        } else {
                            objX11 = new dt(debounceHandler, function34, 7);
                            gapComposer2.q(objX11);
                        }
                        Function0 function5110 = (Function0) objX11;
                        int i4116 = i31 << 9;
                        LVColorScheme lVColorScheme10 = lVColorScheme5;
                        GapComposer gapComposer7 = gapComposer2;
                        Function3 function5111 = function42;
                        Function3 function5112 = function43;
                        Composer$Companion$Empty$1 composer$Companion$Empty$8 = composer$Companion$Empty$3;
                        function45 = function39;
                        boolean z316 = z13;
                        boolean z317 = z14;
                        boolean z318 = z15;
                        boolean z319 = z17;
                        b(formFieldGenericUiModel, z20, z319, z316, z317, z318, function2, function4112, function4114, function4115, function5110, lVColorScheme10, gapComposer7, ((i5 >> 3) & 896) | (i4116 & 7168) | (57344 & i4116) | (458752 & i4116) | ((i5 << 3) & 3670016), i5 & 112);
                        gapComposer2 = gapComposer7;
                        if (function45 == null) {
                            gapComposer2.L(1666004926);
                            z29 = false;
                        } else {
                            z29 = false;
                            gapComposer2.L(1666004927);
                            function45.A(formFieldGenericUiModel, gapComposer2, 0);
                        }
                        gapComposer2.Z(z29);
                        function39 = function45;
                        z17 = z319;
                        z13 = z316;
                        z14 = z317;
                        z15 = z318;
                        lVColorScheme5 = lVColorScheme10;
                        i34 = i35;
                        function33 = function4113;
                        composer$Companion$Empty$2 = composer$Companion$Empty$8;
                        function42 = function5111;
                        function43 = function5112;
                    } else {
                        composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    }
                    final int i4117 = 0;
                    objX8 = new Function1() { // from class: kv
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i4118 = i4117;
                            Function1 function4116 = function33;
                            DebounceHandler debounceHandler2 = debounceHandler;
                            switch (i4118) {
                                case 0:
                                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                    formSectionTypeUiModel.getClass();
                                    debounceHandler2.getClass();
                                    function4116.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis;
                                        function4116.invoke(formSectionTypeUiModel);
                                    }
                                    break;
                                case 1:
                                    PhoneType phoneType = (PhoneType) obj;
                                    phoneType.getClass();
                                    debounceHandler2.getClass();
                                    function4116.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis2;
                                        function4116.invoke(phoneType);
                                    }
                                    break;
                                default:
                                    PhoneType phoneType2 = (PhoneType) obj;
                                    phoneType2.getClass();
                                    debounceHandler2.getClass();
                                    function4116.getClass();
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis3;
                                        function4116.invoke(phoneType2);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX8);
                    Function1 function4116 = (Function1) objX8;
                    boolean zY110 = gapComposer2.y(debounceHandler);
                    Function1 function4117 = function33;
                    if ((i5 & 234881024) == 67108864) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    z24 = zY110 | z23;
                    objX9 = gapComposer2.x();
                    if (z24) {
                        final int i4118 = 1;
                        objX9 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i4119 = i4118;
                                Function1 function4118 = function35;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i4119) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4118.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4118.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4118.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4118.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4118.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4118.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX9);
                    } else {
                        final int i4119 = 1;
                        objX9 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41110 = i4119;
                                Function1 function4118 = function35;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41110) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4118.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4118.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4118.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4118.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4118.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4118.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    Function1 function4118 = (Function1) objX9;
                    boolean zY111 = gapComposer2.y(debounceHandler);
                    if ((i5 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    z26 = zY111 | z25;
                    objX10 = gapComposer2.x();
                    if (z26) {
                        final int i41110 = 2;
                        objX10 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41111 = i41110;
                                Function1 function4119 = function36;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41111) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4119.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4119.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4119.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4119.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4119.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4119.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    } else {
                        final int i41111 = 2;
                        objX10 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41112 = i41111;
                                Function1 function4119 = function36;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41112) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function4119.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function4119.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function4119.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function4119.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function4119.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function4119.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    }
                    Function1 function4119 = (Function1) objX10;
                    boolean zY112 = gapComposer2.y(debounceHandler);
                    if ((i5 & 29360128) == 8388608) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    z28 = z27 | zY112;
                    objX11 = gapComposer2.x();
                    if (z28) {
                        objX11 = new dt(debounceHandler, function34, 7);
                        gapComposer2.q(objX11);
                    } else {
                        objX11 = new dt(debounceHandler, function34, 7);
                        gapComposer2.q(objX11);
                    }
                    Function0 function5113 = (Function0) objX11;
                    int i41112 = i31 << 9;
                    LVColorScheme lVColorScheme11 = lVColorScheme5;
                    GapComposer gapComposer8 = gapComposer2;
                    Function3 function5114 = function42;
                    Function3 function5115 = function43;
                    Composer$Companion$Empty$1 composer$Companion$Empty$9 = composer$Companion$Empty$3;
                    function45 = function39;
                    boolean z3110 = z13;
                    boolean z3111 = z14;
                    boolean z3112 = z15;
                    boolean z3113 = z17;
                    b(formFieldGenericUiModel, z20, z3113, z3110, z3111, z3112, function2, function4116, function4118, function4119, function5113, lVColorScheme11, gapComposer8, ((i5 >> 3) & 896) | (i41112 & 7168) | (57344 & i41112) | (458752 & i41112) | ((i5 << 3) & 3670016), i5 & 112);
                    gapComposer2 = gapComposer8;
                    if (function45 == null) {
                        gapComposer2.L(1666004926);
                        z29 = false;
                    } else {
                        z29 = false;
                        gapComposer2.L(1666004927);
                        function45.A(formFieldGenericUiModel, gapComposer2, 0);
                    }
                    gapComposer2.Z(z29);
                    function39 = function45;
                    z17 = z3113;
                    z13 = z3110;
                    z14 = z3111;
                    z15 = z3112;
                    lVColorScheme5 = lVColorScheme11;
                    i34 = i35;
                    function33 = function4117;
                    composer$Companion$Empty$2 = composer$Companion$Empty$9;
                    function42 = function5114;
                    function43 = function5115;
                }
                Function1 function5116 = function33;
                Function3 function5117 = function42;
                Function3 function5118 = function43;
                gapComposer2.Z(false);
                Function3 function5119 = function40;
                function5119.A(columnScopeInstance, gapComposer2, Integer.valueOf(((i31 >> 18) & 112) | 6));
                gapComposer2.Z(true);
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Function3 function62 = function41;
                function12 = function35;
                z7 = z17;
                z11 = z14;
                function13 = function62;
                f4 = f5;
                function17 = function5119;
                function16 = function39;
                gapComposer = gapComposer2;
                z8 = z13;
                z9 = z15;
                lVColorScheme2 = lVColorScheme5;
                function10 = function5116;
                z10 = z16;
                modifier3 = modifier4;
                function14 = function5117;
                function15 = function5118;
                function18 = function36;
                function11 = function34;
            }
            function39 = function44;
            function42 = function37;
            function43 = function38;
            gapComposer2.L(601857931);
            i34 = 0;
            while (it3.hasNext()) {
                next = it3.next();
                i35 = i34 + 1;
                if (i34 >= 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                formFieldGenericUiModel = (FormFieldGenericUiModel) next;
                if (function41 == null) {
                    gapComposer2.L(1664522971);
                    z19 = false;
                    gapComposer2.Z(false);
                } else {
                    gapComposer2.L(1664522972);
                    if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                        gapComposer2.L(-183511606);
                        ((FormFieldUiModel) formFieldGenericUiModel).g = (AnnotatedString) function41.A(formFieldGenericUiModel, gapComposer2, 0);
                        z19 = false;
                        gapComposer2.Z(false);
                    } else {
                        z19 = false;
                        gapComposer2.L(-183433765);
                        gapComposer2.Z(false);
                    }
                    gapComposer2.Z(z19);
                }
                if (function42 == null) {
                    gapComposer2.L(1664784177);
                    gapComposer2.Z(z19);
                } else {
                    gapComposer2.L(1664784178);
                    if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                        gapComposer2.L(583667575);
                        ((FormFieldUiModel) formFieldGenericUiModel).f57498h = (Function0) function42.A(formFieldGenericUiModel, gapComposer2, 0);
                        z19 = false;
                        gapComposer2.Z(false);
                    } else {
                        z19 = false;
                        gapComposer2.L(583755026);
                        gapComposer2.Z(false);
                    }
                    gapComposer2.Z(z19);
                }
                if (function43 == null) {
                    gapComposer2.L(1665034750);
                } else {
                    gapComposer2.L(1665034751);
                    function43.A(formFieldGenericUiModel, gapComposer2, 0);
                }
                gapComposer2.Z(z19);
                if (i34 == CollectionsKt.F(list3)) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                boolean zY113 = gapComposer2.y(debounceHandler);
                if ((i5 & 3670016) == 1048576) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                z22 = zY113 | z21;
                objX8 = gapComposer2.x();
                if (z22) {
                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    if (objX8 == composer$Companion$Empty$3) {
                    }
                    Function1 function41110 = (Function1) objX8;
                    boolean zY114 = gapComposer2.y(debounceHandler);
                    Function1 function41111 = function33;
                    if ((i5 & 234881024) == 67108864) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    z24 = zY114 | z23;
                    objX9 = gapComposer2.x();
                    if (z24) {
                        final int i41113 = 1;
                        objX9 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41114 = i41113;
                                Function1 function41112 = function35;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41114) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function41112.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function41112.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function41112.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function41112.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function41112.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function41112.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX9);
                    } else {
                        final int i41114 = 1;
                        objX9 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41115 = i41114;
                                Function1 function41112 = function35;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41115) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function41112.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function41112.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function41112.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function41112.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function41112.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function41112.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX9);
                    }
                    Function1 function41112 = (Function1) objX9;
                    boolean zY115 = gapComposer2.y(debounceHandler);
                    if ((i5 & 1879048192) == 536870912) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    z26 = zY115 | z25;
                    objX10 = gapComposer2.x();
                    if (z26) {
                        final int i41115 = 2;
                        objX10 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41116 = i41115;
                                Function1 function41113 = function36;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41116) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function41113.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function41113.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function41113.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function41113.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function41113.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function41113.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    } else {
                        final int i41116 = 2;
                        objX10 = new Function1() { // from class: kv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i41117 = i41116;
                                Function1 function41113 = function36;
                                DebounceHandler debounceHandler2 = debounceHandler;
                                switch (i41117) {
                                    case 0:
                                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                        formSectionTypeUiModel.getClass();
                                        debounceHandler2.getClass();
                                        function41113.getClass();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis;
                                            function41113.invoke(formSectionTypeUiModel);
                                        }
                                        break;
                                    case 1:
                                        PhoneType phoneType = (PhoneType) obj;
                                        phoneType.getClass();
                                        debounceHandler2.getClass();
                                        function41113.getClass();
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis2;
                                            function41113.invoke(phoneType);
                                        }
                                        break;
                                    default:
                                        PhoneType phoneType2 = (PhoneType) obj;
                                        phoneType2.getClass();
                                        debounceHandler2.getClass();
                                        function41113.getClass();
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                            debounceHandler2.f43514b = jCurrentTimeMillis3;
                                            function41113.invoke(phoneType2);
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    }
                    Function1 function41113 = (Function1) objX10;
                    boolean zY116 = gapComposer2.y(debounceHandler);
                    if ((i5 & 29360128) == 8388608) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    z28 = z27 | zY116;
                    objX11 = gapComposer2.x();
                    if (z28) {
                        objX11 = new dt(debounceHandler, function34, 7);
                        gapComposer2.q(objX11);
                    } else {
                        objX11 = new dt(debounceHandler, function34, 7);
                        gapComposer2.q(objX11);
                    }
                    Function0 function51110 = (Function0) objX11;
                    int i41117 = i31 << 9;
                    LVColorScheme lVColorScheme12 = lVColorScheme5;
                    GapComposer gapComposer9 = gapComposer2;
                    Function3 function51111 = function42;
                    Function3 function51112 = function43;
                    Composer$Companion$Empty$1 composer$Companion$Empty$10 = composer$Companion$Empty$3;
                    function45 = function39;
                    boolean z3114 = z13;
                    boolean z3115 = z14;
                    boolean z3116 = z15;
                    boolean z3117 = z17;
                    b(formFieldGenericUiModel, z20, z3117, z3114, z3115, z3116, function2, function41110, function41112, function41113, function51110, lVColorScheme12, gapComposer9, ((i5 >> 3) & 896) | (i41117 & 7168) | (57344 & i41117) | (458752 & i41117) | ((i5 << 3) & 3670016), i5 & 112);
                    gapComposer2 = gapComposer9;
                    if (function45 == null) {
                        gapComposer2.L(1666004926);
                        z29 = false;
                    } else {
                        z29 = false;
                        gapComposer2.L(1666004927);
                        function45.A(formFieldGenericUiModel, gapComposer2, 0);
                    }
                    gapComposer2.Z(z29);
                    function39 = function45;
                    z17 = z3117;
                    z13 = z3114;
                    z14 = z3115;
                    z15 = z3116;
                    lVColorScheme5 = lVColorScheme12;
                    i34 = i35;
                    function33 = function41111;
                    composer$Companion$Empty$2 = composer$Companion$Empty$10;
                    function42 = function51111;
                    function43 = function51112;
                } else {
                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                }
                final int i41118 = 0;
                objX8 = new Function1() { // from class: kv
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i41119 = i41118;
                        Function1 function41114 = function33;
                        DebounceHandler debounceHandler2 = debounceHandler;
                        switch (i41119) {
                            case 0:
                                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                formSectionTypeUiModel.getClass();
                                debounceHandler2.getClass();
                                function41114.getClass();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                    debounceHandler2.f43514b = jCurrentTimeMillis;
                                    function41114.invoke(formSectionTypeUiModel);
                                }
                                break;
                            case 1:
                                PhoneType phoneType = (PhoneType) obj;
                                phoneType.getClass();
                                debounceHandler2.getClass();
                                function41114.getClass();
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                    debounceHandler2.f43514b = jCurrentTimeMillis2;
                                    function41114.invoke(phoneType);
                                }
                                break;
                            default:
                                PhoneType phoneType2 = (PhoneType) obj;
                                phoneType2.getClass();
                                debounceHandler2.getClass();
                                function41114.getClass();
                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                    debounceHandler2.f43514b = jCurrentTimeMillis3;
                                    function41114.invoke(phoneType2);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer2.q(objX8);
                Function1 function41114 = (Function1) objX8;
                boolean zY117 = gapComposer2.y(debounceHandler);
                Function1 function41115 = function33;
                if ((i5 & 234881024) == 67108864) {
                    z23 = true;
                } else {
                    z23 = false;
                }
                z24 = zY117 | z23;
                objX9 = gapComposer2.x();
                if (z24) {
                    final int i41119 = 1;
                    objX9 = new Function1() { // from class: kv
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i411110 = i41119;
                            Function1 function41116 = function35;
                            DebounceHandler debounceHandler2 = debounceHandler;
                            switch (i411110) {
                                case 0:
                                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                    formSectionTypeUiModel.getClass();
                                    debounceHandler2.getClass();
                                    function41116.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis;
                                        function41116.invoke(formSectionTypeUiModel);
                                    }
                                    break;
                                case 1:
                                    PhoneType phoneType = (PhoneType) obj;
                                    phoneType.getClass();
                                    debounceHandler2.getClass();
                                    function41116.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis2;
                                        function41116.invoke(phoneType);
                                    }
                                    break;
                                default:
                                    PhoneType phoneType2 = (PhoneType) obj;
                                    phoneType2.getClass();
                                    debounceHandler2.getClass();
                                    function41116.getClass();
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis3;
                                        function41116.invoke(phoneType2);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX9);
                } else {
                    final int i411110 = 1;
                    objX9 = new Function1() { // from class: kv
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i411111 = i411110;
                            Function1 function41116 = function35;
                            DebounceHandler debounceHandler2 = debounceHandler;
                            switch (i411111) {
                                case 0:
                                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                    formSectionTypeUiModel.getClass();
                                    debounceHandler2.getClass();
                                    function41116.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis;
                                        function41116.invoke(formSectionTypeUiModel);
                                    }
                                    break;
                                case 1:
                                    PhoneType phoneType = (PhoneType) obj;
                                    phoneType.getClass();
                                    debounceHandler2.getClass();
                                    function41116.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis2;
                                        function41116.invoke(phoneType);
                                    }
                                    break;
                                default:
                                    PhoneType phoneType2 = (PhoneType) obj;
                                    phoneType2.getClass();
                                    debounceHandler2.getClass();
                                    function41116.getClass();
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis3;
                                        function41116.invoke(phoneType2);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX9);
                }
                Function1 function41116 = (Function1) objX9;
                boolean zY118 = gapComposer2.y(debounceHandler);
                if ((i5 & 1879048192) == 536870912) {
                    z25 = true;
                } else {
                    z25 = false;
                }
                z26 = zY118 | z25;
                objX10 = gapComposer2.x();
                if (z26) {
                    final int i411111 = 2;
                    objX10 = new Function1() { // from class: kv
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i411112 = i411111;
                            Function1 function41117 = function36;
                            DebounceHandler debounceHandler2 = debounceHandler;
                            switch (i411112) {
                                case 0:
                                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                    formSectionTypeUiModel.getClass();
                                    debounceHandler2.getClass();
                                    function41117.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis;
                                        function41117.invoke(formSectionTypeUiModel);
                                    }
                                    break;
                                case 1:
                                    PhoneType phoneType = (PhoneType) obj;
                                    phoneType.getClass();
                                    debounceHandler2.getClass();
                                    function41117.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis2;
                                        function41117.invoke(phoneType);
                                    }
                                    break;
                                default:
                                    PhoneType phoneType2 = (PhoneType) obj;
                                    phoneType2.getClass();
                                    debounceHandler2.getClass();
                                    function41117.getClass();
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis3;
                                        function41117.invoke(phoneType2);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX10);
                } else {
                    final int i411112 = 2;
                    objX10 = new Function1() { // from class: kv
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i411113 = i411112;
                            Function1 function41117 = function36;
                            DebounceHandler debounceHandler2 = debounceHandler;
                            switch (i411113) {
                                case 0:
                                    FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                                    formSectionTypeUiModel.getClass();
                                    debounceHandler2.getClass();
                                    function41117.getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis;
                                        function41117.invoke(formSectionTypeUiModel);
                                    }
                                    break;
                                case 1:
                                    PhoneType phoneType = (PhoneType) obj;
                                    phoneType.getClass();
                                    debounceHandler2.getClass();
                                    function41117.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis2;
                                        function41117.invoke(phoneType);
                                    }
                                    break;
                                default:
                                    PhoneType phoneType2 = (PhoneType) obj;
                                    phoneType2.getClass();
                                    debounceHandler2.getClass();
                                    function41117.getClass();
                                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                                    if (jCurrentTimeMillis3 - debounceHandler2.f43514b > debounceHandler2.f43513a) {
                                        debounceHandler2.f43514b = jCurrentTimeMillis3;
                                        function41117.invoke(phoneType2);
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX10);
                }
                Function1 function41117 = (Function1) objX10;
                boolean zY119 = gapComposer2.y(debounceHandler);
                if ((i5 & 29360128) == 8388608) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                z28 = z27 | zY119;
                objX11 = gapComposer2.x();
                if (z28) {
                    objX11 = new dt(debounceHandler, function34, 7);
                    gapComposer2.q(objX11);
                } else {
                    objX11 = new dt(debounceHandler, function34, 7);
                    gapComposer2.q(objX11);
                }
                Function0 function51113 = (Function0) objX11;
                int i411113 = i31 << 9;
                LVColorScheme lVColorScheme13 = lVColorScheme5;
                GapComposer gapComposer10 = gapComposer2;
                Function3 function51114 = function42;
                Function3 function51115 = function43;
                Composer$Companion$Empty$1 composer$Companion$Empty$11 = composer$Companion$Empty$3;
                function45 = function39;
                boolean z3118 = z13;
                boolean z3119 = z14;
                boolean z31110 = z15;
                boolean z31111 = z17;
                b(formFieldGenericUiModel, z20, z31111, z3118, z3119, z31110, function2, function41114, function41116, function41117, function51113, lVColorScheme13, gapComposer10, ((i5 >> 3) & 896) | (i411113 & 7168) | (57344 & i411113) | (458752 & i411113) | ((i5 << 3) & 3670016), i5 & 112);
                gapComposer2 = gapComposer10;
                if (function45 == null) {
                    gapComposer2.L(1666004926);
                    z29 = false;
                } else {
                    z29 = false;
                    gapComposer2.L(1666004927);
                    function45.A(formFieldGenericUiModel, gapComposer2, 0);
                }
                gapComposer2.Z(z29);
                function39 = function45;
                z17 = z31111;
                z13 = z3118;
                z14 = z3119;
                z15 = z31110;
                lVColorScheme5 = lVColorScheme13;
                i34 = i35;
                function33 = function41115;
                composer$Companion$Empty$2 = composer$Companion$Empty$11;
                function42 = function51114;
                function43 = function51115;
            }
            Function1 function51116 = function33;
            Function3 function51117 = function42;
            Function3 function51118 = function43;
            gapComposer2.Z(false);
            Function3 function51119 = function40;
            function51119.A(columnScopeInstance, gapComposer2, Integer.valueOf(((i31 >> 18) & 112) | 6));
            gapComposer2.Z(true);
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            Function3 function63 = function41;
            function12 = function35;
            z7 = z17;
            z11 = z14;
            function13 = function63;
            f4 = f5;
            function17 = function51119;
            function16 = function39;
            gapComposer = gapComposer2;
            z8 = z13;
            z9 = z15;
            lVColorScheme2 = lVColorScheme5;
            function10 = function51116;
            z10 = z16;
            modifier3 = modifier4;
            function14 = function51117;
            function15 = function51118;
            function18 = function36;
            function11 = function34;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            z7 = z;
            function10 = function1;
            function11 = function0;
            function12 = function3;
            z8 = z2;
            z9 = z4;
            function13 = function5;
            function14 = function6;
            function15 = function7;
            function16 = function8;
            function17 = function9;
            z10 = z5;
            gapComposer = gapComposerH;
            f4 = f3;
            modifier3 = modifier2;
            function18 = function4;
            z11 = z3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: lv
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    DynamicFormComposableKt.a(modifier3, lVColorScheme2, formUiModel, z7, f4, function2, function10, function11, function12, function18, z8, z11, z9, function13, function14, function15, function16, function17, z10, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final FormFieldGenericUiModel formFieldGenericUiModel, final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final Function2 function2, final Function1 function1, final Function1 function3, final Function1 function4, final Function0 function0, final LVColorScheme lVColorScheme, Composer composer, final int i2, final int i3) {
        int i4;
        boolean z6;
        int i5;
        boolean z7;
        GapComposer gapComposerH = composer.h(-164293473);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(formFieldGenericUiModel) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            z6 = z3;
            i4 |= gapComposerH.b(z6) ? 2048 : 1024;
        } else {
            z6 = z3;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.b(z4) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.b(z5) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                gapComposerH.L(1796537208);
                int i6 = i4 & 14;
                boolean z8 = ((i4 & 3670016) == 1048576) | (i6 == 4);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z8 || objX == composer$Companion$Empty$1) {
                    objX = new vg(function2, formFieldGenericUiModel, 29);
                    gapComposerH.q(objX);
                }
                Function1 function5 = (Function1) objX;
                boolean z9 = ((i4 & 29360128) == 8388608) | (i6 == 4);
                Object objX2 = gapComposerH.x();
                if (z9 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new gv(function1, formFieldGenericUiModel, 0);
                    gapComposerH.q(objX2);
                }
                Function1 function6 = (Function1) objX2;
                ImeAction.f10785b.getClass();
                int i7 = !z ? ImeAction.f10790i : ImeAction.f10791j;
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) formFieldGenericUiModel;
                FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModel.f57496e;
                if (formFieldTypeUiModel instanceof FormFieldTypeUiModel.EnumBasedFormField) {
                    gapComposerH.L(1027794697);
                    z7 = false;
                    EnumBasedFormFieldKt.a(null, formFieldUiModel, (FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel, z2, function5, function6, lVColorScheme, gapComposerH, ((i4 << 3) & 7280) | ((i5 << 15) & 3670016), 1);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    z7 = false;
                    if (formFieldTypeUiModel instanceof FormFieldFreeformUiModel) {
                        gapComposerH.L(1027808607);
                        FormSectionTypeUiModel formSectionTypeUiModel = formFieldUiModel.d;
                        formSectionTypeUiModel.getClass();
                        if (formSectionTypeUiModel == FormSectionTypeUiModel.CONFIRM_PASSWORD || formSectionTypeUiModel == FormSectionTypeUiModel.NEW_PASSWORD || formSectionTypeUiModel == FormSectionTypeUiModel.PASSWORD) {
                            gapComposerH.L(1797336202);
                            FormFieldFreeformUiModel formFieldFreeformUiModel = (FormFieldFreeformUiModel) formFieldTypeUiModel;
                            int i8 = i5 << 21;
                            FormFieldPasswordKt.a(null, formFieldUiModel, formFieldFreeformUiModel, z2, new KeyboardOptions(0, (Boolean) null, formFieldFreeformUiModel.f57516c, i7, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null), function5, function6, function0, lVColorScheme, gapComposerH, ((i4 << 3) & 7280) | (i8 & 29360128) | (i8 & 234881024));
                            gapComposerH = gapComposerH;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(1798049450);
                            FormFieldFreeformUiModel formFieldFreeformUiModel2 = (FormFieldFreeformUiModel) formFieldTypeUiModel;
                            int i9 = i5 << 21;
                            FormFieldFreeformKt.a(null, formFieldUiModel, formFieldFreeformUiModel2, z2, new KeyboardOptions(0, (Boolean) null, formFieldFreeformUiModel2.f57516c, i7, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null), function5, function6, function0, lVColorScheme, gapComposerH, ((i4 << 3) & 7280) | (i9 & 29360128) | (i9 & 234881024), 1);
                            gapComposerH = gapComposerH;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else if (formFieldTypeUiModel instanceof FormFieldBooleanUiModel) {
                        gapComposerH.L(1027856047);
                        FormFieldBooleanKt.a(null, formFieldUiModel, (FormFieldBooleanUiModel) formFieldTypeUiModel, z2, function5, lVColorScheme, gapComposerH, ((i4 << 3) & 7280) | ((i5 << 12) & ImageMetadata.JPEG_GPS_COORDINATES));
                        gapComposerH.Z(false);
                    } else {
                        if (!(formFieldTypeUiModel instanceof FormFieldReadOnlyUiModel)) {
                            throw d21.u(gapComposerH, 1027794296, false);
                        }
                        gapComposerH.L(1027866388);
                        int i10 = i4 << 3;
                        FormFieldReadOnlyKt.a(null, formFieldUiModel, (FormFieldReadOnlyUiModel) formFieldTypeUiModel, z2, function1, lVColorScheme, z5, gapComposerH, ((i4 >> 9) & 57344) | (i10 & 7280) | ((i5 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | (i10 & 3670016));
                        gapComposerH.Z(false);
                    }
                }
                gapComposerH.Z(z7);
            } else {
                if (!(formFieldGenericUiModel instanceof FormFieldPhoneUiModel)) {
                    throw d21.u(gapComposerH, 1027783118, false);
                }
                gapComposerH.L(1799491229);
                int i11 = i4 >> 3;
                int i12 = i5 << 24;
                FormFieldPhoneKt.a((FormFieldPhoneUiModel) formFieldGenericUiModel, z, z6, z4, z2, function3, function2, function4, function0, lVColorScheme, gapComposerH, ((i4 >> 6) & 29360128) | (i4 & 126) | (i11 & 896) | (i11 & 7168) | ((i4 << 6) & 57344) | ((i4 >> 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i4 & 3670016) | (i12 & 234881024) | (i12 & 1879048192));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: hv
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    DynamicFormComposableKt.b(formFieldGenericUiModel, z, z2, z3, z4, z5, function2, function1, function3, function4, function0, lVColorScheme, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
