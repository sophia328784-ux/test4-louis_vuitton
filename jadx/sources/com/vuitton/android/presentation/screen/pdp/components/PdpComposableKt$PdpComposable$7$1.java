package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpComposableKt$PdpComposable$7$1 extends FunctionReferenceImpl implements Function2<String, CustomizationType, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj;
        CustomizationType customizationType = (CustomizationType) obj2;
        str.getClass();
        customizationType.getClass();
        ((PdpViewModel) this.receiver).jc(str, customizationType);
        return Unit.f71739a;
    }
}
