package com.vuitton.android.presentation.screen.certificates.components;

import android.content.Context;
import android.util.Patterns;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.compose.KeyboardState;
import com.vuitton.android.presentation.compose.KeyboardStateKt;
import com.vuitton.android.presentation.compose.components.LVDialogListPickerKt;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.helper.PhoneNumberHelper;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFormFieldCustom;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFormFieldPhone;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFormFieldText;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFormFieldType;
import com.vuitton.android.presentation.screen.certificates.model.CompareTo;
import com.vuitton.android.presentation.screen.certificates.model.Email;
import com.vuitton.android.presentation.screen.certificates.model.PhoneNumber;
import com.vuitton.android.presentation.screen.certificates.model.Required;
import com.vuitton.android.presentation.screen.certificates.model.Validator;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.ck;
import defpackage.g2;
import defpackage.kl;
import defpackage.tr;
import defpackage.v1;
import defpackage.v40;
import defpackage.vg;
import defpackage.we;
import defpackage.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0013Bo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u001c²\u0006\f\u0010\u0015\u001a\u00020\u00148\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00168\n@\nX\u008a\u008e\u0002²\u0006\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\b8\n@\nX\u008a\u008e\u0002²\u0006\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\b8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u00198\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;", "", "", "name", "label", "value", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;", "formFieldType", "", "Lcom/vuitton/android/presentation/screen/certificates/model/Validator;", "validators", "Landroidx/compose/ui/text/input/ImeAction;", "imeAction", "automationTag", "Lkotlin/Function1;", "", "onValueChanged", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "Lcom/vuitton/android/presentation/compose/KeyboardState;", "keyboardState", "Lcom/vuitton/foundation/model/domain/model/profile/Country;", "selectedCountry", "countryList", "Lcom/vuitton/android/presentation/compose/components/ListPickerItem;", "dropdownList", "currentCountryItemSelected", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateFormField {
    public static final Regex l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CertificateFormFieldType f55662c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f55663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55664f;
    public final Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f55665h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f55666i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableState f55667j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableState f55668k;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$Companion;", "", "Lkotlin/text/Regex;", "onlyDigitRegex", "Lkotlin/text/Regex;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        l = new Regex("^\\d+$");
    }

    public CertificateFormField(String str, String str2, String str3, CertificateFormFieldType certificateFormFieldType, List list, int i2, String str4, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        certificateFormFieldType.getClass();
        list.getClass();
        this.f55660a = str;
        this.f55661b = str2;
        this.f55662c = certificateFormFieldType;
        this.d = list;
        this.f55663e = i2;
        this.f55664f = str4;
        this.g = function1;
        this.f55665h = SnapshotStateKt.g(str3);
        this.f55666i = SnapshotStateKt.g("");
        this.f55667j = SnapshotStateKt.g(null);
        this.f55668k = SnapshotStateKt.g(Boolean.FALSE);
    }

    public final void a(InAppDispatch inAppDispatch, Function1 function1, Composer composer, int i2) {
        int i3;
        inAppDispatch.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-346087487);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(this) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CertificateFormFieldType certificateFormFieldType = this.f55662c;
            if (certificateFormFieldType instanceof CertificateFormFieldText) {
                gapComposerH.L(-1877587523);
                d(function1, gapComposerH, (i3 >> 3) & 126);
                gapComposerH.Z(false);
            } else if (certificateFormFieldType instanceof CertificateFormFieldPhone) {
                gapComposerH.L(-1877585165);
                b(inAppDispatch, function1, gapComposerH, i3 & 1022);
                gapComposerH.Z(false);
            } else if (certificateFormFieldType instanceof CertificateFormFieldCustom) {
                gapComposerH.L(-1877581335);
                ((CertificateFormFieldCustom) certificateFormFieldType).f55837a.invoke(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1924538369);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kl(this, inAppDispatch, function1, i2, 0);
        }
    }

    public final void b(InAppDispatch inAppDispatch, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(591191068);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(this) ? 256 : 128;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("PhoneNumberContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(EmptyList.f71768b);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(EmptyList.f71768b);
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(null);
                gapComposerH.q(objX4);
            }
            MutableState mutableState4 = (MutableState) objX4;
            Boolean bool = Boolean.TRUE;
            boolean zY = gapComposerH.y(this) | gapComposerH.y(context) | gapComposerH.y(inAppDispatch);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                CertificateFormField$PhoneNumberContent$1$1$1 certificateFormField$PhoneNumberContent$1$1$1 = new CertificateFormField$PhoneNumberContent$1$1$1(this, context, inAppDispatch, mutableState2, mutableState, mutableState3, mutableState4, null);
                mutableState2 = mutableState2;
                gapComposerH.q(certificateFormField$PhoneNumberContent$1$1$1);
                objX5 = certificateFormField$PhoneNumberContent$1$1$1;
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX5);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new Dp(111.0f);
                gapComposerH.q(objX6);
            }
            Modifier modifierS = SizeKt.s(new DTFunctionNameModifier("PhoneNumberContent"), ((Dp) objX6).f11006b);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.profile_call_sign);
            List list = (List) mutableState3.getF10755b();
            ListPickerItem listPickerItem = (ListPickerItem) mutableState4.getF10755b();
            boolean zY2 = gapComposerH.y(this);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                z zVar = new z(this, mutableState4, mutableState2, mutableState, 19);
                gapComposerH.q(zVar);
                objX7 = zVar;
            }
            LVDialogListPickerKt.a(modifierS, strC, listPickerItem, list, false, false, (Function2) objX7, null, gapComposerH, 6, 176);
            gapComposer = gapComposerH;
            SpacerKt.a(gapComposer, SizeKt.s(new DTFunctionNameModifier("PhoneNumberContent"), LVAppDesignKitTheme.l(gapComposer).f48416e));
            c(SizeKt.v(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("PhoneNumberContent"), 1.0f, true), null, 3), function1, gapComposer, i4 & 1008);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kl(this, inAppDispatch, function1, i2, 1);
        }
    }

    public final void c(Modifier modifier, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PhoneNumberTextField");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(735837343);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(this) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            int i4 = i3 & 112;
            boolean zY = gapComposerH.y(this) | (i4 == 32);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new CertificateFormField$PhoneNumberTextField$1$1(mutableInteractionSource, this, function1, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX2);
            Modifier modifierF = ModifierExtKt.f(modifier2, this.f55664f);
            String strF = f();
            if (strF == null) {
                strF = "";
            }
            String strC = StringResources_androidKt.c(gapComposerH, R.string.profile_phone_number);
            String str = (String) ((SnapshotMutableStateImpl) this.f55666i).getF10755b();
            String str2 = strF;
            boolean zE = e();
            KeyboardType.f10809b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, KeyboardType.f10811e, this.f55663e, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
            boolean zY2 = gapComposerH.y(this) | (i4 == 32);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new vg(this, function1, 8);
                gapComposerH.q(objX3);
            }
            gapComposer = gapComposerH;
            LVTextFieldKt.a(str2, (Function1) objX3, modifierF, null, false, strC, zE, str, null, keyboardOptions, null, null, null, null, false, gapComposer, 0, 0, 32024);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 6, this, modifier2, function1);
        }
    }

    public final void d(Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(617975640);
        int i4 = 2;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function1) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(this) ? 32 : 16;
        }
        int i5 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateA = KeyboardStateKt.a(gapComposerH);
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            boolean zY = gapComposerH.y(this) | ((i3 & 14) == 4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new CertificateFormField$TextContent$1$1(mutableInteractionSource, this, function1, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX2);
            Modifier modifierF = ModifierExtKt.f(PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("TextContent"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), this.f55664f);
            String strF = f();
            if (strF == null) {
                strF = "";
            }
            String str = (String) ((SnapshotMutableStateImpl) this.f55666i).getF10755b();
            boolean zE = e();
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, 0, this.f55663e, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 119, (DefaultConstructorMarker) null);
            boolean zY2 = gapComposerH.y(focusManager);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new we(focusManager, i4);
                gapComposerH.q(objX3);
            }
            Function1 function2 = (Function1) objX3;
            boolean zY3 = gapComposerH.y(focusManager);
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new we(focusManager, 3);
                gapComposerH.q(objX4);
            }
            KeyboardActions keyboardActions = new KeyboardActions(function2, null, (Function1) objX4, null, null, null, 58, null);
            boolean zY4 = gapComposerH.y(this);
            Object objX5 = gapComposerH.x();
            if (zY4 || objX5 == composer$Companion$Empty$1) {
                objX5 = new ck(this, i5);
                gapComposerH.q(objX5);
            }
            gapComposer = gapComposerH;
            LVTextFieldKt.a(strF, (Function1) objX5, modifierF, null, false, this.f55661b, zE, str, null, keyboardOptions, keyboardActions, mutableInteractionSource, null, null, false, gapComposer, 0, 48, 28952);
            if (((KeyboardState) mutableStateA.getF10755b()) == KeyboardState.Closed) {
                function1.invoke(Boolean.valueOf(g()));
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(this, function1, i2, 7);
        }
    }

    public final boolean e() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f55668k).getF10755b()).booleanValue();
    }

    public final String f() {
        return (String) ((SnapshotMutableStateImpl) this.f55665h).getF10755b();
    }

    public final boolean g() {
        String str;
        List list = this.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        boolean z = false;
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                if (!arrayList.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (!((Boolean) it2.next()).booleanValue()) {
                            return false;
                        }
                    }
                }
                return true;
            }
            Validator validator = (Validator) it.next();
            boolean z3 = validator instanceof Required;
            MutableState mutableState = this.f55666i;
            MutableState mutableState2 = this.f55668k;
            if (z3) {
                Required required = (Required) validator;
                String strF = f();
                if (strF == null || strF.length() == 0) {
                    if (f() != null && (str = required.f55898a) != null) {
                        ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                        ((SnapshotMutableStateImpl) mutableState).setValue(str);
                    }
                    z = true;
                    z2 = false;
                } else {
                    z = true;
                }
            } else {
                if (validator instanceof Email) {
                    Email email = (Email) validator;
                    Pattern pattern = Patterns.EMAIL_ADDRESS;
                    String strF2 = f();
                    if (!pattern.matcher(strF2 != null ? strF2 : "").matches()) {
                        if (f() != null || !z) {
                            String str2 = email.f55894a;
                            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                            str2.getClass();
                            ((SnapshotMutableStateImpl) mutableState).setValue(str2);
                        }
                        z2 = false;
                    }
                } else if (validator instanceof com.vuitton.android.presentation.screen.certificates.model.Regex) {
                    com.vuitton.android.presentation.screen.certificates.model.Regex regex = (com.vuitton.android.presentation.screen.certificates.model.Regex) validator;
                    Regex regex2 = new Regex(regex.f55897b);
                    String strF3 = f();
                    if (!regex2.a(strF3 != null ? strF3 : "")) {
                        if (f() != null || !z) {
                            String str3 = regex.f55896a;
                            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                            str3.getClass();
                            ((SnapshotMutableStateImpl) mutableState).setValue(str3);
                        }
                        z2 = false;
                    }
                } else if (validator instanceof CompareTo) {
                    CompareTo compareTo = (CompareTo) validator;
                    if (!Intrinsics.c(f(), compareTo.f55893c.a().get(compareTo.f55892b))) {
                        if (f() != null || !z) {
                            String str4 = compareTo.f55891a;
                            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                            str4.getClass();
                            ((SnapshotMutableStateImpl) mutableState).setValue(str4);
                        }
                        z2 = false;
                    }
                } else {
                    if (!(validator instanceof PhoneNumber)) {
                        v40.g();
                        return false;
                    }
                    PhoneNumber phoneNumber = (PhoneNumber) validator;
                    Set set = PhoneNumberHelper.f51519a;
                    String str5 = (String) ((SnapshotMutableStateImpl) this.f55667j).getF10755b();
                    if (str5 == null) {
                        str5 = "";
                    }
                    String strF4 = f();
                    if (!PhoneNumberHelper.b(str5, strF4 != null ? strF4 : "")) {
                        if (f() != null || !z) {
                            String str6 = phoneNumber.f55895a;
                            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                            str6.getClass();
                            ((SnapshotMutableStateImpl) mutableState).setValue(str6);
                        }
                        z2 = false;
                    }
                }
            }
            arrayList.add(Boolean.valueOf(z2));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CertificateFormField(String str, String str2, String str3, CertificateFormFieldType certificateFormFieldType, List list, int i2, String str4, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i3 & 1) != 0 ? "" : str;
        str2 = (i3 & 2) != 0 ? "" : str2;
        str3 = (i3 & 4) != 0 ? null : str3;
        certificateFormFieldType = (i3 & 8) != 0 ? CertificateFormFieldText.f55839a : certificateFormFieldType;
        list = (i3 & 16) != 0 ? EmptyList.f71768b : list;
        if ((i3 & 32) != 0) {
            ImeAction.f10785b.getClass();
            i2 = ImeAction.f10790i;
        }
        this(str, str2, str3, certificateFormFieldType, list, i2, (i3 & 64) != 0 ? null : str4, (i3 & 128) != 0 ? null : function1, null);
    }
}
