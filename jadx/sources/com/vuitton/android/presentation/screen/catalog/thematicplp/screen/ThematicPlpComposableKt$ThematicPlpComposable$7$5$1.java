package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ThematicPlpComposableKt$ThematicPlpComposable$7$5$1 extends FunctionReferenceImpl implements Function2<ThemeItemUiModel, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ThemeItemUiModel themeItemUiModel = (ThemeItemUiModel) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        themeItemUiModel.getClass();
        ((ThematicPlpViewModel) this.receiver).b3(themeItemUiModel, zBooleanValue);
        return Unit.f71739a;
    }
}
