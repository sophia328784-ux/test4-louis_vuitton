package com.vuitton.android.presentation.screen.feed.models.uimodels;

import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.foundation.model.domain.model.common.editorial.AlgorithmType;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedUiModelKt {
    public static final boolean a(FeedUiModel feedUiModel) {
        List list;
        if (feedUiModel != null && (list = feedUiModel.f57983a) != null) {
            List<EditorialModuleUiModel> list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                return false;
            }
            for (EditorialModuleUiModel editorialModuleUiModel : list2) {
                AlgorithmType algorithmType = null;
                EditorialModuleUiModel.GridSmallUiModel gridSmallUiModel = editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel ? (EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel : null;
                AlgorithmType algorithmType2 = gridSmallUiModel != null ? gridSmallUiModel.f50837c : null;
                AlgorithmType algorithmType3 = AlgorithmType.MOST_PURCHASED_WITH;
                if (algorithmType2 == algorithmType3) {
                    return true;
                }
                EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel = editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel ? (EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel : null;
                if (carouselSmallUiModel != null) {
                    algorithmType = carouselSmallUiModel.f50830c;
                }
                if (algorithmType == algorithmType3) {
                    return true;
                }
            }
        }
        return false;
    }
}
