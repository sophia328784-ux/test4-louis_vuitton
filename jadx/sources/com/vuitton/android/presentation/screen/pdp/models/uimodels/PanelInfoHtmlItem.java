package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import com.vuitton.android.presentation.compose.components.CollapsingState;
import defpackage.ii0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;", "", "introduction", "description", "title", "Lcom/vuitton/android/presentation/compose/components/CollapsingState;", "initialState", "Lkotlin/Function0;", "", "tracking", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PanelInfoHtmlItem extends PanelInfoItem {
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61707e;

    public /* synthetic */ PanelInfoHtmlItem(String str, String str2, String str3, CollapsingState collapsingState, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, str3, (i2 & 8) != 0 ? CollapsingState.COLLAPSED : collapsingState, (i2 & 16) != 0 ? new ii0(29) : function0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PanelInfoHtmlItem(String str, String str2, String str3, CollapsingState collapsingState, Function0<Unit> function0) {
        super(str3, collapsingState, function0, null);
        str2.getClass();
        str3.getClass();
        collapsingState.getClass();
        function0.getClass();
        this.d = str;
        this.f61707e = str2;
    }
}
