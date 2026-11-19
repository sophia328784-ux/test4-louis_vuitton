package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1 extends FunctionReferenceImpl implements Function1<DistantRepairContactMethod, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DistantRepairContactMethod distantRepairContactMethod = (DistantRepairContactMethod) obj;
        distantRepairContactMethod.getClass();
        ((DistantRepairFormBffViewModel) this.receiver).z0(distantRepairContactMethod);
        return Unit.f71739a;
    }
}
