package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import defpackage.bp;
import defpackage.iq;
import defpackage.j6;
import defpackage.ll0;
import defpackage.nk;
import defpackage.q8;
import defpackage.tr;
import defpackage.u3;
import defpackage.xj;
import defpackage.xo0;
import defpackage.yh;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/text/input/TextFieldValue;", "text", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DateInputKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PaddingValuesImpl f6732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6733b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6732a = PaddingKt.e(24.0f, 10.0f, 24.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
        f6733b = 16.0f;
    }

    public static final void a(Long l, Function1 function1, CalendarModel calendarModel, IntRange intRange, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, FocusRequester focusRequester, Composer composer, int i2) {
        DateInputFormat dateInputFormat;
        GapComposer gapComposerH = composer.h(-432341251);
        int i3 = i2 | (gapComposerH.K(l) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(calendarModel) ? 256 : 128) | (gapComposerH.y(intRange) ? 2048 : 1024) | (gapComposerH.K(datePickerFormatter) ? 16384 : 8192) | (gapComposerH.K(selectableDates) ? 131072 : 65536) | (gapComposerH.K(datePickerColors) ? 1048576 : 524288) | (gapComposerH.K(focusRequester) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(calendarModel.f7587a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = calendarModel.b(calendarModel.f7587a);
                gapComposerH.q(objX);
            }
            DateInputFormat dateInputFormat2 = (DateInputFormat) objX;
            int i4 = Strings.f7646a;
            String strA = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_invalid_for_pattern);
            String strA2 = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_invalid_year_range);
            String strA3 = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_invalid_not_allowed);
            boolean zK2 = gapComposerH.K(dateInputFormat2) | ((i3 & 57344) == 16384);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                dateInputFormat = dateInputFormat2;
                DateInputValidator dateInputValidator = new DateInputValidator(intRange, selectableDates, dateInputFormat, datePickerFormatter, strA, strA2, strA3, "");
                gapComposerH.q(dateInputValidator);
                objX2 = dateInputValidator;
            } else {
                dateInputFormat = dateInputFormat2;
            }
            DateInputValidator dateInputValidator2 = (DateInputValidator) objX2;
            final String upperCase = dateInputFormat.f7598a.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            final String strA4 = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_label);
            Modifier modifierH = PaddingKt.h(tr.d("DateInputContent", 1.0f), f6732a);
            InputIdentifier.f7008a.getClass();
            dateInputValidator2.f6750i = l;
            int i5 = i3 << 3;
            b(modifierH, l, function1, calendarModel, ComposableLambdaKt.b(-752164549, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        String str = strA4;
                        boolean zK3 = composer2.K(str);
                        String str2 = upperCase;
                        boolean zK4 = zK3 | composer2.K(str2);
                        Object objX3 = composer2.x();
                        if (zK4 || objX3 == Composer.Companion.f7939a) {
                            objX3 = new u3(strA4, str2, 2);
                            composer2.q(objX3);
                        }
                        TextKt.c(str, SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX3), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262140);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), ComposableLambdaKt.b(-1179434278, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputContent$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Object objX3 = composer2.x();
                        if (objX3 == Composer.Companion.f7939a) {
                            objX3 = new bp(9);
                            composer2.q(objX3);
                        }
                        TextKt.c(upperCase, SemanticsModifierKt.a(Modifier.Companion.f8607b, (Function1) objX3), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262140);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), dateInputValidator2, dateInputFormat, calendarModel.f7587a, datePickerColors, focusRequester, gapComposerH, (i5 & 112) | 1794054 | (i5 & 896) | (i5 & 7168), (i3 >> 18) & 126);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(l, function1, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors, focusRequester, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier modifier, Long l, Function1 function1, CalendarModel calendarModel, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, DateInputValidator dateInputValidator, DateInputFormat dateInputFormat, Locale locale, DatePickerColors datePickerColors, FocusRequester focusRequester, Composer composer, int i2, int i3) {
        int i4;
        Function1 function2;
        int i5;
        GapComposer gapComposer;
        Modifier modifier2;
        int i6;
        int i7;
        CalendarModel calendarModel2;
        DateInputFormat dateInputFormat2;
        Object dateInputKt$DateInputTextField$5$1;
        Modifier modifierE = modifier;
        Long l2 = l;
        CalendarModel calendarModel3 = calendarModel;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DateInputTextField-xJ3Ic0Y");
        }
        GapComposer gapComposerH = composer.h(1456309913);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(l2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function2 = function1;
            i4 |= gapComposerH.y(function2) ? 256 : 128;
        } else {
            function2 = function1;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(calendarModel3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl2) ? 131072 : 65536;
        }
        Modifier modifier3 = modifierE;
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.d(0) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.K(dateInputValidator) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.K(dateInputFormat) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(locale) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.K(datePickerColors) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(focusRequester) ? 32 : 16;
        }
        int i8 = i5;
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i8 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object[] objArr = new Object[0];
            TextFieldValue.d.getClass();
            SaverKt$Saver$1 saverKt$Saver$1 = TextFieldValue.f10839e;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new iq(21);
                gapComposerH.q(objX);
            }
            Function0 function0 = (Function0) objX;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, 0);
            saverKt$Saver$1.getClass();
            MutableState mutableState = (MutableState) RememberSaveableKt.c(objArrCopyOf, new SaverKt$Saver$1(new ll0(saverKt$Saver$1, 7), new xo0(saverKt$Saver$1, 7)), function0, gapComposerH, 3456, 0);
            Object[] objArr2 = {(TextFieldValue) mutableState.getF10755b()};
            int i9 = 29360128 & i4;
            int i10 = 234881024 & i4;
            int i11 = i4 & 3670016;
            boolean zK = (i9 == 8388608) | gapComposerH.K(mutableState) | gapComposerH.y(calendarModel3) | (i10 == 67108864) | gapComposerH.y(locale) | (i11 == 1048576);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                i6 = i9;
                i7 = 0;
                objX2 = new yh(dateInputValidator, calendarModel3, dateInputFormat, locale, mutableState, 3);
                calendarModel3 = calendarModel3;
                mutableState = mutableState;
                gapComposerH.q(objX2);
            } else {
                i6 = i9;
                i7 = 0;
            }
            final MutableState mutableState2 = (MutableState) RememberSaveableKt.d(objArr2, (Function0) objX2, gapComposerH, i7);
            boolean zW = StringsKt.w((CharSequence) mutableState2.getF10755b());
            float f2 = f6733b;
            if (!zW) {
                int i12 = TextFieldDefaults.f7372a;
                PaddingValuesImpl paddingValuesImplA = TextFieldDefaults.a();
                float f3 = paddingValuesImplA.d + paddingValuesImplA.f5031b;
                Dp.Companion companion = Dp.f11004c;
                f2 -= f3;
            }
            float f4 = f2;
            TextFieldValue textFieldValue = (TextFieldValue) mutableState.getF10755b();
            int i13 = (((i10 == 67108864 ? 1 : i7) | (gapComposerH.K(mutableState) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.K(mutableState2) ? 1 : 0);
            int i14 = i4;
            int i15 = (((((i14 & 896) == 256 ? 1 : 0) | i13) | (gapComposerH.y(calendarModel3) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.y(locale) ? 1 : 0) | (i6 == 8388608 ? 1 : 0) | (i11 == 1048576 ? 1 : 0);
            Object objX3 = gapComposerH.x();
            if (i15 != 0 || objX3 == composer$Companion$Empty$1) {
                Function1 function3 = function2;
                CalendarModel calendarModel4 = calendarModel3;
                MutableState mutableState3 = mutableState;
                objX3 = new nk(dateInputFormat, mutableState2, function3, calendarModel4, locale, dateInputValidator, mutableState3);
                calendarModel2 = calendarModel4;
                mutableState = mutableState3;
                dateInputFormat2 = dateInputFormat;
                gapComposerH.q(objX3);
            } else {
                dateInputFormat2 = dateInputFormat;
                calendarModel2 = calendarModel3;
            }
            Function1 function4 = (Function1) objX3;
            MutableState mutableState4 = mutableState;
            Modifier modifierM = PaddingKt.m(modifier3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, 7);
            modifier2 = modifier3;
            boolean zK2 = gapComposerH.K(mutableState2);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new j6(22, mutableState2);
                gapComposerH.q(objX4);
            }
            Modifier modifierO = SemanticsModifierKt.b(modifierM, false, (Function1) objX4).o(focusRequester != null ? FocusRequesterModifierKt.a(new DTFunctionNameModifier("DateInputTextField-xJ3Ic0Y"), focusRequester) : new DTFunctionNameModifier("DateInputTextField-xJ3Ic0Y"));
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-357881838, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        MutableState mutableState5 = mutableState2;
                        if (StringsKt.w((CharSequence) mutableState5.getF10755b())) {
                            composer2.L(-1548950640);
                        } else {
                            composer2.L(-327061465);
                            TextKt.c((String) mutableState5.getF10755b(), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                            composer2 = composer2;
                        }
                        composer2.F();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            boolean z = !StringsKt.w((CharSequence) mutableState2.getF10755b());
            DateVisualTransformation dateVisualTransformation = new DateVisualTransformation(dateInputFormat2);
            Boolean bool = Boolean.FALSE;
            KeyboardType.f10809b.getClass();
            int i16 = KeyboardType.f10811e;
            ImeAction.f10785b.getClass();
            OutlinedTextFieldKt.a(textFieldValue, function4, modifierO, false, null, composableLambdaImpl, composableLambdaImpl2, composableLambdaImplB, z, dateVisualTransformation, new KeyboardOptions(0, bool, i16, ImeAction.f10791j, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 113, (DefaultConstructorMarker) null), null, true, 0, 0, null, datePickerColors.y, gapComposerH, (i14 << 6) & 33030144);
            gapComposer = gapComposerH;
            Unit unit = Unit.f71739a;
            Object[] objArr3 = (i8 & 112) == 32;
            Object objX5 = gapComposer.x();
            if (objArr3 != false || objX5 == composer$Companion$Empty$1) {
                objX5 = new DateInputKt$DateInputTextField$4$1(focusRequester, null);
                gapComposer.q(objX5);
            }
            EffectsKt.e(gapComposer, unit, (Function2) objX5);
            boolean zY = ((i14 & 112) == 32) | gapComposer.y(calendarModel2) | (i10 == 67108864) | gapComposer.y(locale) | gapComposer.K(mutableState4);
            Object objX6 = gapComposer.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                dateInputKt$DateInputTextField$5$1 = new DateInputKt$DateInputTextField$5$1(l, calendarModel2, dateInputFormat2, locale, mutableState4, null);
                l2 = l;
                gapComposer.q(dateInputKt$DateInputTextField$5$1);
            } else {
                dateInputKt$DateInputTextField$5$1 = objX6;
                l2 = l;
            }
            EffectsKt.e(gapComposer, l2, (Function2) dateInputKt$DateInputTextField$5$1);
        } else {
            gapComposer = gapComposerH;
            modifier2 = modifier3;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xj(modifier2, l2, function1, calendarModel, composableLambdaImpl, composableLambdaImpl2, dateInputValidator, dateInputFormat, locale, datePickerColors, focusRequester, i2, i3);
        }
    }
}
