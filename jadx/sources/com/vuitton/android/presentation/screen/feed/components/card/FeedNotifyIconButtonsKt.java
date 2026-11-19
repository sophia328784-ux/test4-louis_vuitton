package com.vuitton.android.presentation.screen.feed.components.card;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.a;
import defpackage.c;
import defpackage.fy;
import defpackage.v1;
import defpackage.zr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedNotifyIconButtonsKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57873a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57873a = iArr;
        }
    }

    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        if (modifier != null) {
            modifier = a.e(modifier, "FeedEventBellIconButton");
        }
        Modifier modifier2 = modifier;
        lVColorScheme.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(398803855);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function1 = function0;
            IconButtonKt.a(function1, modifier2, false, null, null, ComposableLambdaKt.b(-468417615, new fy(z, lVColorScheme), gapComposerH), gapComposerH, ((i3 >> 9) & 14) | 1572864 | ((i3 << 3) & 112), 60);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(i2, 2, modifier2, lVColorScheme, function1, z);
        }
    }

    public static final void b(Modifier modifier, LVColorScheme lVColorScheme, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        if (modifier != null) {
            modifier = a.e(modifier, "FeedLiveCalendarIconButton");
        }
        Modifier modifier2 = modifier;
        lVColorScheme.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1353598034);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function1 = function0;
            IconButtonKt.a(function1, modifier2, false, null, null, ComposableLambdaKt.b(-1352700340, new c(lVColorScheme, 27), gapComposerH), gapComposerH, ((i3 >> 6) & 14) | 1572864 | ((i3 << 3) & 112), 60);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(modifier2, lVColorScheme, function1, i2, 14);
        }
    }
}
