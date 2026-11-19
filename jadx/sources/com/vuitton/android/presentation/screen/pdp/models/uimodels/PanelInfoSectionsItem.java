package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import com.vuitton.android.presentation.compose.components.CollapsingState;
import defpackage.ul0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoSectionsItem;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;", "", "description", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlSection;", "sections", "title", "Lcom/vuitton/android/presentation/compose/components/CollapsingState;", "initialState", "Lkotlin/Function0;", "", "tracking", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PanelInfoSectionsItem extends PanelInfoItem {
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f61716e;

    public /* synthetic */ PanelInfoSectionsItem(String str, List list, String str2, CollapsingState collapsingState, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, str2, (i2 & 8) != 0 ? CollapsingState.COLLAPSED : collapsingState, (i2 & 16) != 0 ? new ul0(2) : function0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PanelInfoSectionsItem(String str, List<PanelInfoHtmlSection> list, String str2, CollapsingState collapsingState, Function0<Unit> function0) {
        super(str2, collapsingState, function0, null);
        str.getClass();
        list.getClass();
        str2.getClass();
        collapsingState.getClass();
        function0.getClass();
        this.d = str;
        this.f61716e = list;
    }
}
