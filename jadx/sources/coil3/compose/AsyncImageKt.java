package coil3.compose;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import coil3.compose.AsyncImageKt;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.ContentPainterElement;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class AsyncImageKt {
    public static final void a(final AsyncImageState asyncImageState, Modifier modifier, final Function1 function1, final Function1 function2, final Alignment alignment, final ContentScale contentScale, final int i2, Composer composer, final int i3, final int i4) {
        Alignment alignment2;
        int i5;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AsyncImage-76YX9Dk");
        }
        GapComposer gapComposerH = composer.h(1236588022);
        int i6 = (gapComposerH.K(asyncImageState) ? 4 : 2) | i3;
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i7 = i6 | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if ((196608 & i3) == 0) {
            alignment2 = alignment;
            i7 |= gapComposerH.K(alignment2) ? 131072 : 65536;
        } else {
            alignment2 = alignment;
        }
        if ((1572864 & i3) == 0) {
            i7 |= gapComposerH.K(contentScale) ? 1048576 : 524288;
        }
        if ((12582912 & i3) == 0) {
            i7 |= gapComposerH.c(1.0f) ? 8388608 : 4194304;
        }
        if ((100663296 & i3) == 0) {
            i7 |= gapComposerH.K(null) ? 67108864 : 33554432;
        }
        if ((805306368 & i3) == 0) {
            i7 |= gapComposerH.d(i2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i4 & 6) == 0) {
            i5 = i4 | (gapComposerH.b(true) ? 4 : 2);
        } else {
            i5 = i4;
        }
        if (gapComposerH.p(i7 & 1, ((306783379 & i7) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ImageRequest imageRequestE = UtilsKt.e(asyncImageState.f21320a, contentScale, gapComposerH, (i7 >> 15) & 112);
            UtilsKt.h(imageRequestE);
            gapComposer = gapComposerH;
            Modifier modifierO = modifierE.o(new ContentPainterElement(imageRequestE, asyncImageState.f21322c, asyncImageState.f21321b, function1, function2, i2, alignment2, contentScale, 1.0f, null, true, UtilsKt.b(gapComposerH), null, null));
            MeasurePolicy measurePolicyA = UtilsKt.a();
            int iHashCode = Long.hashCode(gapComposer.T);
            Modifier modifierC = ComposedModifierKt.c(gapComposer, modifierO);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposer.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: x9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AsyncImageKt.a(asyncImageState, modifier2, function1, function2, alignment, contentScale, i2, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), RecomposeScopeImplKt.a(i4));
                    return Unit.f71739a;
                }
            };
        }
    }
}
