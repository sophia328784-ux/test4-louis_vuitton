package com.vuitton.android.presentation.screen.permissions.models;

import android.content.Context;
import android.os.Build;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import com.google.accompanist.permissions.MutablePermissionState;
import com.google.accompanist.permissions.PermissionStateKt;
import com.google.accompanist.permissions.PermissionStatus;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.utils.NotificationUtils;
import defpackage.g2;
import defpackage.s0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "viewState", "", "areNotificationsEnabled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HandleNotificationsPermissionStateKt {
    /* JADX WARN: Code duplicated, block: B:47:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00df  */
    public static final void a(PermissionsViewModel permissionsViewModel, Function0 function0, Composer composer, int i2) {
        int i3;
        MutablePermissionState mutablePermissionStateA;
        boolean z;
        Object handleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1;
        Lifecycle.Event event;
        PermissionStatus permissionStatus;
        boolean z2;
        PermissionsViewModel permissionsViewModel2 = permissionsViewModel;
        Function0 function1 = function0;
        permissionsViewModel2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1402265241);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(permissionsViewModel2) : gapComposerH.y(permissionsViewModel2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Lifecycle.Event eventA = LifecycleEventKt.a(gapComposerH);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 33) {
                gapComposerH.L(2032203205);
                mutablePermissionStateA = PermissionStateKt.a(gapComposerH);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(2032306125);
                gapComposerH.Z(false);
                mutablePermissionStateA = null;
            }
            MutableState mutableStateB = SnapshotStateKt.b(permissionsViewModel2.getU(), gapComposerH);
            MutableState mutableStateL = SnapshotStateKt.l(Boolean.valueOf(NotificationUtils.a(context)), gapComposerH);
            PermissionStatus.Granted granted = PermissionStatus.Granted.f27777a;
            if (i5 >= 33 && mutablePermissionStateA != null) {
                MutableState mutableState = mutablePermissionStateA.d;
                PermissionStatus permissionStatus2 = (PermissionStatus) ((SnapshotMutableStateImpl) mutableState).getF10755b();
                if (permissionStatus2 == null || permissionStatus2.equals(granted)) {
                    if (i5 < 33) {
                    }
                    z = false;
                } else {
                    PermissionStatus permissionStatus3 = (PermissionStatus) ((SnapshotMutableStateImpl) mutableState).getF10755b();
                    permissionStatus3.getClass();
                    if (permissionStatus3.equals(granted)) {
                        z2 = false;
                    } else {
                        if (!(permissionStatus3 instanceof PermissionStatus.Denied)) {
                            v40.g();
                            return;
                        }
                        z2 = ((PermissionStatus.Denied) permissionStatus3).f27776a;
                    }
                    if (z2) {
                        if (i5 < 33) {
                        }
                        z = false;
                    } else {
                        z = true;
                    }
                }
            } else if (i5 < 33 || ((Boolean) mutableStateL.getF10755b()).booleanValue()) {
                z = false;
            } else {
                z = true;
            }
            boolean z3 = (i5 >= 33 && mutablePermissionStateA != null && (permissionStatus = (PermissionStatus) ((SnapshotMutableStateImpl) mutablePermissionStateA.d).getF10755b()) != null && permissionStatus.equals(granted)) || (i5 < 33 && ((Boolean) mutableStateL.getF10755b()).booleanValue());
            ActivityResultContracts$RequestPermission activityResultContracts$RequestPermission = new ActivityResultContracts$RequestPermission();
            int i6 = i4 & 112;
            int i7 = i4 & 14;
            boolean zB = (i6 == 32) | gapComposerH.b(z) | (i7 == 4 || ((i4 & 8) != 0 && gapComposerH.y(permissionsViewModel2))) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zB || objX == composer$Companion$Empty$1) {
                s0 s0Var = new s0(function1, z, permissionsViewModel2, context, 4);
                gapComposerH.q(s0Var);
                objX = s0Var;
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$RequestPermission, (Function1) objX, gapComposerH, 0);
            Unit unit = Unit.f71739a;
            boolean zY = (i7 == 4 || ((i4 & 8) != 0 && gapComposerH.y(permissionsViewModel2))) | gapComposerH.y(managedActivityResultLauncherA) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1(context, managedActivityResultLauncherA, permissionsViewModel2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean zD = (i6 == 32) | gapComposerH.d(eventA.ordinal()) | gapComposerH.b(z3) | gapComposerH.K(mutableStateB);
            Object objX3 = gapComposerH.x();
            if (zD || objX3 == composer$Companion$Empty$1) {
                handleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1 = new HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1(eventA, z3, function0, mutableStateB, null);
                event = eventA;
                function1 = function0;
                gapComposerH.q(handleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1);
            } else {
                handleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1 = objX3;
                event = eventA;
                function1 = function0;
            }
            EffectsKt.e(gapComposerH, event, (Function2) handleNotificationsPermissionStateKt$HandleNotificationsPermissionState$2$1);
        } else {
            permissionsViewModel2 = permissionsViewModel2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(permissionsViewModel2, function1, i2, 15);
        }
    }
}
