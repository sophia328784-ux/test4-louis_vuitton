package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.a;
import defpackage.c1;
import defpackage.i1;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function5;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/layout/LayoutCoordinates;", "layoutCoordinates", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BasicTextContextMenuProviderKt {
    public static final void a(Modifier modifier, ProvidableCompositionLocal providableCompositionLocal, Function5 function5, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        if (modifier != null) {
            modifier = a.e(modifier, "ProvideBasicTextContextMenu");
        }
        Object obj = modifier;
        GapComposer gapComposerH = composer.h(-714464401);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(obj) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(providableCompositionLocal) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function5) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.f(null, SnapshotStateKt.h());
                gapComposerH.q(objX);
            }
            BasicTextContextMenuProvider basicTextContextMenuProviderB = b(function5, gapComposerH, (i3 >> 6) & 14);
            composableLambdaImpl2 = composableLambdaImpl;
            CompositionLocalKt.a(providableCompositionLocal.c(basicTextContextMenuProviderB), ComposableLambdaKt.b(274270255, new z(obj, (MutableState) objX, composableLambdaImpl2, basicTextContextMenuProviderB, 9), gapComposerH), gapComposerH, 56);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(obj, providableCompositionLocal, function5, composableLambdaImpl2, i2, 3);
        }
    }

    public static final BasicTextContextMenuProvider b(Function5 function5, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = (((i2 & 14) ^ 6) > 4 && composer.K(function5)) || (i2 & 6) == 4;
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (z || objX == obj) {
            objX = new BasicTextContextMenuProvider(function5);
            composer.q(objX);
        }
        BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) objX;
        boolean zK = composer.K(basicTextContextMenuProvider);
        Object objX2 = composer.x();
        if (zK || objX2 == obj) {
            objX2 = new c1(basicTextContextMenuProvider, 17);
            composer.q(objX2);
        }
        EffectsKt.c(basicTextContextMenuProvider, (Function1) objX2, composer);
        return basicTextContextMenuProvider;
    }
}
