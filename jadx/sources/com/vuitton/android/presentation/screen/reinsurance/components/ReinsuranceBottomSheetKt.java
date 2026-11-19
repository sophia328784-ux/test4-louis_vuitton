package com.vuitton.android.presentation.screen.reinsurance.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.g2;
import defpackage.n00;
import defpackage.yj0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceBottomSheetKt {
    /* JADX WARN: Code duplicated, block: B:35:0x0076  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(ReinsuranceUiModel reinsuranceUiModel, Function1 function1, Composer composer, int i2) {
        int i3;
        String strB;
        List list;
        String str;
        GapComposer gapComposerH = composer.h(1461164769);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(reinsuranceUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (reinsuranceUiModel == null || (list = reinsuranceUiModel.f63439e) == null || (str = (String) CollectionsKt.firstOrNull(list)) == null) {
                strB = null;
            } else {
                if (!StringExtKt.a(str)) {
                    str = null;
                }
                if (str != null) {
                    strB = new UrlFactory(ContextExtKt.f(context)).b(str, new ImageConfiguration.Background.Opaque(objArr2 == true ? 1 : 0, i4, objArr == true ? 1 : 0));
                } else {
                    strB = null;
                }
            }
            LVCustomBottomSheetContentKt.a(n00.g("ReinsuranceBottomSheet", "pdp_reinsurance_bottomSheet_view"), Call.Parameters.DEFAULT_CAMERA_ZOOM, reinsuranceUiModel != null ? reinsuranceUiModel.f63437b : null, null, null, null, null, false, null, null, ComposableLambdaKt.b(1209314348, new yj0(strB, reinsuranceUiModel, function1, 5), gapComposerH), gapComposerH, 0, 48, 2042);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(reinsuranceUiModel, function1, i2, 25);
        }
    }
}
