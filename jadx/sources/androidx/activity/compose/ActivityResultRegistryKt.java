package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.d1;
import defpackage.md;
import defpackage.v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"activity-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ActivityResultRegistryKt {
    public static final ManagedActivityResultLauncher a(ActivityResultContract activityResultContract, Function1 function1, Composer composer, int i2) {
        Object d1Var;
        ActivityResultContract activityResultContract2;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        MutableState mutableStateL = SnapshotStateKt.l(activityResultContract, composer);
        MutableState mutableStateL2 = SnapshotStateKt.l(function1, composer);
        Object[] objArr = new Object[0];
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (objX == obj) {
            objX = new v(19);
            composer.q(objX);
        }
        String str = (String) RememberSaveableKt.d(objArr, (Function0) objX, composer, 48);
        ActivityResultRegistryOwner activityResultRegistryOwner = (ActivityResultRegistryOwner) composer.k(LocalActivityResultRegistryOwner.f709a);
        if (activityResultRegistryOwner == null) {
            composer.L(1213380307);
            Object baseContext = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
            while (true) {
                if (!(baseContext instanceof ContextWrapper)) {
                    baseContext = null;
                    break;
                }
                if (baseContext instanceof ActivityResultRegistryOwner) {
                    break;
                }
                baseContext = ((ContextWrapper) baseContext).getBaseContext();
            }
            activityResultRegistryOwner = (ActivityResultRegistryOwner) baseContext;
        } else {
            composer.L(1213379439);
        }
        composer.F();
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        if (activityResultRegistryOwner == null) {
            md.k("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
            return null;
        }
        ActivityResultRegistry activityResultRegistry = activityResultRegistryOwner.getActivityResultRegistry();
        Object objX2 = composer.x();
        if (objX2 == obj) {
            objX2 = new ActivityResultLauncherHolder();
            composer.q(objX2);
        }
        ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) objX2;
        Object objX3 = composer.x();
        if (objX3 == obj) {
            objX3 = new ManagedActivityResultLauncher(activityResultLauncherHolder, mutableStateL);
            composer.q(objX3);
        }
        ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) objX3;
        boolean zY = composer.y(activityResultLauncherHolder) | composer.y(activityResultRegistry) | composer.K(str) | composer.y(activityResultContract) | composer.K(mutableStateL2);
        Object objX4 = composer.x();
        if (zY || objX4 == obj) {
            activityResultContract2 = activityResultContract;
            d1Var = new d1(activityResultLauncherHolder, activityResultRegistry, str, activityResultContract2, mutableStateL2);
            composer.q(d1Var);
        } else {
            d1Var = objX4;
            activityResultContract2 = activityResultContract;
        }
        EffectsKt.a(activityResultRegistry, str, activityResultContract2, (Function1) d1Var, composer);
        return managedActivityResultLauncher;
    }
}
