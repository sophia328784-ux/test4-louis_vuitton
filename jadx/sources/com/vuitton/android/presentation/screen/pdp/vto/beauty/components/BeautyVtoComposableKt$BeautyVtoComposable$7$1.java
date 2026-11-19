package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoComposableKt$BeautyVtoComposable$7$1 extends FunctionReferenceImpl implements Function1<LookUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LookUiModel lookUiModel = (LookUiModel) obj;
        lookUiModel.getClass();
        ((BeautyVtoViewModel) this.receiver).n2(lookUiModel);
        return Unit.f71739a;
    }
}
