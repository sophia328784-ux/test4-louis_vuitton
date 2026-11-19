package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AddressEditorComposableKt$AddressEditorComposable$7$4$1 extends FunctionReferenceImpl implements Function1<PhoneType, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PhoneType phoneType = (PhoneType) obj;
        phoneType.getClass();
        ((AddressEditorViewModel) this.receiver).e0(phoneType);
        return Unit.f71739a;
    }
}
