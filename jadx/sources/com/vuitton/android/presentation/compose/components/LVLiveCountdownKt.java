package com.vuitton.android.presentation.compose.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.core.extensions.NumberExtKt;
import com.vuitton.android.designkit.components.components.LVAnimatedDigitsKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.a50;
import defpackage.c20;
import defpackage.gv;
import java.time.Instant;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "secondsUntilEvent", "Lcom/vuitton/android/presentation/compose/components/LiveEventState;", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVLiveCountdownKt {
    /* JADX WARN: Code duplicated, block: B:64:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:67:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:70:0x0105  */
    /* JADX WARN: Code duplicated, block: B:71:0x0107  */
    /* JADX WARN: Code duplicated, block: B:77:0x0115  */
    /* JADX WARN: Code duplicated, block: B:81:0x0137  */
    /* JADX WARN: Code duplicated, block: B:84:0x016f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0176  */
    /* JADX WARN: Code duplicated, block: B:87:0x017a  */
    /* JADX WARN: Code duplicated, block: B:89:0x01f6  */
    public static final void a(Modifier modifier, long j2, Instant instant, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        long j3;
        long j4;
        Modifier modifier2;
        int i5;
        Context context;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableLongState mutableLongState;
        Object objX2;
        MutableState mutableState;
        boolean z;
        boolean z2;
        Object lVLiveCountdownKt$LVLiveCountdown$1$1;
        boolean zY;
        Object objX3;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVLiveCountdown-sW7UJKQ");
        }
        instant.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1376037926);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            j3 = j2;
            i4 |= ((i3 & 2) == 0 && gapComposerH.e(j3)) ? 32 : 16;
        } else {
            j3 = j2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(instant) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVLiveCountdown-sW7UJKQ");
                }
                if ((i3 & 2) != 0) {
                    i4 &= -113;
                    modifier2 = dTFunctionNameModifier;
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                }
                i5 = i4;
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotLongStateKt.a(instant.getEpochSecond() - (System.currentTimeMillis() / 1000));
                    gapComposerH.q(objX);
                }
                mutableLongState = (MutableLongState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(c(mutableLongState.b()));
                    gapComposerH.q(objX2);
                }
                mutableState = (MutableState) objX2;
                boolean zY2 = gapComposerH.y(instant);
                if ((i5 & 7168) == 2048) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zY2 | z;
                Object objX4 = gapComposerH.x();
                if (!z2 || objX4 == composer$Companion$Empty$1) {
                    lVLiveCountdownKt$LVLiveCountdown$1$1 = new LVLiveCountdownKt$LVLiveCountdown$1$1(instant, function0, mutableLongState, mutableState, null);
                    gapComposerH.q(lVLiveCountdownKt$LVLiveCountdown$1$1);
                } else {
                    lVLiveCountdownKt$LVLiveCountdown$1$1 = objX4;
                }
                EffectsKt.e(gapComposerH, instant, (Function2) lVLiveCountdownKt$LVLiveCountdown$1$1);
                zY = gapComposerH.y(context) | gapComposerH.y(instant);
                objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    objX3 = new gv(context, instant, 29);
                    gapComposerH.q(objX3);
                }
                Modifier modifierA = ModifierExtKt.a(modifier2, null, (Function1) objX3, 3);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                int i7 = ((i5 << 3) & 896) | 24576;
                long j5 = j3;
                b(null, ((LiveEventState) mutableState.getF10755b()).f51016a, j5, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_days), true, gapComposerH, i7);
                b(null, ((LiveEventState) mutableState.getF10755b()).f51017b, j5, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_hours), false, gapComposerH, i7);
                b(null, ((LiveEventState) mutableState.getF10755b()).f51018c, j5, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_minutes), false, gapComposerH, i7);
                b(null, ((LiveEventState) mutableState.getF10755b()).d, j5, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_seconds), false, gapComposerH, i7);
                gapComposerH.Z(true);
                dTFunctionNameModifier = modifier2;
                j4 = j5;
            } else {
                gapComposerH.D();
                if ((i3 & 2) != 0) {
                    i4 &= -113;
                }
            }
            modifier2 = dTFunctionNameModifier;
            i5 = i4;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotLongStateKt.a(instant.getEpochSecond() - (System.currentTimeMillis() / 1000));
                gapComposerH.q(objX);
            }
            mutableLongState = (MutableLongState) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(c(mutableLongState.b()));
                gapComposerH.q(objX2);
            }
            mutableState = (MutableState) objX2;
            boolean zY3 = gapComposerH.y(instant);
            if ((i5 & 7168) == 2048) {
                z = true;
            } else {
                z = false;
            }
            z2 = zY3 | z;
            Object objX5 = gapComposerH.x();
            if (z2) {
                lVLiveCountdownKt$LVLiveCountdown$1$1 = new LVLiveCountdownKt$LVLiveCountdown$1$1(instant, function0, mutableLongState, mutableState, null);
                gapComposerH.q(lVLiveCountdownKt$LVLiveCountdown$1$1);
            } else {
                lVLiveCountdownKt$LVLiveCountdown$1$1 = new LVLiveCountdownKt$LVLiveCountdown$1$1(instant, function0, mutableLongState, mutableState, null);
                gapComposerH.q(lVLiveCountdownKt$LVLiveCountdown$1$1);
            }
            EffectsKt.e(gapComposerH, instant, (Function2) lVLiveCountdownKt$LVLiveCountdown$1$1);
            zY = gapComposerH.y(context) | gapComposerH.y(instant);
            objX3 = gapComposerH.x();
            if (zY) {
                objX3 = new gv(context, instant, 29);
                gapComposerH.q(objX3);
            } else {
                objX3 = new gv(context, instant, 29);
                gapComposerH.q(objX3);
            }
            Modifier modifierA2 = ModifierExtKt.a(modifier2, null, (Function1) objX3, 3);
            Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(arrangement$Start$2, Alignment.Companion.f8591k, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int i8 = ((i5 << 3) & 896) | 24576;
            long j6 = j3;
            b(null, ((LiveEventState) mutableState.getF10755b()).f51016a, j6, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_days), true, gapComposerH, i8);
            b(null, ((LiveEventState) mutableState.getF10755b()).f51017b, j6, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_hours), false, gapComposerH, i8);
            b(null, ((LiveEventState) mutableState.getF10755b()).f51018c, j6, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_minutes), false, gapComposerH, i8);
            b(null, ((LiveEventState) mutableState.getF10755b()).d, j6, StringResources_androidKt.c(gapComposerH, R.string.wall_event_label_seconds), false, gapComposerH, i8);
            gapComposerH.Z(true);
            dTFunctionNameModifier = modifier2;
            j4 = j6;
        } else {
            gapComposerH.D();
            j4 = j3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c20(dTFunctionNameModifier, j4, instant, function0, i2, i3);
        }
    }

    public static final void b(Modifier modifier, String str, long j2, String str2, boolean z, Composer composer, int i2) {
        String str3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVLiveCountdownText-T042LqI");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(-56614138);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            str3 = str;
            i3 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.e(j2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("LVLiveCountdownText-T042LqI");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = 2;
            Modifier modifierK = PaddingKt.k(dTFunctionNameModifier, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            if (z && str3.length() > 2) {
                i4 = 3;
            }
            LVAnimatedDigitsKt.a(null, i4, Integer.parseInt(str3), true, LVAppDesignKitTheme.n(gapComposerH).d, j2, gapComposerH, ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 3072, 1);
            String upperCase = str2.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            TextKt.c(upperCase, null, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).p, gapComposerH, i3 & 896, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a50(modifier2, str3, j2, str2, z, i2);
        }
    }

    public static final LiveEventState c(long j2) {
        long j3 = j2 / 86400;
        long j4 = j2 / 3600;
        long j5 = j2 / 60;
        return new LiveEventState(NumberExtKt.a(j3), NumberExtKt.a(j4 - (24 * j3)), NumberExtKt.a(j5 - (j4 * 60)), NumberExtKt.a(j2 - (j5 * 60)));
    }
}
