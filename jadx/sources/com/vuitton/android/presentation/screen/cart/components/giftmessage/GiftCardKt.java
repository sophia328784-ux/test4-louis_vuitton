package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.compose.components.LVCardKt;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$CardType;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import defpackage.u1;
import defpackage.y2;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GiftCardKt {
    public static final void a(Modifier modifier, GiftOption giftOption, String str, List list, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "GiftCard");
        }
        Modifier modifier2 = modifierE;
        list.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(2000747087);
        int i3 = i2 | (gapComposerH.y(giftOption) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(list) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (giftOption instanceof GiftOption.None) {
                gapComposerH.L(-1299404421);
                LVCardKt.a(ModifierExtKt.c(modifier2, false, null, null, function0, 31), StringResources_androidKt.c(gapComposerH, R.string.cart_gifting_card_title), StringResources_androidKt.c(gapComposerH, R.string.cart_gifting_card_description), str, 2131231098, AutomationTagsCart$CardType.GIFT_MESSAGE, false, gapComposerH, ((i3 << 3) & 7168) | ImageMetadata.EDGE_MODE, 64);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1298992090);
                Modifier modifierC = ModifierExtKt.c(modifier2, false, null, null, function0, 31);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.cart_gifting_card_title);
                boolean z = (458752 & i3) == 131072;
                Object objX = gapComposerH.x();
                if (z || objX == Composer.Companion.f7939a) {
                    objX = new y2(function1, 14);
                    gapComposerH.q(objX);
                }
                SelectableItemsCardKt.a(modifierC, strC, list, (Function1) objX, gapComposerH, (i3 >> 3) & 896, 0);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, giftOption, str, list, function0, function1, i2, 13);
        }
    }
}
