package com.vuitton.android.presentation.screen.personalselections.detail.models.mappers;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionProductInteractionUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionProductUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionProduct;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionProductInteraction;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionType;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsDetailUiModelMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62590a;

        static {
            int[] iArr = new int[SelectionType.values().length];
            try {
                iArr[SelectionType.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionType.ADVISOR_CURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62590a = iArr;
        }
    }

    public static final SelectionProductUiModel a(SelectionProduct selectionProduct) {
        selectionProduct.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = selectionProduct.f67809a;
        companion.getClass();
        String str2 = selectionProduct.f67810b;
        String str3 = selectionProduct.f67811c;
        SelectionProductInteraction selectionProductInteraction = selectionProduct.d;
        return new SelectionProductUiModel(str, str2, str3, selectionProductInteraction != null ? new SelectionProductInteractionUiModel(selectionProductInteraction.f67812a, selectionProductInteraction.f67813b) : null, null);
    }

    public static final SelectionTypeUiModel b(SelectionType selectionType) {
        selectionType.getClass();
        int i2 = WhenMappings.f62590a[selectionType.ordinal()];
        if (i2 == 1) {
            return SelectionTypeUiModel.IN_STORE;
        }
        if (i2 == 2) {
            return SelectionTypeUiModel.ADVISOR_CURATION;
        }
        v40.g();
        return null;
    }
}
