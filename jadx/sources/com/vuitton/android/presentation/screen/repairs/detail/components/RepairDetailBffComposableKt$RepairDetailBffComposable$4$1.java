package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffComposableKt$RepairDetailBffComposable$4$1 extends FunctionReferenceImpl implements Function3<AvailabilitiesCaller, String, DistantRepairContactMethod, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        AvailabilitiesCaller availabilitiesCaller = (AvailabilitiesCaller) obj;
        String str = (String) obj2;
        availabilitiesCaller.getClass();
        str.getClass();
        ((DatePickerViewModel) this.receiver).a5(availabilitiesCaller, str, (DistantRepairContactMethod) obj3);
        return Unit.f71739a;
    }
}
