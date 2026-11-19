package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ImmersiveArticleViewModel {
    void A3();

    void L1();

    void Q2(Error3dType error3dType);

    void T1();

    void U8(ImmersiveArticleTrackingUiModel immersiveArticleTrackingUiModel);

    StateFlow a();

    Flow b();

    void u0(String str);

    void x5();
}
