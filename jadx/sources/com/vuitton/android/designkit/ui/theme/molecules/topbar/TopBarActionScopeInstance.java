package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.om;
import defpackage.u3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;", "Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TopBarActionScopeInstance implements TopBarActionScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TopBarActionScopeInstance f48763a = new TopBarActionScopeInstance();

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48764a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48764a = iArr;
        }
    }

    @Override // com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope
    public final void a(Modifier modifier, int i2, String str, Function0 function0, LVColorScheme lVColorScheme, FloatingTopBarStyle floatingTopBarStyle, String str2, boolean z, Composer composer, int i3) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "TopBarAction");
        }
        modifier.getClass();
        function0.getClass();
        lVColorScheme.getClass();
        floatingTopBarStyle.getClass();
        composer.L(-317977649);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z2 = true;
        boolean z3 = (((i3 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && composer.K(str)) || (i3 & KyberEngine.KyberPolyBytes) == 256;
        if ((((3670016 & i3) ^ 1572864) <= 1048576 || !composer.K(str2)) && (i3 & 1572864) != 1048576) {
            z2 = false;
        }
        boolean z4 = z3 | z2;
        Object objX = composer.x();
        if (z4 || objX == Composer.Companion.f7939a) {
            objX = new u3(str, str2, 4);
            composer.q(objX);
        }
        IconButtonKt.a(function0, SemanticsModifierKt.b(modifier, false, (Function1) objX), z, null, null, ComposableLambdaKt.b(-365016211, new om(i2, lVColorScheme), composer), composer, ((i3 >> 9) & 14) | 1572864 | ((i3 >> 15) & 896), 56);
        composer.F();
    }
}
