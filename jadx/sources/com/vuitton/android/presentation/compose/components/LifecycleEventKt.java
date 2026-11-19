package com.vuitton.android.presentation.compose.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import defpackage.o90;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/lifecycle/Lifecycle$Event;", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LifecycleEventKt {
    public static final Lifecycle.Event a(Composer composer) {
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9935a;
        LifecycleOwner lifecycleOwner = (LifecycleOwner) composer.k(LocalLifecycleOwnerKt.f13562a);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (objX == obj) {
            objX = SnapshotStateKt.g(Lifecycle.Event.ON_ANY);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        boolean zY = composer.y(lifecycleOwner);
        Object objX2 = composer.x();
        if (zY || objX2 == obj) {
            objX2 = new o90(lifecycleOwner, mutableState, 0);
            composer.q(objX2);
        }
        EffectsKt.c(lifecycleOwner, (Function1) objX2, composer);
        return (Lifecycle.Event) mutableState.getF10755b();
    }
}
