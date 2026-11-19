package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1 extends FunctionReferenceImpl implements Function2<SkuIdUiModel, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = ((SkuIdUiModel) obj).f61764b;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        str.getClass();
        ((BeautyVtoViewModel) this.receiver).ic(str, zBooleanValue);
        return Unit.f71739a;
    }
}
