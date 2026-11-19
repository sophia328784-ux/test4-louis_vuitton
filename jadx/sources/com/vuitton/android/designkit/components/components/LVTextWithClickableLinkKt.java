package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVTextWithClickableLinkKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.c30;
import defpackage.jx;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTextWithClickableLinkKt {
    public static final void a(final int i2, final int i3, final TextStyle textStyle, final long j2, final long j3, String str, final Function0 function0, Modifier modifier, Composer composer, final int i4, final int i5) {
        int i6;
        final String str2;
        GapComposer gapComposer;
        final Modifier modifier2;
        IntRange intRangeJ;
        int i7;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTextWithClickableLink-X-z6DiA");
        }
        textStyle.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1167248157);
        int i8 = i4 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.d(i3) ? 32 : 16) | (gapComposerH.K(textStyle) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | (gapComposerH.e(j3) ? 16384 : 8192) | (gapComposerH.y(function0) ? 1048576 : 524288);
        int i9 = i5 & 128;
        if (i9 != 0) {
            i6 = 12582912;
        } else {
            i6 = gapComposerH.K(modifierE) ? 8388608 : 4194304;
        }
        int i10 = i8 | i6;
        Modifier modifier3 = modifierE;
        if (gapComposerH.p(i10 & 1, (4793491 & i10) != 4793490)) {
            Modifier dTFunctionNameModifier = i9 != 0 ? new DTFunctionNameModifier("LVTextWithClickableLink-X-z6DiA") : modifier3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, i2);
            String strC2 = StringResources_androidKt.c(gapComposerH, i3);
            int iA = StringKtExtKt.a(strC, "%s");
            if (iA != -1) {
                strC2.getClass();
                String strB = StringKtExtKt.b(strC);
                String strB2 = StringKtExtKt.b("%s");
                int iA2 = StringKtExtKt.a(strB, strB2);
                if (iA2 >= 0) {
                    strB = StringsKt.K(strB, iA2, strB2.length() + iA2, strC2).toString();
                }
                strC = strB;
                intRangeJ = RangesKt.j(iA, strC2.length() + iA);
            } else {
                intRangeJ = null;
            }
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            builder.e(strC);
            if (intRangeJ != null) {
                int i11 = intRangeJ.f71952c;
                int i12 = intRangeJ.f71951b;
                TextDecoration.f10965b.getClass();
                TextDecoration textDecoration = TextDecoration.d;
                FontWeight.f10727c.getClass();
                i7 = 1048576;
                z = true;
                int i13 = i11 + 1;
                builder.c(new SpanStyle(j3, 0L, FontWeight.f10733k, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61434, (DefaultConstructorMarker) null), i12, i13);
                builder.b(i12, i13, "link", "clickable");
            } else {
                i7 = 1048576;
                z = true;
            }
            final AnnotatedString annotatedStringI = builder.i();
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            final TextLayoutResult textLayoutResult = (TextLayoutResult) mutableState.getF10755b();
            TextStyle textStyleA = TextStyle.a(textStyle, j2, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
            str2 = str;
            Modifier modifierE2 = ModifierExtKt.e(dTFunctionNameModifier, str2);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(textLayoutResult) | gapComposerH.K(annotatedStringI);
            if ((i10 & 3670016) != i7) {
                z = false;
            }
            boolean z2 = zY | z;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.components.components.LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new jx(textLayoutResult, annotatedStringI, function0, 9), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            }
            Modifier modifierA = SuspendingPointerInputFilterKt.a(modifierE2, unit, (PointerInputEventHandler) objX2);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new c30(7, mutableState);
                gapComposerH.q(objX3);
            }
            gapComposer = gapComposerH;
            TextKt.d(annotatedStringI, modifierA, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, (Function1) objX3, textStyleA, gapComposer, 0, 12582912, 131068);
            modifier2 = dTFunctionNameModifier;
        } else {
            str2 = str;
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i2, i3, textStyle, j2, j3, str2, function0, modifier2, i4, i5) { // from class: p80

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f78784b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f78785c;
                public final /* synthetic */ TextStyle d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f78786e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f78787f;
                public final /* synthetic */ String g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f78788h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Modifier f78789i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ int f78790j;

                {
                    this.f78790j = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA3 = RecomposeScopeImplKt.a(196609);
                    LVTextWithClickableLinkKt.a(this.f78784b, this.f78785c, this.d, this.f78786e, this.f78787f, this.g, this.f78788h, this.f78789i, (Composer) obj, iA3, this.f78790j);
                    return Unit.f71739a;
                }
            };
        }
    }
}
