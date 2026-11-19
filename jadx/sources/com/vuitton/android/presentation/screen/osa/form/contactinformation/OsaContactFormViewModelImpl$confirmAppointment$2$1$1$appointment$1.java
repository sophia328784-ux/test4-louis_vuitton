package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1", f = "OsaContactFormViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1 extends SuspendLambda implements Function1<Continuation<? super DispatchRegionCode>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60651b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
        super(1, continuation);
        this.f60651b = osaContactFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1(continuation, this.f60651b);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new DispatchRegionCode(this.f60651b.v.f67483j);
    }
}
