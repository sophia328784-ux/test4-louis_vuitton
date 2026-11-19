package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import com.vuitton.android.presentation.compose.components.CollapsingState;
import defpackage.ul0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B7\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeBlock;", "content", "", "title", "Lcom/vuitton/android/presentation/compose/components/CollapsingState;", "initialState", "Lkotlin/Function0;", "", "tracking", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PanelInfoNativeItem extends PanelInfoItem {
    public final List d;

    public /* synthetic */ PanelInfoNativeItem(List list, String str, CollapsingState collapsingState, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, str, (i2 & 4) != 0 ? CollapsingState.COLLAPSED : collapsingState, (i2 & 8) != 0 ? new ul0(1) : function0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PanelInfoNativeItem(List<PanelInfoNativeBlock> list, String str, CollapsingState collapsingState, Function0<Unit> function0) {
        super(str, collapsingState, function0, null);
        list.getClass();
        str.getClass();
        collapsingState.getClass();
        function0.getClass();
        this.d = list;
    }
}
