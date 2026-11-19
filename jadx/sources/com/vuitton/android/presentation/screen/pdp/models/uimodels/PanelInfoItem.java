package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import com.vuitton.android.presentation.compose.components.CollapsingState;
import defpackage.ul0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoSectionsItem;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PanelInfoItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f61710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CollapsingState f61711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f61712c;

    public /* synthetic */ PanelInfoItem(String str, CollapsingState collapsingState, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? CollapsingState.COLLAPSED : collapsingState, (i2 & 4) != 0 ? new ul0(0) : function0, null);
    }

    public PanelInfoItem(String str, CollapsingState collapsingState, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this.f61710a = str;
        this.f61711b = collapsingState;
        this.f61712c = function0;
    }
}
