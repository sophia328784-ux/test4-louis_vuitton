package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.foundation.model.domain.model.forms.Form;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/forms/Form;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1$3$1", f = "OsaContactFormViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$loadDynamicForms$1$3$1 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Form>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f60663b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$loadDynamicForms$1$3$1(Object obj, Continuation continuation) {
        super(1, continuation);
        this.f60663b = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OsaContactFormViewModelImpl$loadDynamicForms$1$3$1(this.f60663b, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OsaContactFormViewModelImpl$loadDynamicForms$1$3$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new Result(this.f60663b);
    }
}
