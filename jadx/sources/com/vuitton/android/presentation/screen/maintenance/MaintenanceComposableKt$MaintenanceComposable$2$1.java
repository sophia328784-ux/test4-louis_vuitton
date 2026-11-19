package com.vuitton.android.presentation.screen.maintenance;

import androidx.lifecycle.ViewModelKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class MaintenanceComposableKt$MaintenanceComposable$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final /* bridge */ /* synthetic */ Object mo47invoke() {
        p();
        return Unit.f71739a;
    }

    public final void p() {
        MaintenanceViewModelImpl maintenanceViewModelImpl = (MaintenanceViewModelImpl) this.receiver;
        maintenanceViewModelImpl.getClass();
        BuildersKt.c(ViewModelKt.a(maintenanceViewModelImpl), null, null, new MaintenanceViewModelImpl$onContactRequested$1(maintenanceViewModelImpl, null), 3);
    }
}
