package androidx.activity.compose;

import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import defpackage.ic;
import defpackage.md;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"activity-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PredictiveBackHandlerKt {
    public static final void a(boolean z, Function2 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-642000585);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objA = (NavigationEventDispatcherOwner) gapComposerH.k(LocalNavigationEventDispatcherOwner.f18496a);
            if (objA == null) {
                gapComposerH.L(1512740606);
                objA = LocalOnBackPressedDispatcherOwner.a(gapComposerH);
            } else {
                gapComposerH.L(1512737723);
            }
            gapComposerH.Z(false);
            if (objA == null) {
                md.k("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean zK = gapComposerH.K(objA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = objA instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) objA : null;
                NavigationEventDispatcher navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = objA instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) objA : null;
                objX = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                gapComposerH.q(objX);
            }
            BackHandlerDispatcherCompat backHandlerDispatcherCompat = (BackHandlerDispatcherCompat) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX2;
            long j2 = gapComposerH.T;
            boolean zK2 = gapComposerH.K(backHandlerDispatcherCompat) | gapComposerH.e(j2);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new ComposePredictiveBackHandler(coroutineScope, new PredictiveBackHandlerInfo(objA, j2));
                gapComposerH.q(objX3);
            }
            ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) objX3;
            gapComposerH.L(-348514256);
            boolean zY = gapComposerH.y(composePredictiveBackHandler) | gapComposerH.y(function2);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new a(composePredictiveBackHandler, function2, 1);
                gapComposerH.q(objX4);
            }
            EffectsKt.i((Function0) objX4, gapComposerH);
            Boolean boolValueOf = Boolean.valueOf(z);
            int i4 = i3 & 14;
            boolean zY2 = (i4 == 4) | gapComposerH.y(composePredictiveBackHandler);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new b(composePredictiveBackHandler, z, 1);
                gapComposerH.q(objX5);
            }
            LifecycleEffectKt.d(boolValueOf, composePredictiveBackHandler, null, (Function1) objX5, gapComposerH, i4);
            boolean zY3 = gapComposerH.y(backHandlerDispatcherCompat) | gapComposerH.y(composePredictiveBackHandler);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new c(backHandlerDispatcherCompat, composePredictiveBackHandler, 1);
                gapComposerH.q(objX6);
            }
            EffectsKt.b(backHandlerDispatcherCompat, composePredictiveBackHandler, (Function1) objX6, gapComposerH);
            gapComposerH.Z(false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ic(z, function2, i2, 2);
        }
    }
}
