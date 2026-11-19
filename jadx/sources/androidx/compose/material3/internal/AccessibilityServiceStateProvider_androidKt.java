package androidx.compose.material3.internal;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import defpackage.n0;
import defpackage.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AccessibilityServiceStateProvider_androidKt {
    public static final void a(LifecycleOwner lifecycleOwner, Function1 function1, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1868327245);
        int i3 = 4;
        int i4 = (gapComposerH.y(lifecycleOwner) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = ((i4 & 112) == 32) | gapComposerH.y(lifecycleOwner) | ((i4 & 896) == 256);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new n0(lifecycleOwner, function1, function0, i3);
                gapComposerH.q(objX);
            }
            EffectsKt.c(lifecycleOwner, (Function1) objX, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(lifecycleOwner, function1, function0, i2, 2);
        }
    }

    public static final State b(int i2, Composer composer, int i3) {
        int i4 = 0;
        boolean z = (i3 & 4) != 0;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object systemService = ((Context) composer.k(AndroidCompositionLocals_androidKt.f9936b)).getSystemService("accessibility");
        systemService.getClass();
        Object obj = (AccessibilityManager) systemService;
        boolean z2 = ((((i2 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && composer.b(z)) || (i2 & KyberEngine.KyberPolyBytes) == 256) | ((((i2 & 14) ^ 6) > 4 && composer.b(true)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.b(true)) || (i2 & 48) == 32);
        Object objX = composer.x();
        Object obj2 = Composer.Companion.f7939a;
        if (z2 || objX == obj2) {
            objX = new Listener(true, true, z);
            composer.q(objX);
        }
        Listener listener = (Listener) objX;
        LifecycleOwner lifecycleOwner = (LifecycleOwner) composer.k(LocalLifecycleOwnerKt.f13562a);
        boolean zK = composer.K(listener) | composer.y(obj);
        Object objX2 = composer.x();
        if (zK || objX2 == obj2) {
            objX2 = new a(listener, obj, i4);
            composer.q(objX2);
        }
        Function1 function1 = (Function1) objX2;
        boolean zK2 = composer.K(listener) | composer.y(obj);
        Object objX3 = composer.x();
        if (zK2 || objX3 == obj2) {
            objX3 = new b(listener, obj, i4);
            composer.q(objX3);
        }
        a(lifecycleOwner, function1, (Function0) objX3, composer, 0);
        return listener;
    }
}
