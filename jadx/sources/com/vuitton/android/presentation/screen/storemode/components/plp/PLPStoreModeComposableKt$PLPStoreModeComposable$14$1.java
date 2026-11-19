package com.vuitton.android.presentation.screen.storemode.components.plp;

import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PLPStoreModeComposableKt$PLPStoreModeComposable$14$1 extends FunctionReferenceImpl implements Function1<PLPWishlistUpdateUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
        pLPWishlistUpdateUiModel.getClass();
        ((PLPStoreModeViewModel) this.receiver).E(pLPWishlistUpdateUiModel);
        return Unit.f71739a;
    }
}
