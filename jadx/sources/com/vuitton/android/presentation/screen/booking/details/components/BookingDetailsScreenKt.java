package com.vuitton.android.presentation.screen.booking.details.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingActionTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingActionUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import defpackage.a;
import defpackage.a4;
import defpackage.cj;
import defpackage.f1;
import defpackage.g0;
import defpackage.h4;
import defpackage.i1;
import defpackage.j6;
import defpackage.kf;
import defpackage.lf;
import defpackage.mf;
import defpackage.n00;
import defpackage.n4;
import defpackage.o60;
import defpackage.o8;
import defpackage.q;
import defpackage.q8;
import defpackage.qd;
import defpackage.s3;
import defpackage.tr;
import defpackage.u1;
import defpackage.v1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;", "selectedBooking", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingDetailsScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54422a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f54423b;

        static {
            int[] iArr = new int[BookingActionTypeUiModel.values().length];
            try {
                iArr[BookingActionTypeUiModel.QR_CODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingActionTypeUiModel.ADD_TO_CALENDAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BookingActionTypeUiModel.MODIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BookingActionTypeUiModel.CANCEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f54422a = iArr;
            int[] iArr2 = new int[BookingInfoTypeUiModel.values().length];
            try {
                iArr2[BookingInfoTypeUiModel.PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BookingInfoTypeUiModel.ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            f54423b = iArr2;
        }
    }

    public static final void a(String str, int i2, Function0 function0, Composer composer, int i3) {
        GapComposer gapComposerH = composer.h(-189458639);
        Applier applier = gapComposerH.f7976a;
        int i4 = i3 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierS = SizeKt.s(new DTFunctionNameModifier("BookingDetailAction"), LVAppDesignKitTheme.d(gapComposerH).C);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierS);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierC2 = ModifierExtKt.c(BackgroundKt.b(ClipKt.a(SizeKt.k(tr.e(gapComposerH, modifierC, function6, "BookingDetailAction"), LVAppDesignKitTheme.d(gapComposerH).v), RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), false, null, null, function0, 31);
            int i5 = i4 & 14;
            boolean z = i5 == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new a4(str, 5);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierC2, false, (Function1) objX);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i4 >> 3) & 14), null, SizeKt.o(tr.e(gapComposerH, modifierC3, function6, "BookingDetailAction"), LVAppDesignKitTheme.d(gapComposerH).o), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(o60.f(gapComposerH, true, "BookingDetailAction"), null, null, 7);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i6 = TextAlign.f10961e;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierA, j2, 0L, null, 0L, null, new TextAlign(i6), 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, i5, 24960, 109560);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kf(str, i2, function0, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r21v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public static final void b(Modifier modifier, List list, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        Modifier modifier2;
        ?? r12;
        Modifier modifierE = modifier;
        List list2 = list;
        String str = "BookingDetailActionRow";
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingDetailActionRow");
        }
        ?? H = composer.h(1232570820);
        Function0 function4 = function0;
        Function0 function5 = function1;
        Function0 function6 = function3;
        int i3 = i2 | (H.K(modifierE) ? 4 : 2) | (H.y(list2) ? 32 : 16) | (H.y(function4) ? 256 : 128) | (H.y(function5) ? 2048 : 1024) | (H.y(function2) ? 16384 : 8192) | (H.y(function6) ? 131072 : 65536);
        ?? r13 = 0;
        if (H.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            float f2 = LVAppDesignKitTheme.l(H).f48416e;
            Alignment.f8582a.getClass();
            Easing easing = null;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(new Arrangement.SpacedAligned(f2, true, new s3(Alignment.Companion.o, 3), null), Alignment.Companion.f8591k, H, 0);
            int iHashCode = Long.hashCode(H.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = H.U();
            Modifier modifierC = ComposedModifierKt.c(H, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (H.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            H.B();
            if (H.S) {
                H.C(function7);
            } else {
                H.o();
            }
            Updater.c(H, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(H, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(H, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(H, ComposeUiNode.Companion.f9645h);
            Updater.c(H, modifierC, ComposeUiNode.Companion.d);
            H.L(-183367948);
            for (BookingActionTypeUiModel bookingActionTypeUiModel : BookingActionTypeUiModel.a()) {
                List list3 = list2;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator it = list3.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((BookingActionUiModel) it.next()).f54601a == bookingActionTypeUiModel) {
                                r12 = 1;
                                break;
                            }
                        } else {
                            r12 = r13;
                            break;
                        }
                    }
                } else {
                    r12 = r13;
                    break;
                    break;
                }
                RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                Modifier modifierB = cj.b(str, rowScopeInstance, 1.0f, r13);
                Modifier modifier3 = modifierE;
                EnterTransition enterTransitionB = EnterExitTransitionKt.f(AnimationSpecKt.c(200, r13, easing, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2).b(EnterExitTransitionKt.i(AnimationSpecKt.c(200, r13, easing, 6), 0.8f, 4));
                TweenSpec tweenSpecC = AnimationSpecKt.c(200, r13, null, 6);
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                AnimatedVisibilityKt.d(rowScopeInstance, r12, modifierB, enterTransitionB.b(EnterExitTransitionKt.b(tweenSpecC, horizontal, null, 8)), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r13, null, 6), 2).b(EnterExitTransitionKt.j(AnimationSpecKt.c(200, r13, null, 6), 0.8f, 4)).b(EnterExitTransitionKt.k(AnimationSpecKt.c(200, r13, null, 6), horizontal, null, 8)), null, ComposableLambdaKt.b(-1766862149, new n4((Object) bookingActionTypeUiModel, function2, function4, (Object) function5, (Function) function6, 7), H), H, 1600518, 16);
                list2 = list;
                function4 = function0;
                function5 = function1;
                function6 = function3;
                r13 = r13 == true ? 1 : 0;
                modifierE = modifier3;
                str = str;
                easing = null;
            }
            modifier2 = modifierE;
            H.Z(r13);
            H.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            modifier2 = modifierE;
            H.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = H.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, list, function0, function1, function2, function3, i2, 5);
        }
    }

    public static final void c(BookingUiModel bookingUiModel, Function1 function1, Function1 function2, Composer composer, int i2) {
        int i3;
        String str;
        boolean z;
        GapComposer gapComposerH = composer.h(-2065818974);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(bookingUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = new DTFunctionNameModifier("BookingDetailsBody").o(SizeKt.f5052c);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            if (bookingUiModel.f54617e != null) {
                z = false;
                str = "BookingDetailsBody";
                TextKt.c(bookingUiModel.f54617e, PaddingKt.m(PaddingKt.k(n00.i(gapComposerH, 919380659, "BookingDetailsBody"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).p, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                str = "BookingDetailsBody";
                z = false;
                gapComposerH.L(919762486);
                gapComposerH.Z(false);
            }
            GapComposer gapComposer = gapComposerH;
            TextKt.c(bookingUiModel.d, PaddingKt.k(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposer, 0, 0, 131064);
            f(PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), bookingUiModel.f54621j, function1, function2, gapComposer, (i3 << 3) & 8064);
            gapComposerH = gapComposer;
            if (bookingUiModel.f54622k != null) {
                LVDisclaimerKt.a(PaddingKt.m(o60.c(gapComposerH, 920350308, str, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), bookingUiModel.f54622k, null, 0L, null, null, gapComposerH, 0, 60);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(920582870);
                gapComposerH.Z(z);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 4, bookingUiModel, function1, function2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:101:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:107:0x030e  */
    /* JADX WARN: Code duplicated, block: B:80:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:81:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:87:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:90:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:91:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:97:0x02e6  */
    public static final void d(BookingUiModel bookingUiModel, List list, Function1 function1, Function2 function2, Function2 function3, Function2 function4, Function1 function5, Function1 function6, Composer composer, int i2) {
        Function2 function7;
        Function1 function8;
        Function2 function9;
        Function1 function10;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z;
        boolean zK;
        Object objX;
        boolean z2;
        boolean z3;
        boolean zK2;
        Object objX2;
        boolean z4;
        boolean zK3;
        Object objX3;
        Function2 function11 = function4;
        Function1 function12 = function6;
        GapComposer gapComposerH = composer.h(-1508066313);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(bookingUiModel) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function11) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function12) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK4 = gapComposerH.K(bookingUiModel);
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zK4 || objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(bookingUiModel);
                gapComposerH.q(objX4);
            }
            MutableState mutableState = (MutableState) objX4;
            BookingCarouselBackgroundKt.a(54, gapComposerH, SizeKt.c(new DTFunctionNameModifier("BookingDetailsContent"), 0.5f), ((BookingUiModel) mutableState.getF10755b()).f54619h);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingDetailsContent");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            Function2 function13 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function13);
            Function2 function14 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function14);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function15 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function15);
            Function1 function16 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function16);
            Function2 function17 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function17);
            Modifier modifierA = AspectRatioKt.a(PaddingKt.m(tr.d("BookingDetailsContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 5), 1.7777778f, false);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, function13);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function14);
            cj.t(iHashCode2, gapComposerH, function15, gapComposerH, function16);
            Updater.c(gapComposerH, modifierC2, function17);
            String str = bookingUiModel.f54614a;
            boolean zK5 = gapComposerH.K(mutableState);
            Object objX5 = gapComposerH.x();
            if (zK5 || objX5 == composer$Companion$Empty$2) {
                objX5 = new j6(11, mutableState);
                gapComposerH.q(objX5);
            }
            BookingCarouselKt.a(null, list, str, (Function1) objX5, gapComposerH, (i3 >> 3) & 112);
            Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.m(PaddingKt.k(ScrollKt.d(BackgroundKt.b(ClipKt.a(ColumnScopeInstance.f4944a.a(o60.f(gapComposerH, true, "BookingDetailsContent"), 1.0f, true).o(fillElement), RoundedCornerShapeKt.c(LVAppDesignKitTheme.d(gapComposerH).t, LVAppDesignKitTheme.d(gapComposerH).t, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12)), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), ScrollKt.b(gapComposerH), false, 14), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5));
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function13);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function14);
            cj.t(iHashCode3, gapComposerH, function15, gapComposerH, function16);
            Modifier modifierM = PaddingKt.m(PaddingKt.k(tr.e(gapComposerH, modifierC3, function17, "BookingDetailsContent"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7);
            List list2 = ((BookingUiModel) mutableState.getF10755b()).m;
            boolean zK6 = ((i3 & 7168) == 2048) | gapComposerH.K(mutableState);
            Object objX6 = gapComposerH.x();
            if (zK6) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX6 != composer$Companion$Empty$1) {
                    function10 = function1;
                }
                Function0 function18 = (Function0) objX6;
                if ((57344 & i3) == 16384) {
                    z = true;
                } else {
                    z = false;
                }
                zK = z | gapComposerH.K(mutableState);
                objX = gapComposerH.x();
                if (!zK || objX == composer$Companion$Empty$1) {
                    function7 = function2;
                    z2 = true;
                    objX = new h4(function7, mutableState, 1);
                    gapComposerH.q(objX);
                } else {
                    function7 = function2;
                    z2 = true;
                }
                Function0 function19 = (Function0) objX;
                if ((3670016 & i3) == 1048576) {
                    z3 = z2;
                } else {
                    z3 = false;
                }
                zK2 = z3 | gapComposerH.K(mutableState);
                objX2 = gapComposerH.x();
                if (!zK2 || objX2 == composer$Companion$Empty$1) {
                    function11 = function4;
                    objX2 = new h4(function11, mutableState, 2);
                    gapComposerH.q(objX2);
                } else {
                    function11 = function4;
                }
                Function0 function20 = (Function0) objX2;
                if ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z4 = z2;
                } else {
                    z4 = false;
                }
                zK3 = z4 | gapComposerH.K(mutableState);
                objX3 = gapComposerH.x();
                if (!zK3 || objX3 == composer$Companion$Empty$1) {
                    function9 = function3;
                    objX3 = new h4(function9, mutableState, 3);
                    gapComposerH.q(objX3);
                } else {
                    function9 = function3;
                }
                b(modifierM, list2, function18, function19, function20, (Function0) objX3, gapComposerH, 0);
                function8 = function5;
                function12 = function6;
                CrossfadeKt.b((BookingUiModel) mutableState.getF10755b(), null, AnimationSpecKt.c(300, 0, null, 6), "BookingDetailsCrossfade", ComposableLambdaKt.b(693783212, new f1(function8, function12, 7), gapComposerH), gapComposerH, 28032, 2);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z2);
                gapComposerH.Z(z2);
            }
            function10 = function1;
            objX6 = new o8(function10, mutableState, 3);
            gapComposerH.q(objX6);
            Function0 function110 = (Function0) objX6;
            if ((57344 & i3) == 16384) {
                z = true;
            } else {
                z = false;
            }
            zK = z | gapComposerH.K(mutableState);
            objX = gapComposerH.x();
            if (zK) {
                function7 = function2;
                z2 = true;
                objX = new h4(function7, mutableState, 1);
                gapComposerH.q(objX);
            } else {
                function7 = function2;
                z2 = true;
                objX = new h4(function7, mutableState, 1);
                gapComposerH.q(objX);
            }
            Function0 function111 = (Function0) objX;
            if ((3670016 & i3) == 1048576) {
                z3 = z2;
            } else {
                z3 = false;
            }
            zK2 = z3 | gapComposerH.K(mutableState);
            objX2 = gapComposerH.x();
            if (zK2) {
                function11 = function4;
                objX2 = new h4(function11, mutableState, 2);
                gapComposerH.q(objX2);
            } else {
                function11 = function4;
                objX2 = new h4(function11, mutableState, 2);
                gapComposerH.q(objX2);
            }
            Function0 function21 = (Function0) objX2;
            if ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z4 = z2;
            } else {
                z4 = false;
            }
            zK3 = z4 | gapComposerH.K(mutableState);
            objX3 = gapComposerH.x();
            if (zK3) {
                function9 = function3;
                objX3 = new h4(function9, mutableState, 3);
                gapComposerH.q(objX3);
            } else {
                function9 = function3;
                objX3 = new h4(function9, mutableState, 3);
                gapComposerH.q(objX3);
            }
            b(modifierM, list2, function110, function111, function21, (Function0) objX3, gapComposerH, 0);
            function8 = function5;
            function12 = function6;
            CrossfadeKt.b((BookingUiModel) mutableState.getF10755b(), null, AnimationSpecKt.c(300, 0, null, 6), "BookingDetailsCrossfade", ComposableLambdaKt.b(693783212, new f1(function8, function12, 7), gapComposerH), gapComposerH, 28032, 2);
            gapComposerH = gapComposerH;
            gapComposerH.Z(z2);
            gapComposerH.Z(z2);
        } else {
            function7 = function2;
            function8 = function5;
            function9 = function3;
            function10 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(bookingUiModel, list, function10, function7, function9, function11, function8, function12, i2);
        }
    }

    public static final void e(BookingUiModel bookingUiModel, List list, Function0 function0, Function1 function1, Function2 function2, Function2 function3, Function2 function4, Function1 function5, Function1 function6, SnackbarHostState snackbarHostState, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        list.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1146688247);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(bookingUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_my_experiences_title);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingDetailsScreen");
            boolean zK = gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(strC, 6);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX), ComposableLambdaKt.b(610274253, new qd(3, strC, function0), gapComposerH), null, ComposableLambdaKt.b(766516431, new g0(snackbarHostState, 10), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1051177448, new lf(bookingUiModel, list, function1, function4, function3, function2, function5, function6), gapComposerH), gapComposer, 805309488, 500);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(bookingUiModel, list, function0, function1, function2, function3, function4, function5, function6, snackbarHostState, i2);
        }
    }

    public static final void f(Modifier modifier, List list, Function1 function1, Function1 function2, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingInfoCard");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1055394983);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        int i4 = 2048;
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        boolean z = true;
        boolean z2 = false;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(ClipKt.a(SizeKt.d(modifier2, 1.0f), LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            gapComposerH.L(1352022943);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                BookingInfoUiModel bookingInfoUiModel = (BookingInfoUiModel) it.next();
                String str = bookingInfoUiModel.f54607a;
                boolean z3 = z;
                String str2 = bookingInfoUiModel.f54608b;
                if (bookingInfoUiModel.f54609c != BookingInfoTypeUiModel.TEXT) {
                    z2 = z3;
                }
                boolean zK = ((i3 & 896) == 256) | gapComposerH.K(bookingInfoUiModel) | ((i3 & 7168) == i4);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new q(bookingInfoUiModel, function1, function2, 16);
                    gapComposerH.q(objX);
                }
                BookingInfoRowKt.a(null, str, str2, z2, (Function0) objX, gapComposerH, 0);
                z = true;
                z2 = false;
                i4 = 2048;
            }
            gapComposerH.Z(z2);
            gapComposerH.Z(z);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifier2, list, function1, function2, i2, 5);
        }
    }
}
