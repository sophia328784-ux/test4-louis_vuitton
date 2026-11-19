package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpComposableKt$PdpComposable$9$1 extends FunctionReferenceImpl implements Function3<String, Boolean, CustomizationType, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        String str = (String) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        CustomizationType customizationType = (CustomizationType) obj3;
        str.getClass();
        customizationType.getClass();
        ((PdpViewModel) this.receiver).P8(str, zBooleanValue, customizationType);
        return Unit.f71739a;
    }
}
