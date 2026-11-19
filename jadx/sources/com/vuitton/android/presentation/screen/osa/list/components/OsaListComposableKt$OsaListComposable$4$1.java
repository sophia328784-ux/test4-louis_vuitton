package com.vuitton.android.presentation.screen.osa.list.components;

import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaListComposableKt$OsaListComposable$4$1 extends FunctionReferenceImpl implements Function1<OsaItemUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj;
        osaItemUiModel.getClass();
        ((OsaListViewModel) this.receiver).V4(osaItemUiModel);
        return Unit.f71739a;
    }
}
