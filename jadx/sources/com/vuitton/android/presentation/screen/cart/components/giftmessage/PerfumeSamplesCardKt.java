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
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$CardType;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import defpackage.sq;
import defpackage.uv;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PerfumeSamplesCardKt {
    public static final void a(Modifier modifier, ArrayList arrayList, Function0 function0, Function1 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PerfumeSamplesCard");
        }
        Modifier modifier2 = modifierE;
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(4777692);
        int i3 = i2 | (gapComposerH.y(arrayList) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (arrayList.isEmpty()) {
                gapComposerH.L(598547994);
                LVCardKt.a(ModifierExtKt.c(modifier2, false, null, null, function0, 31), StringResources_androidKt.c(gapComposerH, R.string.samples_title), StringResources_androidKt.c(gapComposerH, R.string.samples_card_description), null, 2131231295, AutomationTagsCart$CardType.SAMPLE, false, gapComposerH, ImageMetadata.EDGE_MODE, 72);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(598928147);
                Modifier modifierC = ModifierExtKt.c(modifier2, false, null, null, function0, 31);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.samples_title);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    PerfumeSampleUiModel perfumeSampleUiModel = (PerfumeSampleUiModel) it.next();
                    String str = perfumeSampleUiModel.f55215c;
                    if (str == null) {
                        str = "";
                    }
                    StringResourceUiModel.Text text = new StringResourceUiModel.Text(str);
                    String str2 = perfumeSampleUiModel.f55216e;
                    if (str2 == null) {
                        str2 = null;
                    }
                    arrayList2.add(new CardItemUiModel(text, null, str2, null));
                }
                boolean zY = gapComposerH.y(arrayList) | ((i3 & 7168) == 2048);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new sq(function1, arrayList, 1);
                    gapComposerH.q(objX);
                }
                SelectableItemsCardKt.a(modifierC, strC, arrayList2, (Function1) objX, gapComposerH, 0, 0);
                gapComposerH.Z(false);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) modifier2, (Object) arrayList, function0, (Function) function1, i2, 26);
        }
    }
}
