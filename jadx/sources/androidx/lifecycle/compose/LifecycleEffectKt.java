package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import defpackage.i1;
import defpackage.jx;
import defpackage.md;
import defpackage.rv;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002¨\u0006\u0003²\u0006\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lkotlin/Function0;", "", "currentOnEvent", "lifecycle-runtime-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LifecycleEffectKt {

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13559a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f13559a = iArr;
        }
    }

    public static final void a(Lifecycle.Event event, LifecycleOwner lifecycleOwner, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-709389590);
        int i3 = i2 | 16;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            } else {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (event == Lifecycle.Event.ON_DESTROY) {
                md.n("LifecycleEventEffect cannot be used to listen for Lifecycle.Event.ON_DESTROY, since Compose disposes of the composition before ON_DESTROY observers are invoked.");
                return;
            }
            MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerH);
            boolean zK = gapComposerH.K(mutableStateL) | gapComposerH.y(lifecycleOwner);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new jx(lifecycleOwner, event, mutableStateL, 10);
                gapComposerH.q(objX);
            }
            EffectsKt.c(lifecycleOwner, (Function1) objX, gapComposerH);
        } else {
            gapComposerH.D();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(event, lifecycleOwner2, function0, i2, 25);
        }
    }

    public static final void b(Object obj, LifecycleOwner lifecycleOwner, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1220373486);
        int i3 = i2 | 16 | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            } else {
                gapComposerH.D();
            }
            int i4 = i3 & (-113);
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(obj) | gapComposerH.K(lifecycleOwner);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new LifecycleResumePauseEffectScope(lifecycleOwner.getD());
                gapComposerH.q(objX);
            }
            c(lifecycleOwner, (LifecycleResumePauseEffectScope) objX, function1, gapComposerH, i4 & 896);
        } else {
            gapComposerH.D();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 19, obj, lifecycleOwner2, function1);
        }
    }

    public static final void c(LifecycleOwner lifecycleOwner, LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(912823238);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(lifecycleOwner) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(lifecycleResumePauseEffectScope) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(lifecycleResumePauseEffectScope) | ((i3 & 896) == 256) | gapComposerH.y(lifecycleOwner);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new jx(lifecycleOwner, lifecycleResumePauseEffectScope, function1, 11);
                gapComposerH.q(objX);
            }
            EffectsKt.b(lifecycleOwner, lifecycleResumePauseEffectScope, (Function1) objX, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 26, lifecycleOwner, lifecycleResumePauseEffectScope, function1);
        }
    }

    public static final void d(Boolean bool, Object obj, LifecycleOwner lifecycleOwner, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(696924721);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(bool) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(obj) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            } else {
                gapComposerH.D();
            }
            int i4 = i3 & (-897);
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(bool) | gapComposerH.K(obj) | gapComposerH.K(lifecycleOwner);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new LifecycleStartStopEffectScope(lifecycleOwner.getD());
                gapComposerH.q(objX);
            }
            e(lifecycleOwner, (LifecycleStartStopEffectScope) objX, function1, gapComposerH, (i4 >> 3) & 896);
        } else {
            gapComposerH.D();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(bool, obj, lifecycleOwner2, function1, i2, 24);
        }
    }

    public static final void e(LifecycleOwner lifecycleOwner, LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(228371534);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(lifecycleOwner) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(lifecycleStartStopEffectScope) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(lifecycleStartStopEffectScope) | ((i3 & 896) == 256) | gapComposerH.y(lifecycleOwner);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new jx(lifecycleOwner, lifecycleStartStopEffectScope, function1, 12);
                gapComposerH.q(objX);
            }
            EffectsKt.b(lifecycleOwner, lifecycleStartStopEffectScope, (Function1) objX, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 27, lifecycleOwner, lifecycleStartStopEffectScope, function1);
        }
    }
}
