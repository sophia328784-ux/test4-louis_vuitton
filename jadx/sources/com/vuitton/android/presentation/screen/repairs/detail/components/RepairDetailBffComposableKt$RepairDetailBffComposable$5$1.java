package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class RepairDetailBffComposableKt$RepairDetailBffComposable$5$1 extends AdaptedFunctionReference implements Function3<LocalDate, String, DistantRepairContactMethod, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        LocalDate localDate = (LocalDate) obj;
        String str = (String) obj2;
        localDate.getClass();
        str.getClass();
        ((DatePickerViewModel) this.receiver).Tb(localDate, str, (DistantRepairContactMethod) obj3, null);
        return Unit.f71739a;
    }
}
