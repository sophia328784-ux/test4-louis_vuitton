package com.vuitton.android.presentation.screen.osa;

import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$2$4$1$1", f = "OsaNavDisplay.kt", l = {}, m = "invokeSuspend", v = 2)
final class OsaNavDisplayKt$OsaNavDisplay$2$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModel f60577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaReasonsFormViewModel f60578c;
    public final /* synthetic */ OsaContactFormViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaNavDisplayKt$OsaNavDisplay$2$4$1$1(OsaLocationFormViewModel osaLocationFormViewModel, OsaReasonsFormViewModel osaReasonsFormViewModel, OsaContactFormViewModel osaContactFormViewModel, Continuation continuation) {
        super(2, continuation);
        this.f60577b = osaLocationFormViewModel;
        this.f60578c = osaReasonsFormViewModel;
        this.d = osaContactFormViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaNavDisplayKt$OsaNavDisplay$2$4$1$1(this.f60577b, this.f60578c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaNavDisplayKt$OsaNavDisplay$2$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f60577b.t();
        this.f60578c.t();
        this.d.t();
        return Unit.f71739a;
    }
}
