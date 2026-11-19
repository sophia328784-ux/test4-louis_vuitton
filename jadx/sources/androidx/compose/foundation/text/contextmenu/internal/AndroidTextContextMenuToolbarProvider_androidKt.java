package androidx.compose.foundation.text.contextmenu.internal;

import android.view.View;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.d0;
import defpackage.g6;
import defpackage.i6;
import defpackage.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/layout/LayoutCoordinates;", "layoutCoordinates", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidTextContextMenuToolbarProvider_androidKt {
    public static final void a(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ProvidePlatformTextContextMenuToolbar");
        }
        GapComposer gapComposerH = composer.h(2064964257);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            b(modifier, composableLambdaImpl, gapComposerH, ((i3 << 3) & 896) | (i3 & 14) | 48);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i6(modifier, composableLambdaImpl, i2, 0);
        }
    }

    public static final void b(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ProvidePlatformTextContextMenuToolbar");
        }
        GapComposer gapComposerH = composer.h(771959668);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(null) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.f(null, SnapshotStateKt.h());
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new d0(5, mutableState);
                gapComposerH.q(objX2);
            }
            CompositionLocalKt.a(TextContextMenuProviderKt.f6154b.c(c((Function0) objX2, gapComposerH, 0)), ComposableLambdaKt.b(-291176396, new u(modifier, mutableState, composableLambdaImpl, 5), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i6(modifier, composableLambdaImpl, i2, 1);
        }
    }

    public static final AndroidTextContextMenuToolbarProvider c(Function0 function0, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
        boolean zK = composer.K(view);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            objX = new AndroidTextContextMenuToolbarProvider(view, null, function0);
            composer.q(objX);
        }
        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) objX;
        boolean zY = composer.y(androidTextContextMenuToolbarProvider);
        Object objX2 = composer.x();
        if (zY || objX2 == obj) {
            objX2 = new g6(androidTextContextMenuToolbarProvider, 3);
            composer.q(objX2);
        }
        EffectsKt.c(androidTextContextMenuToolbarProvider, (Function1) objX2, composer);
        return androidTextContextMenuToolbarProvider;
    }
}
