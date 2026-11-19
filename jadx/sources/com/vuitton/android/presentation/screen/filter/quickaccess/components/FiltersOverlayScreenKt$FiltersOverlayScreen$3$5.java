package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class FiltersOverlayScreenKt$FiltersOverlayScreen$3$5 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FiltersOverlayScreenKt$FiltersOverlayScreen$3$5 f58078b = new FiltersOverlayScreenKt$FiltersOverlayScreen$3$5(ProductBooleanFilterUiModel.class, "isSelected", "isSelected()Z", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Boolean.valueOf(((ProductBooleanFilterUiModel) obj).d);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((ProductBooleanFilterUiModel) obj).d = ((Boolean) obj2).booleanValue();
    }
}
