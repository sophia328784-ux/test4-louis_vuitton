package com.vuitton.android.presentation.screen.immersivearticle.podcast.components;

import android.content.Context;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.LongExtKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import com.vuitton.android.presentation.screen.immersivearticle.models.SeekDirection;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastControlButtonKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastPlayerKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import defpackage.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"", "sliderPosition", "", "shouldIncreaseSize", "", "textScale", "Landroidx/compose/ui/unit/Dp;", "trackPadding", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PodcastPlayerKt {
    /* JADX WARN: Code duplicated, block: B:43:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:53:0x010b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0122  */
    /* JADX WARN: Code duplicated, block: B:57:0x0126  */
    /* JADX WARN: Code duplicated, block: B:60:0x0150  */
    /* JADX WARN: Code duplicated, block: B:62:0x0162  */
    public static final void a(Modifier modifier, final AudioPlayerControllerUiState audioPlayerControllerUiState, final long j2, final Function1 function1, final Function0 function0, final Function1 function2, Composer composer, final int i2) {
        final Modifier modifier2;
        GapComposer gapComposer;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z;
        boolean z2;
        Object podcastPlayerKt$PodcastPlayer$2$1;
        MutableLongState mutableLongState;
        long j3;
        Object objX;
        final MutableState mutableState;
        float f2;
        float f3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PodcastPlayer");
        }
        Modifier modifier3 = modifierE;
        audioPlayerControllerUiState.getClass();
        long j4 = audioPlayerControllerUiState.d;
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1499432517);
        int i3 = i2 | (gapComposerH.y(audioPlayerControllerUiState) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = SnapshotLongStateKt.a(j4);
                gapComposerH.q(objX2);
            }
            MutableLongState mutableLongState2 = (MutableLongState) objX2;
            long j5 = j2 - 2000;
            Long lValueOf = Long.valueOf(j4);
            boolean zY = gapComposerH.y(audioPlayerControllerUiState);
            Object objX3 = gapComposerH.x();
            if (zY) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX3 == composer$Companion$Empty$1) {
                }
                EffectsKt.e(gapComposerH, lValueOf, (Function2) objX3);
                PlayerState playerState = audioPlayerControllerUiState.f53245b;
                boolean zY2 = gapComposerH.y(audioPlayerControllerUiState) | gapComposerH.e(j5);
                if ((i3 & 7168) == 2048) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zY2 | z;
                Object objX4 = gapComposerH.x();
                if (!z2 || objX4 == composer$Companion$Empty$1) {
                    mutableLongState = mutableLongState2;
                    j3 = j5;
                    podcastPlayerKt$PodcastPlayer$2$1 = new PodcastPlayerKt$PodcastPlayer$2$1(audioPlayerControllerUiState, j3, function1, mutableLongState, null);
                    gapComposerH.q(podcastPlayerKt$PodcastPlayer$2$1);
                } else {
                    podcastPlayerKt$PodcastPlayer$2$1 = objX4;
                    mutableLongState = mutableLongState2;
                    j3 = j5;
                }
                EffectsKt.e(gapComposerH, playerState, (Function2) podcastPlayerKt$PodcastPlayer$2$1);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    f2 = 1.3f;
                } else {
                    f2 = 1.0f;
                }
                final State stateB = AnimateAsStateKt.b(f2, AnimationSpecKt.b(0.75f, 200.0f, 4, null), "textScale", gapComposerH, 3120, 20);
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    gapComposerH.L(1935639167);
                    f3 = LVAppDesignKitTheme.l(gapComposerH).d;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1935706623);
                    f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    gapComposerH.Z(false);
                }
                final State stateA = AnimateAsStateKt.a(f3, AnimationSpecKt.b(0.75f, 200.0f, 4, null), "trackPadding", null, gapComposerH, 432, 8);
                gapComposer = gapComposerH;
                modifier2 = modifier3;
                final MutableLongState mutableLongState3 = mutableLongState;
                final long j6 = j3;
                CompositionLocalKt.a(CompositionLocalsKt.n.c(LayoutDirection.Ltr), ComposableLambdaKt.b(436296453, new Function2() { // from class: ro0
                    /* JADX WARN: Code duplicated, block: B:37:0x0250  */
                    /* JADX WARN: Code duplicated, block: B:38:0x025c  */
                    /* JADX WARN: Code duplicated, block: B:44:0x027c  */
                    /* JADX WARN: Code duplicated, block: B:47:0x028e  */
                    /* JADX WARN: Code duplicated, block: B:50:0x02eb  */
                    /* JADX WARN: Code duplicated, block: B:52:0x02f4  */
                    /* JADX WARN: Code duplicated, block: B:54:0x02fc  */
                    /* JADX WARN: Code duplicated, block: B:58:0x0345  */
                    /* JADX WARN: Code duplicated, block: B:61:0x0376  */
                    /* JADX WARN: Code duplicated, block: B:62:0x0386  */
                    /* JADX WARN: Code duplicated, block: B:65:0x0399  */
                    /* JADX WARN: Code duplicated, block: B:66:0x03a1  */
                    /* JADX WARN: Code duplicated, block: B:70:0x03c9  */
                    /* JADX WARN: Code duplicated, block: B:74:0x041c  */
                    /* JADX WARN: Code duplicated, block: B:76:0x0431  */
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer$Companion$Empty$1 composer$Companion$Empty$3;
                        final MutableLongState mutableLongState4;
                        MutableLongState mutableLongState5;
                        Composer$Companion$Empty$1 composer$Companion$Empty$4;
                        MutableState mutableState2;
                        Object objX5;
                        MutableLongState mutableLongState6;
                        Function1 function3;
                        long j7;
                        boolean zE;
                        Object objX6;
                        Function1 function4;
                        Object objX7;
                        final Function1 function5;
                        RowMeasurePolicy rowMeasurePolicyA;
                        int iHashCode;
                        PersistentCompositionLocalMap persistentCompositionLocalMapN;
                        Modifier modifierC;
                        final Function1 function6;
                        boolean zK;
                        Object objX8;
                        AudioPlayerControllerUiState audioPlayerControllerUiState2;
                        PlayerState playerState2;
                        PlayerState playerState3;
                        int i4;
                        String string;
                        Function0 function7;
                        boolean zK2;
                        Object objX9;
                        boolean zK3;
                        Object objX10;
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        Modifier modifierE2 = modifier2;
                        if (modifierE2 != null) {
                            modifierE2 = a.e(modifierE2, "PodcastPlayer$lambda$10");
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierD = SizeKt.d(modifierE2, 1.0f);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                            ComposeUiNode.b0.getClass();
                            Function0 function8 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function8);
                            } else {
                                composer2.o();
                            }
                            Function2 function9 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, columnMeasurePolicyA, function9);
                            Function2 function10 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN2, function10);
                            Integer numValueOf = Integer.valueOf(iHashCode2);
                            Function2 function11 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function11);
                            Function1 function12 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function12);
                            Function2 function13 = ComposeUiNode.Companion.d;
                            Modifier modifierK = PaddingKt.k(n00.c(composer2, modifierC2, function13, "PodcastPlayer$lambda$10", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, composer2, 6);
                            int iHashCode3 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                            Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierK);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function8);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA2, function9);
                            Updater.c(composer2, persistentCompositionLocalMapN3, function10);
                            cj.s(iHashCode3, composer2, function11, composer2, function12);
                            DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer2, modifierC3, function13, "PodcastPlayer$lambda$10");
                            State state = stateB;
                            float fFloatValue = ((Number) state.getF10755b()).floatValue();
                            Modifier modifierA = ScaleKt.a(dTFunctionNameModifierF, fFloatValue, fFloatValue);
                            final Context context2 = context;
                            boolean zY3 = composer2.y(context2);
                            Object objX11 = composer2.x();
                            MutableLongState mutableLongState7 = mutableLongState3;
                            Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                            if (zY3 || objX11 == composer$Companion$Empty$5) {
                                objX11 = new xg0(context2, mutableLongState7, 23);
                                composer2.q(objX11);
                            }
                            TextKt.c(LongExtKt.c(mutableLongState7.b()), ModifierExtKt.a(modifierA, null, (Function1) objX11, 3), LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PodcastPlayer$lambda$10");
                            float fFloatValue2 = ((Number) state.getF10755b()).floatValue();
                            Modifier modifierA2 = ScaleKt.a(dTFunctionNameModifier, fFloatValue2, fFloatValue2);
                            boolean zY4 = composer2.y(context2);
                            final long j8 = j2;
                            boolean zE2 = zY4 | composer2.e(j8);
                            Object objX12 = composer2.x();
                            if (zE2) {
                                composer$Companion$Empty$3 = composer$Companion$Empty$5;
                            } else {
                                composer$Companion$Empty$3 = composer$Companion$Empty$5;
                                if (objX12 != composer$Companion$Empty$3) {
                                    mutableLongState4 = mutableLongState7;
                                }
                                mutableLongState5 = mutableLongState4;
                                composer$Companion$Empty$4 = composer$Companion$Empty$3;
                                TextKt.c(LongExtKt.c(mutableLongState4.b() - j8), ModifierExtKt.a(modifierA2, null, (Function1) objX12, 3), LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                                composer2.r();
                                Modifier modifierK2 = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), ((Dp) stateA.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                float fB = mutableLongState5.b();
                                float f4 = j8;
                                mutableState2 = mutableState;
                                boolean zBooleanValue = ((Boolean) mutableState2.getF10755b()).booleanValue();
                                objX5 = composer2.x();
                                if (objX5 == composer$Companion$Empty$4) {
                                    mutableLongState6 = mutableLongState5;
                                    objX5 = new tb(mutableLongState6, 1);
                                    composer2.q(objX5);
                                } else {
                                    mutableLongState6 = mutableLongState5;
                                }
                                Function1 function14 = (Function1) objX5;
                                function3 = function1;
                                boolean zK4 = composer2.K(function3);
                                j7 = j6;
                                zE = zK4 | composer2.e(j7);
                                objX6 = composer2.x();
                                if (!zE || objX6 == composer$Companion$Empty$4) {
                                    function4 = function3;
                                    objX6 = new uo0(function4, j7, mutableLongState6);
                                    composer2.q(objX6);
                                } else {
                                    function4 = function3;
                                }
                                Function0 function15 = (Function0) objX6;
                                objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$4) {
                                    objX7 = new c30(27, mutableState2);
                                    composer2.q(objX7);
                                }
                                function5 = function4;
                                PodcastTrackSliderKt.a(modifierK2, fB, f4, zBooleanValue, function14, function15, (Function1) objX7, composer2, 1597440, 0);
                                composer2.r();
                                Modifier modifierM = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                                rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.l, composer2, 54);
                                iHashCode = Long.hashCode(composer2.getT());
                                persistentCompositionLocalMapN = composer2.n();
                                modifierC = ComposedModifierKt.c(composer2, modifierM);
                                if (composer2.getF7976a() != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function8);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, rowMeasurePolicyA, function9);
                                Updater.c(composer2, persistentCompositionLocalMapN, function10);
                                cj.s(iHashCode, composer2, function11, composer2, function12);
                                Updater.c(composer2, modifierC, function13);
                                int i5 = LVAppDesignKitTheme.g(composer2).j0;
                                String string2 = context2.getString(R.string.alt_back_audio, "15");
                                string2.getClass();
                                float f5 = LVAppDesignKitTheme.d(composer2).t;
                                boolean zK5 = composer2.K(function5);
                                function6 = function2;
                                zK = zK5 | composer2.K(function6);
                                objX8 = composer2.x();
                                if (zK || objX8 == composer$Companion$Empty$4) {
                                    final int i6 = 0;
                                    objX8 = new Function0() { // from class: vo0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            switch (i6) {
                                                case 0:
                                                    function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                    function6.invoke(SeekDirection.LESS);
                                                    break;
                                                default:
                                                    function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                    function6.invoke(SeekDirection.PLUS);
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX8);
                                }
                                PodcastControlButtonKt.a(null, i5, string2, f5, (Function0) objX8, composer2, 0, 1);
                                SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                                audioPlayerControllerUiState2 = audioPlayerControllerUiState;
                                playerState2 = audioPlayerControllerUiState2.f53245b;
                                playerState3 = PlayerState.PLAYING;
                                if (playerState2 == playerState3) {
                                    composer2.L(339913963);
                                    i4 = LVAppDesignKitTheme.g(composer2).W;
                                    composer2.F();
                                } else {
                                    composer2.L(339997260);
                                    i4 = LVAppDesignKitTheme.g(composer2).X;
                                    composer2.F();
                                }
                                if (audioPlayerControllerUiState2.f53245b == playerState3) {
                                    string = context2.getString(R.string.alt_pause);
                                } else {
                                    string = context2.getString(R.string.alt_play);
                                }
                                string.getClass();
                                float f6 = LVAppDesignKitTheme.d(composer2).A;
                                boolean zY5 = composer2.y(audioPlayerControllerUiState2) | composer2.K(function5);
                                function7 = function0;
                                zK2 = zY5 | composer2.K(function7);
                                objX9 = composer2.x();
                                if (zK2 || objX9 == composer$Companion$Empty$4) {
                                    objX9 = new sm0((Object) audioPlayerControllerUiState2, function5, function7, 5);
                                    composer2.q(objX9);
                                }
                                PodcastControlButtonKt.a(null, i4, string, f6, (Function0) objX9, composer2, 0, 1);
                                SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                                int i7 = LVAppDesignKitTheme.g(composer2).k0;
                                String strB = StringResources_androidKt.b(R.string.alt_forward_audio, new Object[]{"15"}, composer2);
                                float f7 = LVAppDesignKitTheme.d(composer2).t;
                                zK3 = composer2.K(function5) | composer2.K(function6);
                                objX10 = composer2.x();
                                if (zK3 || objX10 == composer$Companion$Empty$4) {
                                    final int i8 = 1;
                                    objX10 = new Function0() { // from class: vo0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            switch (i8) {
                                                case 0:
                                                    function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                    function6.invoke(SeekDirection.LESS);
                                                    break;
                                                default:
                                                    function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                    function6.invoke(SeekDirection.PLUS);
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX10);
                                }
                                PodcastControlButtonKt.a(null, i7, strB, f7, (Function0) objX10, composer2, 0, 1);
                                composer2.r();
                            }
                            mutableLongState4 = mutableLongState7;
                            objX12 = new Function1() { // from class: to0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj3;
                                    semanticsPropertyReceiver.getClass();
                                    MutableLongState mutableLongState8 = mutableLongState4;
                                    long jB = mutableLongState8.b();
                                    long j9 = j8;
                                    String string3 = context2.getString(R.string.alt_timestamp_remaining, LongExtKt.a(jB - j9), LongExtKt.b(mutableLongState8.b() - j9));
                                    string3.getClass();
                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, string3);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX12);
                            mutableLongState5 = mutableLongState4;
                            composer$Companion$Empty$4 = composer$Companion$Empty$3;
                            TextKt.c(LongExtKt.c(mutableLongState4.b() - j8), ModifierExtKt.a(modifierA2, null, (Function1) objX12, 3), LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                            composer2.r();
                            Modifier modifierK3 = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), ((Dp) stateA.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            float fB2 = mutableLongState5.b();
                            float f8 = j8;
                            mutableState2 = mutableState;
                            boolean zBooleanValue2 = ((Boolean) mutableState2.getF10755b()).booleanValue();
                            objX5 = composer2.x();
                            if (objX5 == composer$Companion$Empty$4) {
                                mutableLongState6 = mutableLongState5;
                                objX5 = new tb(mutableLongState6, 1);
                                composer2.q(objX5);
                            } else {
                                mutableLongState6 = mutableLongState5;
                            }
                            Function1 function16 = (Function1) objX5;
                            function3 = function1;
                            boolean zK6 = composer2.K(function3);
                            j7 = j6;
                            zE = zK6 | composer2.e(j7);
                            objX6 = composer2.x();
                            if (zE) {
                                function4 = function3;
                                objX6 = new uo0(function4, j7, mutableLongState6);
                                composer2.q(objX6);
                            } else {
                                function4 = function3;
                                objX6 = new uo0(function4, j7, mutableLongState6);
                                composer2.q(objX6);
                            }
                            Function0 function17 = (Function0) objX6;
                            objX7 = composer2.x();
                            if (objX7 == composer$Companion$Empty$4) {
                                objX7 = new c30(27, mutableState2);
                                composer2.q(objX7);
                            }
                            function5 = function4;
                            PodcastTrackSliderKt.a(modifierK3, fB2, f8, zBooleanValue2, function16, function17, (Function1) objX7, composer2, 1597440, 0);
                            composer2.r();
                            Modifier modifierM2 = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.l, composer2, 54);
                            iHashCode = Long.hashCode(composer2.getT());
                            persistentCompositionLocalMapN = composer2.n();
                            modifierC = ComposedModifierKt.c(composer2, modifierM2);
                            if (composer2.getF7976a() != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function8);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA, function9);
                            Updater.c(composer2, persistentCompositionLocalMapN, function10);
                            cj.s(iHashCode, composer2, function11, composer2, function12);
                            Updater.c(composer2, modifierC, function13);
                            int i9 = LVAppDesignKitTheme.g(composer2).j0;
                            String string3 = context2.getString(R.string.alt_back_audio, "15");
                            string3.getClass();
                            float f9 = LVAppDesignKitTheme.d(composer2).t;
                            boolean zK7 = composer2.K(function5);
                            function6 = function2;
                            zK = zK7 | composer2.K(function6);
                            objX8 = composer2.x();
                            if (zK) {
                                final int i10 = 0;
                                objX8 = new Function0() { // from class: vo0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i10) {
                                            case 0:
                                                function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                function6.invoke(SeekDirection.LESS);
                                                break;
                                            default:
                                                function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                function6.invoke(SeekDirection.PLUS);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX8);
                            } else {
                                final int i11 = 0;
                                objX8 = new Function0() { // from class: vo0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i11) {
                                            case 0:
                                                function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                function6.invoke(SeekDirection.LESS);
                                                break;
                                            default:
                                                function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                function6.invoke(SeekDirection.PLUS);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX8);
                            }
                            PodcastControlButtonKt.a(null, i9, string3, f9, (Function0) objX8, composer2, 0, 1);
                            SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                            audioPlayerControllerUiState2 = audioPlayerControllerUiState;
                            playerState2 = audioPlayerControllerUiState2.f53245b;
                            playerState3 = PlayerState.PLAYING;
                            if (playerState2 == playerState3) {
                                composer2.L(339913963);
                                i4 = LVAppDesignKitTheme.g(composer2).W;
                                composer2.F();
                            } else {
                                composer2.L(339997260);
                                i4 = LVAppDesignKitTheme.g(composer2).X;
                                composer2.F();
                            }
                            if (audioPlayerControllerUiState2.f53245b == playerState3) {
                                string = context2.getString(R.string.alt_pause);
                            } else {
                                string = context2.getString(R.string.alt_play);
                            }
                            string.getClass();
                            float f10 = LVAppDesignKitTheme.d(composer2).A;
                            boolean zY6 = composer2.y(audioPlayerControllerUiState2) | composer2.K(function5);
                            function7 = function0;
                            zK2 = zY6 | composer2.K(function7);
                            objX9 = composer2.x();
                            if (zK2) {
                                objX9 = new sm0((Object) audioPlayerControllerUiState2, function5, function7, 5);
                                composer2.q(objX9);
                            } else {
                                objX9 = new sm0((Object) audioPlayerControllerUiState2, function5, function7, 5);
                                composer2.q(objX9);
                            }
                            PodcastControlButtonKt.a(null, i4, string, f10, (Function0) objX9, composer2, 0, 1);
                            SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                            int i12 = LVAppDesignKitTheme.g(composer2).k0;
                            String strB2 = StringResources_androidKt.b(R.string.alt_forward_audio, new Object[]{"15"}, composer2);
                            float f11 = LVAppDesignKitTheme.d(composer2).t;
                            zK3 = composer2.K(function5) | composer2.K(function6);
                            objX10 = composer2.x();
                            if (zK3) {
                                final int i13 = 1;
                                objX10 = new Function0() { // from class: vo0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i13) {
                                            case 0:
                                                function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                function6.invoke(SeekDirection.LESS);
                                                break;
                                            default:
                                                function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                function6.invoke(SeekDirection.PLUS);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX10);
                            } else {
                                final int i14 = 1;
                                objX10 = new Function0() { // from class: vo0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i14) {
                                            case 0:
                                                function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                function6.invoke(SeekDirection.LESS);
                                                break;
                                            default:
                                                function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                function6.invoke(SeekDirection.PLUS);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX10);
                            }
                            PodcastControlButtonKt.a(null, i12, strB2, f11, (Function0) objX10, composer2, 0, 1);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, 56);
            }
            objX3 = new PodcastPlayerKt$PodcastPlayer$1$1(audioPlayerControllerUiState, mutableLongState2, null);
            gapComposerH.q(objX3);
            EffectsKt.e(gapComposerH, lValueOf, (Function2) objX3);
            PlayerState playerState2 = audioPlayerControllerUiState.f53245b;
            boolean zY3 = gapComposerH.y(audioPlayerControllerUiState) | gapComposerH.e(j5);
            if ((i3 & 7168) == 2048) {
                z = true;
            } else {
                z = false;
            }
            z2 = zY3 | z;
            Object objX5 = gapComposerH.x();
            if (z2) {
                mutableLongState = mutableLongState2;
                j3 = j5;
                podcastPlayerKt$PodcastPlayer$2$1 = new PodcastPlayerKt$PodcastPlayer$2$1(audioPlayerControllerUiState, j3, function1, mutableLongState, null);
                gapComposerH.q(podcastPlayerKt$PodcastPlayer$2$1);
            } else {
                mutableLongState = mutableLongState2;
                j3 = j5;
                podcastPlayerKt$PodcastPlayer$2$1 = new PodcastPlayerKt$PodcastPlayer$2$1(audioPlayerControllerUiState, j3, function1, mutableLongState, null);
                gapComposerH.q(podcastPlayerKt$PodcastPlayer$2$1);
            }
            EffectsKt.e(gapComposerH, playerState2, (Function2) podcastPlayerKt$PodcastPlayer$2$1);
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                f2 = 1.3f;
            } else {
                f2 = 1.0f;
            }
            final State stateB2 = AnimateAsStateKt.b(f2, AnimationSpecKt.b(0.75f, 200.0f, 4, null), "textScale", gapComposerH, 3120, 20);
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(1935639167);
                f3 = LVAppDesignKitTheme.l(gapComposerH).d;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1935706623);
                f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                gapComposerH.Z(false);
            }
            final State stateA2 = AnimateAsStateKt.a(f3, AnimationSpecKt.b(0.75f, 200.0f, 4, null), "trackPadding", null, gapComposerH, 432, 8);
            gapComposer = gapComposerH;
            modifier2 = modifier3;
            final MutableLongState mutableLongState4 = mutableLongState;
            final long j7 = j3;
            CompositionLocalKt.a(CompositionLocalsKt.n.c(LayoutDirection.Ltr), ComposableLambdaKt.b(436296453, new Function2() { // from class: ro0
                /* JADX WARN: Code duplicated, block: B:37:0x0250  */
                /* JADX WARN: Code duplicated, block: B:38:0x025c  */
                /* JADX WARN: Code duplicated, block: B:44:0x027c  */
                /* JADX WARN: Code duplicated, block: B:47:0x028e  */
                /* JADX WARN: Code duplicated, block: B:50:0x02eb  */
                /* JADX WARN: Code duplicated, block: B:52:0x02f4  */
                /* JADX WARN: Code duplicated, block: B:54:0x02fc  */
                /* JADX WARN: Code duplicated, block: B:58:0x0345  */
                /* JADX WARN: Code duplicated, block: B:61:0x0376  */
                /* JADX WARN: Code duplicated, block: B:62:0x0386  */
                /* JADX WARN: Code duplicated, block: B:65:0x0399  */
                /* JADX WARN: Code duplicated, block: B:66:0x03a1  */
                /* JADX WARN: Code duplicated, block: B:70:0x03c9  */
                /* JADX WARN: Code duplicated, block: B:74:0x041c  */
                /* JADX WARN: Code duplicated, block: B:76:0x0431  */
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer$Companion$Empty$1 composer$Companion$Empty$3;
                    final MutableLongState mutableLongState5;
                    MutableLongState mutableLongState6;
                    Composer$Companion$Empty$1 composer$Companion$Empty$4;
                    MutableState mutableState2;
                    Object objX6;
                    MutableLongState mutableLongState7;
                    Function1 function3;
                    long j8;
                    boolean zE;
                    Object objX7;
                    Function1 function4;
                    Object objX8;
                    final Function1 function5;
                    RowMeasurePolicy rowMeasurePolicyA;
                    int iHashCode;
                    PersistentCompositionLocalMap persistentCompositionLocalMapN;
                    Modifier modifierC;
                    final Function1 function6;
                    boolean zK;
                    Object objX9;
                    AudioPlayerControllerUiState audioPlayerControllerUiState2;
                    PlayerState playerState3;
                    PlayerState playerState4;
                    int i4;
                    String string;
                    Function0 function7;
                    boolean zK2;
                    Object objX10;
                    boolean zK3;
                    Object objX11;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE2 = modifier2;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "PodcastPlayer$lambda$10");
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierD = SizeKt.d(modifierE2, 1.0f);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                        ComposeUiNode.b0.getClass();
                        Function0 function8 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Function2 function9 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA, function9);
                        Function2 function10 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN2, function10);
                        Integer numValueOf = Integer.valueOf(iHashCode2);
                        Function2 function11 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function11);
                        Function1 function12 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function12);
                        Function2 function13 = ComposeUiNode.Companion.d;
                        Modifier modifierK = PaddingKt.k(n00.c(composer2, modifierC2, function13, "PodcastPlayer$lambda$10", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, composer2, 6);
                        int iHashCode3 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierK);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA2, function9);
                        Updater.c(composer2, persistentCompositionLocalMapN3, function10);
                        cj.s(iHashCode3, composer2, function11, composer2, function12);
                        DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer2, modifierC3, function13, "PodcastPlayer$lambda$10");
                        State state = stateB2;
                        float fFloatValue = ((Number) state.getF10755b()).floatValue();
                        Modifier modifierA = ScaleKt.a(dTFunctionNameModifierF, fFloatValue, fFloatValue);
                        final Context context2 = context;
                        boolean zY4 = composer2.y(context2);
                        Object objX12 = composer2.x();
                        MutableLongState mutableLongState8 = mutableLongState4;
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                        if (zY4 || objX12 == composer$Companion$Empty$5) {
                            objX12 = new xg0(context2, mutableLongState8, 23);
                            composer2.q(objX12);
                        }
                        TextKt.c(LongExtKt.c(mutableLongState8.b()), ModifierExtKt.a(modifierA, null, (Function1) objX12, 3), LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PodcastPlayer$lambda$10");
                        float fFloatValue2 = ((Number) state.getF10755b()).floatValue();
                        Modifier modifierA2 = ScaleKt.a(dTFunctionNameModifier, fFloatValue2, fFloatValue2);
                        boolean zY5 = composer2.y(context2);
                        final long j9 = j2;
                        boolean zE2 = zY5 | composer2.e(j9);
                        Object objX13 = composer2.x();
                        if (zE2) {
                            composer$Companion$Empty$3 = composer$Companion$Empty$5;
                        } else {
                            composer$Companion$Empty$3 = composer$Companion$Empty$5;
                            if (objX13 != composer$Companion$Empty$3) {
                                mutableLongState5 = mutableLongState8;
                            }
                            mutableLongState6 = mutableLongState5;
                            composer$Companion$Empty$4 = composer$Companion$Empty$3;
                            TextKt.c(LongExtKt.c(mutableLongState5.b() - j9), ModifierExtKt.a(modifierA2, null, (Function1) objX13, 3), LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                            composer2.r();
                            Modifier modifierK3 = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), ((Dp) stateA2.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            float fB2 = mutableLongState6.b();
                            float f8 = j9;
                            mutableState2 = mutableState;
                            boolean zBooleanValue2 = ((Boolean) mutableState2.getF10755b()).booleanValue();
                            objX6 = composer2.x();
                            if (objX6 == composer$Companion$Empty$4) {
                                mutableLongState7 = mutableLongState6;
                                objX6 = new tb(mutableLongState7, 1);
                                composer2.q(objX6);
                            } else {
                                mutableLongState7 = mutableLongState6;
                            }
                            Function1 function16 = (Function1) objX6;
                            function3 = function1;
                            boolean zK6 = composer2.K(function3);
                            j8 = j7;
                            zE = zK6 | composer2.e(j8);
                            objX7 = composer2.x();
                            if (!zE || objX7 == composer$Companion$Empty$4) {
                                function4 = function3;
                                objX7 = new uo0(function4, j8, mutableLongState7);
                                composer2.q(objX7);
                            } else {
                                function4 = function3;
                            }
                            Function0 function17 = (Function0) objX7;
                            objX8 = composer2.x();
                            if (objX8 == composer$Companion$Empty$4) {
                                objX8 = new c30(27, mutableState2);
                                composer2.q(objX8);
                            }
                            function5 = function4;
                            PodcastTrackSliderKt.a(modifierK3, fB2, f8, zBooleanValue2, function16, function17, (Function1) objX8, composer2, 1597440, 0);
                            composer2.r();
                            Modifier modifierM2 = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.l, composer2, 54);
                            iHashCode = Long.hashCode(composer2.getT());
                            persistentCompositionLocalMapN = composer2.n();
                            modifierC = ComposedModifierKt.c(composer2, modifierM2);
                            if (composer2.getF7976a() != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function8);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA, function9);
                            Updater.c(composer2, persistentCompositionLocalMapN, function10);
                            cj.s(iHashCode, composer2, function11, composer2, function12);
                            Updater.c(composer2, modifierC, function13);
                            int i9 = LVAppDesignKitTheme.g(composer2).j0;
                            String string3 = context2.getString(R.string.alt_back_audio, "15");
                            string3.getClass();
                            float f9 = LVAppDesignKitTheme.d(composer2).t;
                            boolean zK7 = composer2.K(function5);
                            function6 = function2;
                            zK = zK7 | composer2.K(function6);
                            objX9 = composer2.x();
                            if (zK || objX9 == composer$Companion$Empty$4) {
                                final int i11 = 0;
                                objX9 = new Function0() { // from class: vo0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i11) {
                                            case 0:
                                                function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                function6.invoke(SeekDirection.LESS);
                                                break;
                                            default:
                                                function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                function6.invoke(SeekDirection.PLUS);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX9);
                            }
                            PodcastControlButtonKt.a(null, i9, string3, f9, (Function0) objX9, composer2, 0, 1);
                            SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                            audioPlayerControllerUiState2 = audioPlayerControllerUiState;
                            playerState3 = audioPlayerControllerUiState2.f53245b;
                            playerState4 = PlayerState.PLAYING;
                            if (playerState3 == playerState4) {
                                composer2.L(339913963);
                                i4 = LVAppDesignKitTheme.g(composer2).W;
                                composer2.F();
                            } else {
                                composer2.L(339997260);
                                i4 = LVAppDesignKitTheme.g(composer2).X;
                                composer2.F();
                            }
                            if (audioPlayerControllerUiState2.f53245b == playerState4) {
                                string = context2.getString(R.string.alt_pause);
                            } else {
                                string = context2.getString(R.string.alt_play);
                            }
                            string.getClass();
                            float f10 = LVAppDesignKitTheme.d(composer2).A;
                            boolean zY6 = composer2.y(audioPlayerControllerUiState2) | composer2.K(function5);
                            function7 = function0;
                            zK2 = zY6 | composer2.K(function7);
                            objX10 = composer2.x();
                            if (zK2 || objX10 == composer$Companion$Empty$4) {
                                objX10 = new sm0((Object) audioPlayerControllerUiState2, function5, function7, 5);
                                composer2.q(objX10);
                            }
                            PodcastControlButtonKt.a(null, i4, string, f10, (Function0) objX10, composer2, 0, 1);
                            SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                            int i12 = LVAppDesignKitTheme.g(composer2).k0;
                            String strB2 = StringResources_androidKt.b(R.string.alt_forward_audio, new Object[]{"15"}, composer2);
                            float f11 = LVAppDesignKitTheme.d(composer2).t;
                            zK3 = composer2.K(function5) | composer2.K(function6);
                            objX11 = composer2.x();
                            if (zK3 || objX11 == composer$Companion$Empty$4) {
                                final int i14 = 1;
                                objX11 = new Function0() { // from class: vo0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i14) {
                                            case 0:
                                                function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                                function6.invoke(SeekDirection.LESS);
                                                break;
                                            default:
                                                function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                                function6.invoke(SeekDirection.PLUS);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX11);
                            }
                            PodcastControlButtonKt.a(null, i12, strB2, f11, (Function0) objX11, composer2, 0, 1);
                            composer2.r();
                        }
                        mutableLongState5 = mutableLongState8;
                        objX13 = new Function1() { // from class: to0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj3;
                                semanticsPropertyReceiver.getClass();
                                MutableLongState mutableLongState9 = mutableLongState5;
                                long jB = mutableLongState9.b();
                                long j10 = j9;
                                String string4 = context2.getString(R.string.alt_timestamp_remaining, LongExtKt.a(jB - j10), LongExtKt.b(mutableLongState9.b() - j10));
                                string4.getClass();
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string4);
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX13);
                        mutableLongState6 = mutableLongState5;
                        composer$Companion$Empty$4 = composer$Companion$Empty$3;
                        TextKt.c(LongExtKt.c(mutableLongState5.b() - j9), ModifierExtKt.a(modifierA2, null, (Function1) objX13, 3), LVAppDesignKitTheme.c(composer2).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                        composer2.r();
                        Modifier modifierK4 = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), ((Dp) stateA2.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        float fB3 = mutableLongState6.b();
                        float f12 = j9;
                        mutableState2 = mutableState;
                        boolean zBooleanValue3 = ((Boolean) mutableState2.getF10755b()).booleanValue();
                        objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$4) {
                            mutableLongState7 = mutableLongState6;
                            objX6 = new tb(mutableLongState7, 1);
                            composer2.q(objX6);
                        } else {
                            mutableLongState7 = mutableLongState6;
                        }
                        Function1 function18 = (Function1) objX6;
                        function3 = function1;
                        boolean zK8 = composer2.K(function3);
                        j8 = j7;
                        zE = zK8 | composer2.e(j8);
                        objX7 = composer2.x();
                        if (zE) {
                            function4 = function3;
                            objX7 = new uo0(function4, j8, mutableLongState7);
                            composer2.q(objX7);
                        } else {
                            function4 = function3;
                            objX7 = new uo0(function4, j8, mutableLongState7);
                            composer2.q(objX7);
                        }
                        Function0 function19 = (Function0) objX7;
                        objX8 = composer2.x();
                        if (objX8 == composer$Companion$Empty$4) {
                            objX8 = new c30(27, mutableState2);
                            composer2.q(objX8);
                        }
                        function5 = function4;
                        PodcastTrackSliderKt.a(modifierK4, fB3, f12, zBooleanValue3, function18, function19, (Function1) objX8, composer2, 1597440, 0);
                        composer2.r();
                        Modifier modifierM3 = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.l, composer2, 54);
                        iHashCode = Long.hashCode(composer2.getT());
                        persistentCompositionLocalMapN = composer2.n();
                        modifierC = ComposedModifierKt.c(composer2, modifierM3);
                        if (composer2.getF7976a() != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function9);
                        Updater.c(composer2, persistentCompositionLocalMapN, function10);
                        cj.s(iHashCode, composer2, function11, composer2, function12);
                        Updater.c(composer2, modifierC, function13);
                        int i10 = LVAppDesignKitTheme.g(composer2).j0;
                        String string4 = context2.getString(R.string.alt_back_audio, "15");
                        string4.getClass();
                        float f13 = LVAppDesignKitTheme.d(composer2).t;
                        boolean zK9 = composer2.K(function5);
                        function6 = function2;
                        zK = zK9 | composer2.K(function6);
                        objX9 = composer2.x();
                        if (zK) {
                            final int i13 = 0;
                            objX9 = new Function0() { // from class: vo0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i13) {
                                        case 0:
                                            function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                            function6.invoke(SeekDirection.LESS);
                                            break;
                                        default:
                                            function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                            function6.invoke(SeekDirection.PLUS);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX9);
                        } else {
                            final int i15 = 0;
                            objX9 = new Function0() { // from class: vo0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i15) {
                                        case 0:
                                            function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                            function6.invoke(SeekDirection.LESS);
                                            break;
                                        default:
                                            function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                            function6.invoke(SeekDirection.PLUS);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX9);
                        }
                        PodcastControlButtonKt.a(null, i10, string4, f13, (Function0) objX9, composer2, 0, 1);
                        SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                        audioPlayerControllerUiState2 = audioPlayerControllerUiState;
                        playerState3 = audioPlayerControllerUiState2.f53245b;
                        playerState4 = PlayerState.PLAYING;
                        if (playerState3 == playerState4) {
                            composer2.L(339913963);
                            i4 = LVAppDesignKitTheme.g(composer2).W;
                            composer2.F();
                        } else {
                            composer2.L(339997260);
                            i4 = LVAppDesignKitTheme.g(composer2).X;
                            composer2.F();
                        }
                        if (audioPlayerControllerUiState2.f53245b == playerState4) {
                            string = context2.getString(R.string.alt_pause);
                        } else {
                            string = context2.getString(R.string.alt_play);
                        }
                        string.getClass();
                        float f14 = LVAppDesignKitTheme.d(composer2).A;
                        boolean zY7 = composer2.y(audioPlayerControllerUiState2) | composer2.K(function5);
                        function7 = function0;
                        zK2 = zY7 | composer2.K(function7);
                        objX10 = composer2.x();
                        if (zK2) {
                            objX10 = new sm0((Object) audioPlayerControllerUiState2, function5, function7, 5);
                            composer2.q(objX10);
                        } else {
                            objX10 = new sm0((Object) audioPlayerControllerUiState2, function5, function7, 5);
                            composer2.q(objX10);
                        }
                        PodcastControlButtonKt.a(null, i4, string, f14, (Function0) objX10, composer2, 0, 1);
                        SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("PodcastPlayer$lambda$10"), LVAppDesignKitTheme.l(composer2).f48417f));
                        int i16 = LVAppDesignKitTheme.g(composer2).k0;
                        String strB3 = StringResources_androidKt.b(R.string.alt_forward_audio, new Object[]{"15"}, composer2);
                        float f15 = LVAppDesignKitTheme.d(composer2).t;
                        zK3 = composer2.K(function5) | composer2.K(function6);
                        objX11 = composer2.x();
                        if (zK3) {
                            final int i17 = 1;
                            objX11 = new Function0() { // from class: vo0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i17) {
                                        case 0:
                                            function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                            function6.invoke(SeekDirection.LESS);
                                            break;
                                        default:
                                            function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                            function6.invoke(SeekDirection.PLUS);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX11);
                        } else {
                            final int i18 = 1;
                            objX11 = new Function0() { // from class: vo0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i18) {
                                        case 0:
                                            function5.invoke(AudioPlayerEvent.GoBack.f53249a);
                                            function6.invoke(SeekDirection.LESS);
                                            break;
                                        default:
                                            function5.invoke(AudioPlayerEvent.GoAhead.f53248a);
                                            function6.invoke(SeekDirection.PLUS);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX11);
                        }
                        PodcastControlButtonKt.a(null, i16, strB3, f15, (Function0) objX11, composer2, 0, 1);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(audioPlayerControllerUiState, j2, function1, function0, function2, i2) { // from class: so0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AudioPlayerControllerUiState f79843c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f79844e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f79845f;
                public final /* synthetic */ Function1 g;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(7);
                    PodcastPlayerKt.a(this.f79842b, this.f79843c, this.d, this.f79844e, this.f79845f, this.g, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
