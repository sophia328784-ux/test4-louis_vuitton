package com.vuitton.android.designkit.ui.common;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.k;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isTalkbackActive", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccessibilityExtKt {
    public static final boolean a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        boolean zK = composer.K(context);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            Object systemService = context.getSystemService("accessibility");
            systemService.getClass();
            objX = (AccessibilityManager) systemService;
            composer.q(objX);
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) objX;
        Object objX2 = composer.x();
        if (objX2 == obj) {
            objX2 = SnapshotStateKt.g(Boolean.valueOf(accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()));
            composer.q(objX2);
        }
        MutableState mutableState = (MutableState) objX2;
        boolean zY = composer.y(accessibilityManager);
        Object objX3 = composer.x();
        if (zY || objX3 == obj) {
            objX3 = new k(accessibilityManager, mutableState, 2);
            composer.q(objX3);
        }
        EffectsKt.c(accessibilityManager, (Function1) objX3, composer);
        return ((Boolean) mutableState.getF10755b()).booleanValue();
    }
}
