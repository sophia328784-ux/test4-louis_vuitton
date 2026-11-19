package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.dh;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarScopeInstance;", "Lcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarScope;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVNavBarScopeInstance implements LVNavBarScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LVNavBarScopeInstance f48490a = new LVNavBarScopeInstance();

    @Override // com.vuitton.android.designkit.ui.theme.atoms.LVNavBarScope
    public final void a(int i2, int i3, Composer composer, String str) {
        int i4;
        str.getClass();
        GapComposer gapComposerH = composer.h(1780503032);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(str) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVNavBarKt.b(i2, ((i4 << 3) & 112) | ((i4 >> 3) & 14), gapComposerH, str);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dh(this, str, i2, i3, 3);
        }
    }
}
