package com.google.accompanist.permissions;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import defpackage.bn;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"permissions_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class PermissionsUtilKt {
    public static final void a(final MutablePermissionState mutablePermissionState, final Lifecycle.Event event, Composer composer, final int i2) {
        mutablePermissionState.getClass();
        GapComposer gapComposerH = composer.h(-1770945943);
        int i3 = (gapComposerH.K(mutablePermissionState) ? 4 : 2) | i2 | 48;
        if ((i3 & 91) == 18 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            event = Lifecycle.Event.ON_RESUME;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.w(-899069829);
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new bn(event, mutablePermissionState, 6);
                gapComposerH.q(objX);
            }
            final LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) objX;
            gapComposerH.Z(false);
            final Lifecycle d = ((LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a)).getD();
            EffectsKt.b(d, lifecycleEventObserver, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: com.google.accompanist.permissions.PermissionsUtilKt$PermissionLifecycleCheckerEffect$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((DisposableEffectScope) obj).getClass();
                    final Lifecycle lifecycle = d;
                    final LifecycleEventObserver lifecycleEventObserver2 = lifecycleEventObserver;
                    lifecycle.a(lifecycleEventObserver2);
                    return new DisposableEffectResult() { // from class: com.google.accompanist.permissions.PermissionsUtilKt$PermissionLifecycleCheckerEffect$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public final void dispose() {
                            lifecycle.d(lifecycleEventObserver2);
                        }
                    };
                }
            }, gapComposerH);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(event, i2) { // from class: com.google.accompanist.permissions.PermissionsUtilKt$PermissionLifecycleCheckerEffect$2
                public final /* synthetic */ Lifecycle.Event d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(1);
                    PermissionsUtilKt.a(this.f27781c, this.d, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
