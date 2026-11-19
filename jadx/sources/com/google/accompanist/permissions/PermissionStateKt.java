package com.google.accompanist.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.batch.android.e.x;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"permissions_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class PermissionStateKt {
    public static final MutablePermissionState a(Composer composer) {
        composer.w(923020361);
        final PermissionStateKt$rememberPermissionState$1 permissionStateKt$rememberPermissionState$1 = PermissionStateKt$rememberPermissionState$1.f27775c;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.w(1424240517);
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        composer.w(-1903070007);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (objX == obj) {
            context.getClass();
            Context baseContext = context;
            while (true) {
                if (!(baseContext instanceof ContextWrapper)) {
                    md.k("Permissions should be called in the context of an Activity");
                    return null;
                }
                if (baseContext instanceof Activity) {
                    objX = new MutablePermissionState(x.d, context, (Activity) baseContext);
                    composer.q(objX);
                    break;
                }
                baseContext = ((ContextWrapper) baseContext).getBaseContext();
                baseContext.getClass();
            }
        }
        final MutablePermissionState mutablePermissionState = (MutablePermissionState) objX;
        composer.J();
        PermissionsUtilKt.a(mutablePermissionState, null, composer, 0);
        ActivityResultContracts$RequestPermission activityResultContracts$RequestPermission = new ActivityResultContracts$RequestPermission();
        composer.w(-1903069605);
        boolean zK = composer.K(mutablePermissionState) | composer.y(permissionStateKt$rememberPermissionState$1);
        Object objX2 = composer.x();
        if (zK || objX2 == obj) {
            objX2 = new Function1<Boolean, Unit>() { // from class: com.google.accompanist.permissions.MutablePermissionStateKt$rememberMutablePermissionState$launcher$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Boolean bool = (Boolean) obj2;
                    bool.getClass();
                    MutablePermissionState mutablePermissionState2 = mutablePermissionState;
                    ((SnapshotMutableStateImpl) mutablePermissionState2.d).setValue(mutablePermissionState2.a());
                    permissionStateKt$rememberPermissionState$1.invoke(bool);
                    return Unit.f71739a;
                }
            };
            composer.q(objX2);
        }
        composer.J();
        final ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$RequestPermission, (Function1) objX2, composer, 8);
        EffectsKt.b(mutablePermissionState, managedActivityResultLauncherA, new Function1<DisposableEffectScope, DisposableEffectResult>(managedActivityResultLauncherA) { // from class: com.google.accompanist.permissions.MutablePermissionStateKt$rememberMutablePermissionState$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                ((DisposableEffectScope) obj2).getClass();
                final MutablePermissionState mutablePermissionState2 = this.f27772c;
                return new DisposableEffectResult() { // from class: com.google.accompanist.permissions.MutablePermissionStateKt$rememberMutablePermissionState$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        mutablePermissionState2.getClass();
                    }
                };
            }
        }, composer);
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        composer.J();
        composer.J();
        return mutablePermissionState;
    }
}
