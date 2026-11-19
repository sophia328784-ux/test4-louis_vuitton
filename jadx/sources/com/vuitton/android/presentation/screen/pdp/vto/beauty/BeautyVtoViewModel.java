package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.ShadeFinderQualityCheck;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BeautyVtoViewModel {
    void A1(float f2);

    void A2(Bitmap bitmap, String str);

    void E6();

    void E9(Bitmap bitmap);

    void Ea();

    void F0();

    void F3();

    void Ga();

    void H7(TryOnProductUiModel tryOnProductUiModel);

    void Hb();

    void Ob(String str);

    void P2(ShadeFinderQualityCheck shadeFinderQualityCheck);

    Flow P9();

    void Sb();

    void T3();

    void Ta();

    void U4(String str);

    void U6();

    void X6(TryOnProductUiModel tryOnProductUiModel);

    void Z9();

    StateFlow a();

    void a1();

    Flow b();

    StateFlow e();

    void f4(TryOnProductUiModel tryOnProductUiModel);

    void f9();

    void fb();

    StateFlow g2();

    void g3();

    void ga();

    void ia();

    void ic(String str, boolean z);

    void n2(LookUiModel lookUiModel);

    void r3();

    void r6();

    void rc();

    PerfectEffect s5(BeautyProductTypeUiModel beautyProductTypeUiModel);

    void ta(BeautyBottomSheet beautyBottomSheet, boolean z);

    void u9(String str);

    void v3();

    void y6(List list);

    StateFlow yb();

    void z4();

    BeautyVtoRoutes z6();
}
