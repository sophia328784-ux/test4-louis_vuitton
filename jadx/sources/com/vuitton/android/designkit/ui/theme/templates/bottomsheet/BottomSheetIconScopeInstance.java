package com.vuitton.android.designkit.ui.theme.templates.bottomsheet;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieAnimationState;
import com.vuitton.android.designkit.ui.theme.IconSize;
import defpackage.a;
import defpackage.dh;
import defpackage.i1;
import defpackage.x;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/templates/bottomsheet/BottomSheetIconScopeInstance;", "Lcom/vuitton/android/designkit/ui/theme/templates/bottomsheet/BottomSheetIconScope;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BottomSheetIconScopeInstance implements BottomSheetIconScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BottomSheetIconScopeInstance f48805a = new BottomSheetIconScopeInstance();

    @Override // com.vuitton.android.designkit.ui.theme.templates.bottomsheet.BottomSheetIconScope
    public final void a(Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = a.e(modifier, "StaticIcon");
        }
        Modifier modifier2 = modifier;
        modifier2.getClass();
        GapComposer gapComposerH = composer.h(-1907848358);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(null) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = i4 >> 3;
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i5 & 14), null, SizeKt.o(modifier2, IconSize.f48350e), 0L, gapComposerH, 8 | (i5 & 112), 8);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dh(this, modifier2, i2, i3, 0);
        }
    }

    @Override // com.vuitton.android.designkit.ui.theme.templates.bottomsheet.BottomSheetIconScope
    public final void b(Modifier modifier, LottieComposition lottieComposition, LottieAnimationState lottieAnimationState, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "AnimatedIcon");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        lottieAnimationState.getClass();
        GapComposer gapComposerH = composer.h(-327127453);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(lottieComposition) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(lottieAnimationState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(contentScale$Companion$Crop$1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = SizeKt.o(modifier2, IconSize.f48350e);
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimationState, 2);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LottieAnimationKt.b(lottieComposition, (Function0) objX, modifierO, false, false, false, false, null, false, null, null, contentScale$Companion$Crop$1, false, false, null, null, false, gapComposer, (i3 >> 3) & 14, (i3 >> 6) & 112, 129016);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(this, modifier2, lottieComposition, lottieAnimationState, i2);
        }
    }
}
