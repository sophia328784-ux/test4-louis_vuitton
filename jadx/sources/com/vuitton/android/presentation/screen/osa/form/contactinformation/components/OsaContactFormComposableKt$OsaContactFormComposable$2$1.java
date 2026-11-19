package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormComposableKt$OsaContactFormComposable$2$1", f = "OsaContactFormComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class OsaContactFormComposableKt$OsaContactFormComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModel f60721b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormComposableKt$OsaContactFormComposable$2$1(OsaContactFormViewModel osaContactFormViewModel, Continuation continuation) {
        super(2, continuation);
        this.f60721b = osaContactFormViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormComposableKt$OsaContactFormComposable$2$1(this.f60721b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormComposableKt$OsaContactFormComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f60721b.o(OsaTrackingUiModel.BookAppointmentContactInfoScreen.f60980a);
        return Unit.f71739a;
    }
}
