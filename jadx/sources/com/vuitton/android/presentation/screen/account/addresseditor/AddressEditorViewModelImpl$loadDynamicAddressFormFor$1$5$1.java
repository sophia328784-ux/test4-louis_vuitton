package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.ExtraPhoneField;
import com.vuitton.foundation.model.domain.model.profile.Address;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$1 extends FunctionReferenceImpl implements Function0<ExtraPhoneField> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Address addressAc;
        Address addressAc2;
        String str;
        String str2;
        String str3;
        Address addressAc3;
        AddressEditorViewModelImpl addressEditorViewModelImpl = (AddressEditorViewModelImpl) this.receiver;
        MutableStateFlow mutableStateFlow = addressEditorViewModelImpl.B;
        AddressEditorViewType addressEditorViewType = (AddressEditorViewType) mutableStateFlow.getValue();
        addressEditorViewType.getClass();
        AddressEditorViewType addressEditorViewType2 = AddressEditorViewType.EDIT_MAIN_ADDRESS;
        if ((addressEditorViewType == addressEditorViewType2 || addressEditorViewType == AddressEditorViewType.EDIT_SECONDARY_ADDRESS) && (addressAc = addressEditorViewModelImpl.Ac()) != null && addressAc.a() && (addressAc2 = addressEditorViewModelImpl.Ac()) != null && (str = addressAc2.G) != null && !StringsKt.w(str) && (str2 = addressAc2.H) != null && !StringsKt.w(str2) && (str3 = addressAc2.I) != null && !StringsKt.w(str3)) {
            return ExtraPhoneField.TWO_EXTRA;
        }
        AddressEditorViewType addressEditorViewType3 = (AddressEditorViewType) mutableStateFlow.getValue();
        addressEditorViewType3.getClass();
        return ((addressEditorViewType3 == addressEditorViewType2 || addressEditorViewType3 == AddressEditorViewType.EDIT_SECONDARY_ADDRESS) && (addressAc3 = addressEditorViewModelImpl.Ac()) != null && addressAc3.a()) ? ExtraPhoneField.ONE_EXTRA : ExtraPhoneField.NONE;
    }
}
