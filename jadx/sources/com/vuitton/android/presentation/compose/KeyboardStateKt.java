package com.vuitton.android.presentation.compose;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.gv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class KeyboardStateKt {
    public static final MutableState a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = SnapshotStateKt.g(KeyboardState.Closed);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
        boolean zY = composer.y(view);
        Object objX2 = composer.x();
        if (zY || objX2 == composer$Companion$Empty$1) {
            objX2 = new gv(view, mutableState, 26);
            composer.q(objX2);
        }
        EffectsKt.c(view, (Function1) objX2, composer);
        return mutableState;
    }
}
