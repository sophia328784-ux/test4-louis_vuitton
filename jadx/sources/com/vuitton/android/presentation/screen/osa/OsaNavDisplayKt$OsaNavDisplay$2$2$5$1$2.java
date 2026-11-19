package com.vuitton.android.presentation.screen.osa;

import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2", f = "OsaNavDisplay.kt", l = {146}, m = "invokeSuspend", v = 2)
final class OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModel f60575c;
    public final /* synthetic */ NavBackStack d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2(OsaLocationFormViewModel osaLocationFormViewModel, NavBackStack navBackStack, Continuation continuation) {
        super(2, continuation);
        this.f60575c = osaLocationFormViewModel;
        this.d = navBackStack;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2(this.f60575c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60574b;
        OsaLocationFormViewModel osaLocationFormViewModel = this.f60575c;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f60574b = 1;
            obj = osaLocationFormViewModel.r2(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        NavBackStack navBackStack = this.d;
        if (!zBooleanValue || ((OsaLocationFormViewState) osaLocationFormViewModel.getU().getValue()).r) {
            navBackStack.a(OsaRoutes.ContactForm.INSTANCE);
        } else {
            navBackStack.a(OsaRoutes.Kisa.INSTANCE);
        }
        return Unit.f71739a;
    }
}
