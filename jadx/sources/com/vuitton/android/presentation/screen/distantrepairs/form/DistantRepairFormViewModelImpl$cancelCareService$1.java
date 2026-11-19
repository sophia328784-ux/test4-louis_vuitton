package com.vuitton.android.presentation.screen.distantrepairs.form;

import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.util.StringKtExtKt;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$cancelCareService$1", f = "DistantRepairFormViewModelImpl.kt", l = {613, 617}, m = "invokeSuspend", v = 2)
final class DistantRepairFormViewModelImpl$cancelCareService$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f57168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DistantRepairFormViewModelImpl f57169c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewModelImpl f57171f;
    public final /* synthetic */ CreateCareServiceParam g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f57172h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormViewModelImpl$cancelCareService$1(DistantRepairFormViewModelImpl distantRepairFormViewModelImpl, CreateCareServiceParam createCareServiceParam, String str, Continuation continuation) {
        super(2, continuation);
        this.f57171f = distantRepairFormViewModelImpl;
        this.g = createCareServiceParam;
        this.f57172h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormViewModelImpl$cancelCareService$1(this.f57171f, this.g, this.f57172h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormViewModelImpl$cancelCareService$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Throwable th;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57170e;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl = this.f57171f;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = this.d;
                distantRepairFormViewModelImpl = this.f57169c;
                ResultKt.b(obj);
            }
            distantRepairFormViewModelImpl.f57156b.c("DistantRepairFormViewModelImpl", "Unable to cancel care service", th);
            return Unit.f71739a;
        }
        ResultKt.b(obj);
        distantRepairFormViewModelImpl.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentEvent.f57444a));
        RepairStatus repairStatus = RepairStatus.CANCELLED;
        String str = new String();
        String str2 = new String();
        String str3 = new String();
        String str4 = new String();
        String str5 = new String();
        String str6 = new String();
        String str7 = new String();
        CreateCareServiceParam createCareServiceParam = this.g;
        CareServiceUpdate careServiceUpdate = new CareServiceUpdate(repairStatus, null, null, str, str2, str3, str4, str5, str6, str7, null, null, null, null, null, null, null, null, createCareServiceParam.d != CareServiceOrigin.AppForm ? StringKtExtKt.e(createCareServiceParam.f66822e) : null, new String(), new String(), new String(), null, 4455430, null);
        UpdateCareServiceUseCase updateCareServiceUseCase = distantRepairFormViewModelImpl.m;
        this.f57170e = 1;
        objA = updateCareServiceUseCase.a(this.f57172h, careServiceUpdate, this);
        if (objA != coroutineSingletons) {
        }
        return coroutineSingletons;
        Throwable thA = Result.a(objA);
        if (thA != null) {
            this.f57168b = objA;
            this.f57169c = distantRepairFormViewModelImpl;
            this.d = thA;
            this.f57170e = 2;
            if (DistantRepairFormViewModelImpl.zc(distantRepairFormViewModelImpl, this) != coroutineSingletons) {
                th = thA;
                distantRepairFormViewModelImpl.f57156b.c("DistantRepairFormViewModelImpl", "Unable to cancel care service", th);
            }
            return coroutineSingletons;
        }
        return Unit.f71739a;
    }
}
