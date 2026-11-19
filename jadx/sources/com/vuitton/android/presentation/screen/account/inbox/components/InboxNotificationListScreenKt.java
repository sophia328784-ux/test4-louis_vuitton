package com.vuitton.android.presentation.screen.account.inbox.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVNotificationIconKt;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.components.components.SwipeAction;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import defpackage.a;
import defpackage.b3;
import defpackage.cj;
import defpackage.f40;
import defpackage.h40;
import defpackage.k3;
import defpackage.l4;
import defpackage.p1;
import defpackage.tr;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "formattedDate", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class InboxNotificationListScreenKt {
    public static final void a(InAppDispatch inAppDispatch, List list, InboxNotificationUiModel inboxNotificationUiModel, boolean z, ComposableLambdaImpl composableLambdaImpl, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        List list2;
        InboxNotificationUiModel inboxNotificationUiModel2;
        ComposableLambdaImpl composableLambdaImpl2;
        Function1 function6;
        Function1 function7;
        Function1 function8;
        Function1 function9;
        Function0 function10;
        int i5;
        GapComposer gapComposer;
        inAppDispatch.getClass();
        list.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(227339528);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            list2 = list;
            i4 |= gapComposerH.y(list2) ? 32 : 16;
        } else {
            list2 = list;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            inboxNotificationUiModel2 = inboxNotificationUiModel;
            i4 |= gapComposerH.y(inboxNotificationUiModel2) ? 256 : 128;
        } else {
            inboxNotificationUiModel2 = inboxNotificationUiModel;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i4 |= gapComposerH.y(composableLambdaImpl2) ? 16384 : 8192;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((196608 & i2) == 0) {
            function6 = function1;
            i4 |= gapComposerH.y(function6) ? 131072 : 65536;
        } else {
            function6 = function1;
        }
        if ((1572864 & i2) == 0) {
            function7 = function2;
            i4 |= gapComposerH.y(function7) ? 1048576 : 524288;
        } else {
            function7 = function2;
        }
        if ((12582912 & i2) == 0) {
            function8 = function3;
            i4 |= gapComposerH.y(function8) ? 8388608 : 4194304;
        } else {
            function8 = function3;
        }
        if ((100663296 & i2) == 0) {
            function9 = function4;
            i4 |= gapComposerH.y(function9) ? 67108864 : 33554432;
        } else {
            function9 = function4;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            function10 = function0;
            i5 = i3 | (gapComposerH.y(function10) ? 4 : 2);
        } else {
            function10 = function0;
            i5 = i3;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl2, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-1934151017, new l4(z, function10, list2, inAppDispatch, inboxNotificationUiModel2, function6, function7, function8, function9, (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l), function5), gapComposerH), gapComposer, ((i4 >> 9) & 112) | 805306368, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f40(inAppDispatch, list, inboxNotificationUiModel, z, composableLambdaImpl, function1, function2, function3, function4, function5, function0, i2, i3);
        }
    }

    public static final void b(Modifier modifier, InAppDispatch inAppDispatch, final InboxNotificationUiModel inboxNotificationUiModel, final Function1 function1, final Function1 function2, Composer composer, int i2) {
        int i3;
        final int i4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "NotificationContent");
        }
        GapComposer gapComposerH = composer.h(-463590848);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(inAppDispatch) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(inboxNotificationUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        final int i5 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            boolean zY = ((57344 & i3) == 16384) | gapComposerH.y(inboxNotificationUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                i4 = 0;
                objX = new Function0() { // from class: c40
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i6 = i4;
                        InboxNotificationUiModel inboxNotificationUiModel2 = inboxNotificationUiModel;
                        Function1 function3 = function2;
                        switch (i6) {
                            case 0:
                                function3.invoke(inboxNotificationUiModel2);
                                break;
                            default:
                                function3.invoke(inboxNotificationUiModel2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            } else {
                i4 = 0;
            }
            Function0 function0 = (Function0) objX;
            if ((i3 & 7168) == 2048) {
                i4 = 1;
            }
            int i6 = (gapComposerH.y(inboxNotificationUiModel) ? 1 : 0) | i4;
            Object objX2 = gapComposerH.x();
            if (i6 != 0 || objX2 == composer$Companion$Empty$1) {
                objX2 = new Function0() { // from class: c40
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i7 = i5;
                        InboxNotificationUiModel inboxNotificationUiModel2 = inboxNotificationUiModel;
                        Function1 function3 = function1;
                        switch (i7) {
                            case 0:
                                function3.invoke(inboxNotificationUiModel2);
                                break;
                            default:
                                function3.invoke(inboxNotificationUiModel2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            }
            Modifier modifierJ = PaddingKt.j(ClickableKt.f(modifierB, function0, (Function0) objX2), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierA = ClipKt.a(SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "NotificationContent"), LVAppDesignKitTheme.d(gapComposerH).v), RoundedCornerShapeKt.f5846a);
            String str = inboxNotificationUiModel.d;
            if (str == null) {
                str = null;
            }
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, Integer.valueOf(R.drawable.inbox_placeholder_default), R.drawable.inbox_placeholder_default, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 1992);
            gapComposerH = gapComposerH;
            c(null, inAppDispatch, inboxNotificationUiModel.f52413b, inboxNotificationUiModel.f52414c, inboxNotificationUiModel.g, inboxNotificationUiModel.f52416f, gapComposerH, i3 & 112);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(modifierE, inAppDispatch, inboxNotificationUiModel, function1, function2, i2, 11);
        }
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [java.time.LocalDateTime] */
    public static final void c(Modifier modifier, InAppDispatch inAppDispatch, String str, String str2, Date date, boolean z, Composer composer, int i2) {
        Modifier modifier2;
        String str3;
        boolean z2;
        TextStyle textStyle;
        MutableState mutableState;
        boolean z3;
        String strF;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "NotificationContentRow");
        }
        GapComposer gapComposerH = composer.h(225537574);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(inAppDispatch) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(date) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NotificationContentRow");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_actions_available);
            boolean zK = gapComposerH.K(date);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                boolean zF = InAppDispatchExtKt.f(inAppDispatch);
                date.getClass();
                try {
                    str3 = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime().format(DateTimeFormatter.ofPattern(zF ? "dd/MM" : "MM/dd"));
                    str3.getClass();
                } catch (Exception unused) {
                    str3 = "";
                }
                objX = SnapshotStateKt.g(str3);
                gapComposerH.q(objX);
            }
            MutableState mutableState2 = (MutableState) objX;
            if (z) {
                gapComposerH.L(1993263122);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).f48428i;
                z2 = false;
            } else {
                z2 = false;
                gapComposerH.L(1993264683);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            }
            gapComposerH.Z(z2);
            TextStyle textStyle2 = textStyle;
            boolean zK2 = ((i4 & 7168) == 2048) | ((i4 & 896) == 256) | gapComposerH.K(mutableState2) | gapComposerH.K(strC);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                mutableState = mutableState2;
                k3 k3Var = new k3(str, str2, strC, mutableState, 15);
                gapComposerH.q(k3Var);
                objX2 = k3Var;
            } else {
                mutableState = mutableState2;
            }
            Modifier modifierA = IntrinsicKt.a(SizeKt.d(ModifierExtKt.a(dTFunctionNameModifier, null, (Function1) objX2, 3), 1.0f), IntrinsicSize.Max);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            MutableState mutableState3 = mutableState;
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NotificationContentRow");
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF2, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierB = cj.b("NotificationContentRow", rowScopeInstance, 1.0f, true);
            if (str == null) {
                z3 = false;
                strF = cj.f(gapComposerH, 444601147, R.string.louis_vuitton, gapComposerH, false);
            } else {
                z3 = false;
                gapComposerH.L(444600868);
                gapComposerH.Z(false);
                strF = str;
            }
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            TextKt.c(strF, modifierB, j2, 0L, null, 0L, null, null, 0L, i5, false, 1, 0, null, textStyle2, gapComposerH, 0, 24960, 110584);
            if (z) {
                gapComposerH.L(898007618);
                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposerH, 0, 7);
                gapComposerH.Z(z3);
            } else {
                gapComposerH.L(898057590);
                gapComposerH.Z(z3);
            }
            gapComposerH.Z(true);
            Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            BiasAlignment.Vertical vertical = Alignment.Companion.m;
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("NotificationContentRow");
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(spacedAlignedF3, vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            TextKt.c(str2, rowScopeInstance.a(tr.e(gapComposerH, modifierC3, function5, "NotificationContentRow"), 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, i5, false, 3, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i4 >> 9) & 14, 24960, 110584);
            TextKt.c((String) mutableState3.getF10755b(), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, inAppDispatch, str, str2, date, z, i2);
        }
    }

    public static final void d(final InAppDispatch inAppDispatch, final InboxNotificationUiModel inboxNotificationUiModel, final boolean z, final Function0 function0, final Function0 function1, final Function0 function2, final Function1 function3, final Function1 function4, final boolean z2, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(-1286682133);
        int i3 = i2 | (gapComposerH.y(inAppDispatch) ? 4 : 2) | (gapComposerH.y(inboxNotificationUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.b(z2) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = 500;
                gapComposerH.q(objX);
            }
            int iIntValue = ((Number) objX).intValue();
            boolean z3 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = Double.valueOf(1.5d);
                gapComposerH.q(objX3);
            }
            double dDoubleValue = ((Number) objX3).doubleValue();
            boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
            TweenSpec tweenSpecC = AnimationSpecKt.c(iIntValue, 0, null, 6);
            boolean zB = gapComposerH.b(z3);
            Object objX4 = gapComposerH.x();
            if (zB || objX4 == composer$Companion$Empty$1) {
                objX4 = new h40(z3, dDoubleValue, 0);
                gapComposerH.q(objX4);
            }
            ExitTransition exitTransitionB = EnterExitTransitionKt.s((Function1) objX4, tweenSpecC).b(EnterExitTransitionKt.h(AnimationSpecKt.c(iIntValue, 0, null, 6), 2));
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1479647427, new Function3() { // from class: d40
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i4 = LVAppDesignKitTheme.g(composer2).o1;
                    String strC = StringResources_androidKt.c(composer2, R.string.global_remove);
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.x;
                    Function0 function5 = function2;
                    boolean zK = composer2.K(function5);
                    Object objX5 = composer2.x();
                    if (zK || objX5 == Composer.Companion.f7939a) {
                        objX5 = new na(function5, mutableState, 7);
                        composer2.q(objX5);
                    }
                    LVSwipeToRevealKt.a(null, CollectionsKt.O(new SwipeAction(i4, strC, j2, (Function0) objX5, null)), z, function0, function1, ComposableLambdaKt.b(2024675298, new r((Object) inAppDispatch, (Object) inboxNotificationUiModel, (Object) function3, (Object) function4, 15), composer2), composer2, ImageMetadata.EDGE_MODE, 1);
                    if (z2) {
                        DividerKt.a(pq0.h(1.0f, 928119131, composer2, "NotificationItem$lambda$4"), LVAppDesignKitTheme.d(composer2).f48385c, LVAppDesignKitTheme.c(composer2).f48361b.q, composer2, 6, 0);
                        composer2.F();
                    } else {
                        composer2.L(928368991);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            gapComposerH = gapComposerH;
            AnimatedVisibilityKt.e(zBooleanValue, null, null, exitTransitionB, null, composableLambdaImplB, gapComposerH, ImageMetadata.EDGE_MODE, 22);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(inboxNotificationUiModel, z, function0, function1, function2, function3, function4, z2, i2) { // from class: e40

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ InboxNotificationUiModel f68752c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f68753e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f68754f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function1 f68755h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f68756i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ boolean f68757j;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    InboxNotificationListScreenKt.d(this.f68751b, this.f68752c, this.d, this.f68753e, this.f68754f, this.g, this.f68755h, this.f68756i, this.f68757j, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
