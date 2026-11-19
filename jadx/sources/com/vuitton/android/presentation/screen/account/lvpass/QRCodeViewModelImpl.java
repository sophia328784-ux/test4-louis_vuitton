package com.vuitton.android.presentation.screen.account.lvpass;

import android.content.Context;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.account.GetPassUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\rB)\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;", "getPassUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class QRCodeViewModelImpl extends ViewModel implements QRCodeViewModel {
    public static final String g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetPassUseCase f52451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f52452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f52453c;
    public final InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f52454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f52455f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = Reflection.f71922a.b(QRCodeViewModelImpl.class).B();
    }

    @Inject
    public QRCodeViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetPassUseCase getPassUseCase, Logger logger, Monitor monitor) {
        requireUserInAppDispatchUseCase.getClass();
        getPassUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        this.f52451a = getPassUseCase;
        this.f52452b = logger;
        this.f52453c = monitor;
        this.d = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(QRCodeScreenState.Loading.f52447a);
        this.f52454e = mutableStateFlowA;
        this.f52455f = FlowKt.b(mutableStateFlowA);
    }

    @Override // com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModel
    public final void Q7(Context context) {
        context.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new QRCodeViewModelImpl$loadQRCodeData$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModel
    /* JADX INFO: renamed from: S9, reason: from getter */
    public final StateFlow getF52455f() {
        return this.f52455f;
    }
}
