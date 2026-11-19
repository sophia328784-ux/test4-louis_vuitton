package com.vuitton.android.presentation.screen.thelookimmersivearticle;

import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TheLookImmersiveArticleViewModel {
    StateFlow a();

    SharedFlow b5();

    void ea(int i2, String str);

    String hb(String str);

    void v6(String str);

    void w2(TheLookImmersiveArticleTrackingUiModel theLookImmersiveArticleTrackingUiModel);
}
