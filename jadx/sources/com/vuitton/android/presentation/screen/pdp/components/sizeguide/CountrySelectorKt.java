package com.vuitton.android.presentation.screen.pdp.components.sizeguide;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownItem;
import com.vuitton.android.designkit.ui.theme.atoms.LVDropdownKt;
import defpackage.a;
import defpackage.sq;
import defpackage.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CountrySelectorKt {
    public static final void a(Modifier modifier, List list, Integer num, String str, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CountrySelector");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1661921072);
        int i3 = i2 | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.K(num) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new DropdownItem((String) it.next(), false, 2, null));
            }
            String strReplace = new Regex("<p>|</p>|&nbsp;").replace(str, "");
            boolean zY = gapComposerH.y(arrayList) | ((i3 & 57344) == 16384);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new sq(function1, arrayList, 0);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LVDropdownKt.a(modifier2, null, strReplace, arrayList, num, false, false, null, (Function1) objX, false, gapComposer, 6 | ((i3 << 6) & 57344), 738);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) modifier2, (Object) list, (Object) num, (Object) str, function1, i2, 13);
        }
    }
}
