package com.vuitton.android.presentation.screen.storemode.filters.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtonKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ResetFilterTag;
import defpackage.cj;
import defpackage.i4;
import defpackage.s0;
import defpackage.tr;
import defpackage.vd;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ResetFilterTagListKt {
    public static final void a(ResetFilterTag resetFilterTag, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        String strF;
        GapComposer gapComposerH = composer.h(672240384);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(resetFilterTag) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i4 = i3 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (resetFilterTag == null) {
                strF = cj.f(gapComposerH, 1777919583, R.string.product_list_filter_clear_all, gapComposerH, false);
            } else {
                gapComposerH.L(1777922218);
                gapComposerH.Z(false);
                strF = resetFilterTag.f65029a;
            }
            LVTagButtonKt.b(null, strF, z, resetFilterTag != null, function0, gapComposerH, ((i4 << 3) & 896) | ((i4 << 6) & 57344));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(resetFilterTag, z, function0, i2, 4);
        }
    }

    public static final void b(List list, boolean z, Function2 function2, Function0 function0, Composer composer, int i2) {
        list.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1876089614);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("ResetFilterTagList", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 5);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            PaddingValuesImpl paddingValuesImplC = PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
            boolean zY = ((i3 & 112) == 32) | ((i3 & 7168) == 2048) | gapComposerH.y(list) | ((i3 & 896) == 256);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                s0 s0Var = new s0(list, z, function0, function2, 13);
                gapComposerH.q(s0Var);
                objX = s0Var;
            }
            LazyDslKt.b(modifierM, null, paddingValuesImplC, spacedAlignedF, null, null, false, null, (Function1) objX, gapComposerH, 0, 490);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(i2, 18, list, function2, function0, z);
        }
    }
}
