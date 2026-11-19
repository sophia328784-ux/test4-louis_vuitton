package androidx.activity.compose;

import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.BackHandlerKt;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"activity-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BackHandlerKt {
    public static final void a(boolean z, final Function0 function0, Composer composer, final int i2, final int i3) {
        boolean z2;
        int i4;
        final boolean z3;
        GapComposer gapComposerH = composer.h(-361453782);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
            z2 = z;
        } else if ((i2 & 6) == 0) {
            z2 = z;
            i4 = (gapComposerH.b(z2) ? 4 : 2) | i2;
        } else {
            z2 = z;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            z3 = i5 != 0 ? true : z2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objA = (NavigationEventDispatcherOwner) gapComposerH.k(LocalNavigationEventDispatcherOwner.f18496a);
            if (objA == null) {
                gapComposerH.L(535274673);
                objA = LocalOnBackPressedDispatcherOwner.a(gapComposerH);
            } else {
                gapComposerH.L(535271790);
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
            long j2 = gapComposerH.T;
            boolean zK2 = gapComposerH.K(backHandlerDispatcherCompat) | gapComposerH.e(j2);
            Object objX2 = gapComposerH.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new ComposeBackHandler(new BackHandlerInfo(objA, j2));
                gapComposerH.q(objX2);
            }
            ComposeBackHandler composeBackHandler = (ComposeBackHandler) objX2;
            gapComposerH.L(-585307852);
            boolean zY = gapComposerH.y(composeBackHandler) | ((i4 & 112) == 32);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new a(composeBackHandler, function0, 0);
                gapComposerH.q(objX3);
            }
            EffectsKt.i((Function0) objX3, gapComposerH);
            Boolean boolValueOf = Boolean.valueOf(z3);
            int i6 = i4 & 14;
            boolean zY2 = gapComposerH.y(composeBackHandler) | (i6 == 4);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new b(composeBackHandler, z3, 0);
                gapComposerH.q(objX4);
            }
            LifecycleEffectKt.d(boolValueOf, composeBackHandler, null, (Function1) objX4, gapComposerH, i6);
            boolean zY3 = gapComposerH.y(backHandlerDispatcherCompat) | gapComposerH.y(composeBackHandler);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new c(backHandlerDispatcherCompat, composeBackHandler, 0);
                gapComposerH.q(objX5);
            }
            EffectsKt.b(backHandlerDispatcherCompat, composeBackHandler, (Function1) objX5, gapComposerH);
            gapComposerH.Z(false);
        } else {
            gapComposerH.D();
            z3 = z2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: hc
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    BackHandlerKt.a(z3, function0, (Composer) obj, iA, i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
