package com.sightcall.graphik;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import defpackage.cm;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"LocalVisionAppColors", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Lcom/sightcall/graphik/Colors;", "getLocalVisionAppColors", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "graphik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ColorsKt {
    private static final ProvidableCompositionLocal<Colors> LocalVisionAppColors = CompositionLocalKt.c(new cm(24));

    /* JADX INFO: Access modifiers changed from: private */
    public static final Colors LocalVisionAppColors$lambda$0() {
        return new Colors();
    }

    public static final ProvidableCompositionLocal<Colors> getLocalVisionAppColors() {
        return LocalVisionAppColors;
    }
}
