package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.foundation.BasicMarqueeKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.TrackDetailSubMode;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailPlayerKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import defpackage.cj;
import defpackage.e31;
import defpackage.n00;
import defpackage.q1;
import defpackage.tr;
import defpackage.w11;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "containerWidthPx", "titleNaturalWidthPx", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailPlayerKt {
    /* JADX WARN: Code duplicated, block: B:87:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:91:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f1  */
    public static final void a(Modifier modifier, final AudioGuideViewState.Success success, final long j2, final String str, final String str2, final TrackDetailSubMode trackDetailSubMode, final Function0 function0, final Function0 function1, final Function0 function2, final Function1 function3, final Function0 function4, final Function0 function5, final Function0 function6, Composer composer, final int i2) {
        GapComposer gapComposer;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        List list;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TrackDetailPlayer");
        }
        modifierE.getClass();
        success.getClass();
        str.getClass();
        str2.getClass();
        trackDetailSubMode.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerC = defpackage.a.c(function5, function6, composer, -715341886);
        int i3 = i2 | (gapComposerC.K(modifierE) ? 4 : 2) | (gapComposerC.y(success) ? 32 : 16) | (gapComposerC.e(j2) ? 256 : 128) | (gapComposerC.K(str) ? 2048 : 1024) | (gapComposerC.K(str2) ? 16384 : 8192) | (gapComposerC.d(trackDetailSubMode.ordinal()) ? 131072 : 65536) | (gapComposerC.y(function0) ? 1048576 : 524288) | (gapComposerC.y(function1) ? 8388608 : 4194304) | (gapComposerC.y(function2) ? 67108864 : 33554432) | (gapComposerC.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerC.y(function4) ? 4 : 2) | (gapComposerC.y(function5) ? 32 : 16) | (gapComposerC.y(function6) ? 256 : 128);
        if (gapComposerC.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModelA = AudioGuideExtKt.a(success.f53225a.f53199f, gapComposerC);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerC, 0);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (gapComposerC.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function7);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
            long j3 = audioGuideColorsUiModelA.f53207a;
            long j4 = audioGuideColorsUiModelA.f53208b;
            boolean z6 = trackDetailSubMode == TrackDetailSubMode.Transcript;
            TrackDetailUiModel trackDetailUiModel = success.f53226b;
            if (trackDetailUiModel == null || (list = trackDetailUiModel.f53233e) == null) {
                z = false;
                z2 = true;
            } else {
                z2 = true;
                if (!list.isEmpty()) {
                    gapComposerC.L(-1648371518);
                    boolean z7 = !AccessibilityExtKt.a(gapComposerC);
                    z = false;
                    gapComposerC.Z(false);
                    z3 = z7;
                } else {
                    z = false;
                }
                b(str, str2, j3, j4, z6, z3, function0, gapComposerC, ((i3 >> 9) & 126) | (i3 & 3670016));
                Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("TrackDetailPlayer"), LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                long j5 = success.d;
                if (success.f53227c == PlayerState.PLAYING) {
                    z4 = z2;
                } else {
                    z4 = z;
                }
                if (trackDetailSubMode == TrackDetailSubMode.ListeningQueue) {
                    z5 = z2;
                } else {
                    z5 = z;
                }
                int i5 = i3 >> 3;
                AudioPlayerControlsKt.a(modifierK, audioGuideColorsUiModelA, j2, j5, z4, z5, success.f53228e, function2, function3, function4, function5, function6, function1, gapComposerC, (i3 & 896) | (29360128 & i5) | (i5 & 234881024) | ((i4 << 27) & 1879048192), ((i4 >> 3) & 126) | ((i3 >> 15) & 896), 0);
                gapComposer = gapComposerC;
                gapComposer.Z(z2);
            }
            gapComposerC.L(440091731);
            gapComposerC.Z(z);
            z3 = z;
            b(str, str2, j3, j4, z6, z3, function0, gapComposerC, ((i3 >> 9) & 126) | (i3 & 3670016));
            Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("TrackDetailPlayer"), LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            long j6 = success.d;
            if (success.f53227c == PlayerState.PLAYING) {
                z4 = z2;
            } else {
                z4 = z;
            }
            if (trackDetailSubMode == TrackDetailSubMode.ListeningQueue) {
                z5 = z2;
            } else {
                z5 = z;
            }
            int i6 = i3 >> 3;
            AudioPlayerControlsKt.a(modifierK2, audioGuideColorsUiModelA, j2, j6, z4, z5, success.f53228e, function2, function3, function4, function5, function6, function1, gapComposerC, (i3 & 896) | (29360128 & i6) | (i6 & 234881024) | ((i4 << 27) & 1879048192), ((i4 >> 3) & 126) | ((i3 >> 15) & 896), 0);
            gapComposer = gapComposerC;
            gapComposer.Z(z2);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(success, j2, str, str2, trackDetailSubMode, function0, function1, function2, function3, function4, function5, function6, i2) { // from class: j41

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AudioGuideViewState.Success f71293c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f71294e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ String f71295f;
                public final /* synthetic */ TrackDetailSubMode g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f71296h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f71297i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f71298j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f71299k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function0 n;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    TrackDetailPlayerKt.a(this.f71292b, this.f71293c, this.d, this.f71294e, this.f71295f, this.g, this.f71296h, this.f71297i, this.f71298j, this.f71299k, this.l, this.m, this.n, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final String str, final String str2, final long j2, final long j3, boolean z, final boolean z2, Function0 function0, Composer composer, final int i2) {
        int i3;
        Function0 function1;
        final boolean z3;
        int i4;
        GapComposer gapComposerH = composer.h(117700347);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(str) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        int i5 = i3 | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.e(j3) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.b(z2) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("TrackDetailTitle-Y0xEhic", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("TrackDetailTitle-Y0xEhic"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierA = rowScopeInstance.a(modifierM2, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function7, "TrackDetailTitle-Y0xEhic", "audioGuide_trackDetailLabel_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            TextOverflow.f10989a.getClass();
            int i6 = i5 >> 3;
            TextKt.c(str, modifierF, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, (i5 & 14) | (i6 & 896), 24960, 110584);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                i4 = 0;
                objX = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX);
            } else {
                i4 = 0;
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotIntStateKt.a(i4);
                gapComposerH.q(objX2);
            }
            MutableIntState mutableIntState2 = (MutableIntState) objX2;
            int iF = mutableIntState2.f();
            int iF2 = mutableIntState.f();
            boolean z4 = 1 <= iF2 && iF2 < iF;
            Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("TrackDetailTitle-Y0xEhic"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new q1(mutableIntState, 15);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = ModifierExtKt.b(OnRemeasuredModifierKt.a(modifierD, (Function1) objX3), z4, new e31(8), gapComposerH, 0);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(BasicMarqueeKt.a(n00.e(gapComposerH, modifierC3, function7, "TrackDetailTitle-Y0xEhic", 1.0f), null, 63), "audioGuide_trackDetailTitle_text");
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).d;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new q1(mutableIntState2, 16);
                gapComposerH.q(objX4);
            }
            TextKt.c(str2, modifierE, j2, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, (Function1) objX4, textStyle2, gapComposerH, (i6 & 14) | (i5 & 896), 1597440, 49144);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            if (z2) {
                Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(rowScopeInstance.b(n00.i(gapComposerH, 1098158863, "TrackDetailTitle-Y0xEhic"), Alignment.Companion.m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "audioGuide_trackDetailTranscript_button");
                boolean z5 = (i5 & 3670016) == 1048576;
                Object objX5 = gapComposerH.x();
                if (z5 || objX5 == composer$Companion$Empty$1) {
                    function1 = function0;
                    objX5 = new w11(function1, 6);
                    gapComposerH.q(objX5);
                } else {
                    function1 = function0;
                }
                z3 = z;
                IconButtonKt.a((Function0) objX5, modifierE2, false, null, null, ComposableLambdaKt.b(1354694014, new Function2() { // from class: k41
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i7;
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("TrackDetailTitle_Y0xEhic$lambda$0$2"), LVAppDesignKitTheme.d(composer2).o);
                            if (z3) {
                                composer2.L(-2118076347);
                                i7 = LVAppDesignKitTheme.g(composer2).F1;
                                composer2.F();
                            } else {
                                composer2.L(-2117976341);
                                i7 = LVAppDesignKitTheme.g(composer2).E1;
                                composer2.F();
                            }
                            IconKt.a(PainterResources_androidKt.a(i7, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_transcript), modifierO, j2, composer2, 8, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 1572864, 60);
                gapComposerH.Z(false);
            } else {
                z3 = z;
                function1 = function0;
                gapComposerH.L(1099056747);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            function1 = function0;
            z3 = z;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final boolean z6 = z3;
            final Function0 function8 = function1;
            recomposeScopeImplB0.d = new Function2() { // from class: l41
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TrackDetailPlayerKt.b(str, str2, j2, j3, z6, z2, function8, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
