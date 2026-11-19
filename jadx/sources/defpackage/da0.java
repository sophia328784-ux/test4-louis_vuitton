package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class da0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ExoPlayer f68490c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f68491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f68492f;

    public /* synthetic */ da0(ExoPlayer exoPlayer, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, int i2) {
        this.f68489b = i2;
        this.f68490c = exoPlayer;
        this.d = mutableState;
        this.f68491e = mutableState2;
        this.f68492f = mutableState3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f68489b;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final MutableState mutableState = this.f68492f;
        final MutableState mutableState2 = this.f68491e;
        final MutableState mutableState3 = this.d;
        final ExoPlayer exoPlayer = this.f68490c;
        final int i7 = 0;
        switch (i6) {
            case 0:
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierO = new DTFunctionNameModifier("LiveVideoPlayerComponent$lambda$18$2").o(SizeKt.f5052c);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                Modifier modifierC = ComposedModifierKt.c(composer, modifierO);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function0);
                } else {
                    composer.o();
                }
                Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer, ComposeUiNode.Companion.f9645h);
                Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                Modifier modifierG = boxScopeInstance.g(new DTFunctionNameModifier("LiveVideoPlayerComponent$lambda$18$2"), Alignment.Companion.f8587f);
                ConfigurationIconButton configurationIconButton = LVAppDesignKitTheme.f(composer).f48480e;
                if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                    composer.L(1289276101);
                    i2 = LVAppDesignKitTheme.g(composer).a0;
                } else {
                    composer.L(1289277284);
                    i2 = LVAppDesignKitTheme.g(composer).Y;
                }
                composer.F();
                boolean zY = composer.y(exoPlayer);
                Object objX = composer.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new Function0() { // from class: ea0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i8 = i7;
                            MutableState mutableState4 = mutableState3;
                            MutableState mutableState5 = mutableState2;
                            ExoPlayer exoPlayer2 = exoPlayer;
                            switch (i8) {
                                case 0:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        exoPlayer2.c();
                                    }
                                    break;
                                case 1:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                                case 2:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        if (exoPlayer2.h() == 4) {
                                            exoPlayer2.seekTo(0L);
                                            exoPlayer2.f();
                                        }
                                        exoPlayer2.c();
                                    }
                                    break;
                                default:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX);
                }
                LVIconButtonKt.b(modifierG, configurationIconButton, i2, null, null, false, 0, false, false, (Function0) objX, composer, 0, 0, 1016);
                Modifier modifierM = PaddingKt.m(boxScopeInstance.g(new DTFunctionNameModifier("LiveVideoPlayerComponent$lambda$18$2"), Alignment.Companion.d), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
                ConfigurationIconButton configurationIconButton2 = LVAppDesignKitTheme.f(composer).f48480e;
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    composer.L(1289305355);
                    i3 = LVAppDesignKitTheme.g(composer).f0;
                } else {
                    composer.L(1289306729);
                    i3 = LVAppDesignKitTheme.g(composer).e0;
                }
                composer.F();
                int i8 = i3;
                boolean zY2 = composer.y(exoPlayer);
                Object objX2 = composer.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    final int i9 = 1;
                    objX2 = new Function0() { // from class: ea0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i10 = i9;
                            MutableState mutableState4 = mutableState;
                            MutableState mutableState5 = mutableState2;
                            ExoPlayer exoPlayer2 = exoPlayer;
                            switch (i10) {
                                case 0:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        exoPlayer2.c();
                                    }
                                    break;
                                case 1:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                                case 2:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        if (exoPlayer2.h() == 4) {
                                            exoPlayer2.seekTo(0L);
                                            exoPlayer2.f();
                                        }
                                        exoPlayer2.c();
                                    }
                                    break;
                                default:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX2);
                }
                LVIconButtonKt.b(modifierM, configurationIconButton2, i8, null, null, false, 0, false, false, (Function0) objX2, composer, 0, 0, 1016);
                composer.r();
                return Unit.f71739a;
            default:
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierO2 = new DTFunctionNameModifier("VideoPlayerComponent$lambda$17$3").o(SizeKt.f5052c);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode2 = Long.hashCode(composer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierO2);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (composer2.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer2.B();
                if (composer2.getS()) {
                    composer2.C(function1);
                } else {
                    composer2.o();
                }
                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(composer2, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                Modifier modifierG2 = boxScopeInstance.g(new DTFunctionNameModifier("VideoPlayerComponent$lambda$17$3"), Alignment.Companion.f8587f);
                ConfigurationIconButton configurationIconButton3 = LVAppDesignKitTheme.f(composer2).f48480e;
                if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                    composer2.L(58035586);
                    i4 = LVAppDesignKitTheme.g(composer2).a0;
                } else {
                    composer2.L(58036769);
                    i4 = LVAppDesignKitTheme.g(composer2).Y;
                }
                composer2.F();
                int i10 = i4;
                boolean zY3 = composer2.y(exoPlayer);
                Object objX3 = composer2.x();
                if (zY3 || objX3 == composer$Companion$Empty$1) {
                    final int i11 = 2;
                    objX3 = new Function0() { // from class: ea0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i12 = i11;
                            MutableState mutableState4 = mutableState3;
                            MutableState mutableState5 = mutableState2;
                            ExoPlayer exoPlayer2 = exoPlayer;
                            switch (i12) {
                                case 0:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        exoPlayer2.c();
                                    }
                                    break;
                                case 1:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                                case 2:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        if (exoPlayer2.h() == 4) {
                                            exoPlayer2.seekTo(0L);
                                            exoPlayer2.f();
                                        }
                                        exoPlayer2.c();
                                    }
                                    break;
                                default:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer2.q(objX3);
                }
                LVIconButtonKt.b(modifierG2, configurationIconButton3, i10, null, null, false, 0, false, false, (Function0) objX3, composer2, 0, 0, 1016);
                Modifier modifierM2 = PaddingKt.m(boxScopeInstance.g(new DTFunctionNameModifier("VideoPlayerComponent$lambda$17$3"), Alignment.Companion.d), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
                ConfigurationIconButton configurationIconButton4 = LVAppDesignKitTheme.f(composer2).f48480e;
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    composer2.L(58071976);
                    i5 = LVAppDesignKitTheme.g(composer2).f0;
                } else {
                    composer2.L(58073350);
                    i5 = LVAppDesignKitTheme.g(composer2).e0;
                }
                composer2.F();
                int i12 = i5;
                boolean zY4 = composer2.y(exoPlayer);
                Object objX4 = composer2.x();
                if (zY4 || objX4 == composer$Companion$Empty$1) {
                    final int i13 = 3;
                    objX4 = new Function0() { // from class: ea0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i14 = i13;
                            MutableState mutableState4 = mutableState;
                            MutableState mutableState5 = mutableState2;
                            ExoPlayer exoPlayer2 = exoPlayer;
                            switch (i14) {
                                case 0:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        exoPlayer2.c();
                                    }
                                    break;
                                case 1:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                                case 2:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    if (exoPlayer2.isPlaying()) {
                                        exoPlayer2.pause();
                                    } else {
                                        if (exoPlayer2.h() == 4) {
                                            exoPlayer2.seekTo(0L);
                                            exoPlayer2.f();
                                        }
                                        exoPlayer2.c();
                                    }
                                    break;
                                default:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(Boolean.valueOf(!((Boolean) mutableState4.getF10755b()).booleanValue()));
                                    exoPlayer2.g(((Boolean) mutableState4.getF10755b()).booleanValue() ? 0.0f : 1.0f);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer2.q(objX4);
                }
                LVIconButtonKt.b(modifierM2, configurationIconButton4, i12, null, null, false, 0, false, false, (Function0) objX4, composer2, 0, 0, 1016);
                composer2.r();
                return Unit.f71739a;
        }
    }
}
