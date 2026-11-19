package com.vuitton.android.presentation.screen.plp.models.plp;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductListUiModelKt {
    public static final ArrayList a(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof PlpSectionUiModel.Products) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList2, ((PlpSectionUiModel.Products) it.next()).f62933b);
        }
        return arrayList2;
    }

    public static final String b(PlpSectionUiModel plpSectionUiModel) {
        plpSectionUiModel.getClass();
        if (plpSectionUiModel instanceof PlpSectionUiModel.HalfEdito) {
            return ((PlpSectionUiModel.HalfEdito) plpSectionUiModel).g.f62987e;
        }
        if (plpSectionUiModel instanceof PlpSectionUiModel.ProductSlider) {
            return ((PlpProductUiModel.SkuDataUiModel) ((PlpSectionUiModel.ProductSlider) plpSectionUiModel).f62931b.f62934a.getF10755b()).f62943a;
        }
        if (plpSectionUiModel instanceof PlpSectionUiModel.ProductHighlight) {
            return ((PlpProductUiModel.SkuDataUiModel) ((PlpSectionUiModel.ProductHighlight) plpSectionUiModel).f62928b.f62934a.getF10755b()).f62943a;
        }
        if (plpSectionUiModel instanceof PlpSectionUiModel.ProductFullscreen) {
            return ((PlpProductUiModel.SkuDataUiModel) ((PlpSectionUiModel.ProductFullscreen) plpSectionUiModel).f62925b.f62934a.getF10755b()).f62943a;
        }
        if (!(plpSectionUiModel instanceof PlpSectionUiModel.CuratedText) && !(plpSectionUiModel instanceof PlpSectionUiModel.Products)) {
            v40.g();
        }
        return null;
    }
}
