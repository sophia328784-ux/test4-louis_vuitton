package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.pdp.PDPMonitoring;
import com.vuitton.android.domain.usecase.pdp.backinstock.SubscribeBackInStockUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.error.batch.NoBatchInstallationIdFoundException;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$registerToProductBIS$1", f = "PdpViewModelImpl.kt", l = {647, 650, 659}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$registerToProductBIS$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PdpViewModelImpl f61244c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61246f;
    public final /* synthetic */ ProductUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f61247h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$registerToProductBIS$1(PdpViewModelImpl pdpViewModelImpl, ProductUiModel productUiModel, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f61246f = pdpViewModelImpl;
        this.g = productUiModel;
        this.f61247h = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$registerToProductBIS$1(this.f61246f, this.g, this.f61247h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$registerToProductBIS$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x007e A[PHI: r4
      0x007e: PHI (r4v4 java.lang.Object) = (r4v3 java.lang.Object), (r4v3 java.lang.Object), (r4v10 java.lang.Object) binds: [B:16:0x0059, B:18:0x007b, B:10:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x0084  */
    /* JADX WARN: Code duplicated, block: B:25:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c4  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Throwable thA;
        NotificationUiModel notificationUiModelA;
        PdpViewModelImpl pdpViewModelImpl;
        Throwable th;
        PdpViewModelImpl pdpViewModelImpl2 = this.f61246f;
        BufferedChannel bufferedChannel = pdpViewModelImpl2.v0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61245e;
        MonitorAction monitorAction = this.f61247h;
        if (i2 == 0) {
            ResultKt.b(obj);
            SubscribeBackInStockUseCase subscribeBackInStockUseCase = pdpViewModelImpl2.z;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str = this.g.f61735b;
            companion.getClass();
            SkuIdUiModel.Companion.b(str);
            this.f61245e = 1;
            objA = subscribeBackInStockUseCase.a(str, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                objA = this.f61243b;
                ResultKt.b(obj);
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new PDPMonitoring.Error.SubscribeBackInStockError(thA));
                    notificationUiModelA = NotificationBuilder.a(pdpViewModelImpl2.f61143k, new StringResourceUiModel.ResId(R.string.notify_back_in_stock_banner_error_description, null, 2, null), false, null, null, 60);
                    this.f61243b = objA;
                    this.f61244c = pdpViewModelImpl2;
                    this.d = thA;
                    this.f61245e = 3;
                    if (bufferedChannel.u(notificationUiModelA, this) != coroutineSingletons) {
                        pdpViewModelImpl = pdpViewModelImpl2;
                        th = thA;
                    }
                    return coroutineSingletons;
                }
                monitorAction.b();
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.d;
            pdpViewModelImpl = this.f61244c;
            ResultKt.b(obj);
        }
        if (th instanceof NoBatchInstallationIdFoundException) {
            pdpViewModelImpl.f61136b.c(PdpViewModelImpl.class.getName(), th.getMessage(), null);
        } else {
            defpackage.a.y("Impossible to subscribe at back in stock, check installation id. ", th.getMessage(), pdpViewModelImpl.f61136b, PdpViewModelImpl.class.getName(), null);
        }
        monitorAction.b();
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            NotificationUiModel notificationUiModelA2 = NotificationBuilder.a(pdpViewModelImpl2.f61143k, new StringResourceUiModel.ResId(R.string.notify_back_in_stock_banner_success_description, null, 2, null), true, null, null, 60);
            this.f61243b = objA;
            this.f61244c = null;
            this.f61245e = 2;
            if (bufferedChannel.u(notificationUiModelA2, this) != coroutineSingletons) {
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new PDPMonitoring.Error.SubscribeBackInStockError(thA));
                    notificationUiModelA = NotificationBuilder.a(pdpViewModelImpl2.f61143k, new StringResourceUiModel.ResId(R.string.notify_back_in_stock_banner_error_description, null, 2, null), false, null, null, 60);
                    this.f61243b = objA;
                    this.f61244c = pdpViewModelImpl2;
                    this.d = thA;
                    this.f61245e = 3;
                    if (bufferedChannel.u(notificationUiModelA, this) != coroutineSingletons) {
                        pdpViewModelImpl = pdpViewModelImpl2;
                        th = thA;
                        if (th instanceof NoBatchInstallationIdFoundException) {
                            pdpViewModelImpl.f61136b.c(PdpViewModelImpl.class.getName(), th.getMessage(), null);
                        } else {
                            defpackage.a.y("Impossible to subscribe at back in stock, check installation id. ", th.getMessage(), pdpViewModelImpl.f61136b, PdpViewModelImpl.class.getName(), null);
                        }
                    }
                }
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new PDPMonitoring.Error.SubscribeBackInStockError(thA));
            notificationUiModelA = NotificationBuilder.a(pdpViewModelImpl2.f61143k, new StringResourceUiModel.ResId(R.string.notify_back_in_stock_banner_error_description, null, 2, null), false, null, null, 60);
            this.f61243b = objA;
            this.f61244c = pdpViewModelImpl2;
            this.d = thA;
            this.f61245e = 3;
            if (bufferedChannel.u(notificationUiModelA, this) != coroutineSingletons) {
                pdpViewModelImpl = pdpViewModelImpl2;
                th = thA;
                if (th instanceof NoBatchInstallationIdFoundException) {
                    pdpViewModelImpl.f61136b.c(PdpViewModelImpl.class.getName(), th.getMessage(), null);
                } else {
                    defpackage.a.y("Impossible to subscribe at back in stock, check installation id. ", th.getMessage(), pdpViewModelImpl.f61136b, PdpViewModelImpl.class.getName(), null);
                }
            }
            return coroutineSingletons;
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
