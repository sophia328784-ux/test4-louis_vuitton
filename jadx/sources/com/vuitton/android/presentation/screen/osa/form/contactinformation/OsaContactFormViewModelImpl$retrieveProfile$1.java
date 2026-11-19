package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.profile.Profile;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$retrieveProfile$1", f = "OsaContactFormViewModelImpl.kt", l = {258}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$retrieveProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60686c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$retrieveProfile$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$retrieveProfile$1$1", f = "OsaContactFormViewModelImpl.kt", l = {247, 247, 254}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f60687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Throwable f60688c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ OsaContactFormViewModelImpl f60689e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
            super(2, continuation);
            this.f60689e = osaContactFormViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f60689e);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0049  */
        /* JADX WARN: Code duplicated, block: B:23:0x0061  */
        /* JADX WARN: Code duplicated, block: B:26:0x0076  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objC;
            Throwable thA;
            StringResourceUiModel.ResId resId;
            Throwable th;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.d;
            OsaContactFormViewModelImpl osaContactFormViewModelImpl = this.f60689e;
            if (i2 == 0) {
                ResultKt.b(obj);
                GetProfileUseCase getProfileUseCase = osaContactFormViewModelImpl.m;
                this.d = 1;
                obj = getProfileUseCase.a(this);
                if (obj != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                ResultKt.b(obj);
            } else {
                if (i2 == 2) {
                    ResultKt.b(obj);
                    objC = ((Result) obj).f71708b;
                    Result.Companion companion = Result.INSTANCE;
                    if (!(objC instanceof Result.Failure)) {
                        osaContactFormViewModelImpl.P.setValue((Profile) objC);
                        osaContactFormViewModelImpl.T.remove("loadDynamicFormsJob");
                        osaContactFormViewModelImpl.x1();
                    }
                    thA = Result.a(objC);
                    if (thA != null) {
                        resId = new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
                        this.f60687b = objC;
                        this.f60688c = thA;
                        this.d = 3;
                        if (OsaContactFormViewModelImpl.yc(osaContactFormViewModelImpl, resId, this) != coroutineSingletons) {
                            th = thA;
                        }
                        return coroutineSingletons;
                    }
                    osaContactFormViewModelImpl.w.setValue(Boolean.FALSE);
                    return Unit.f71739a;
                }
                if (i2 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = this.f60688c;
                ResultKt.b(obj);
            }
            LegacyLogger.f66205a.c("OsaContactFormViewModelImpl", th.getMessage(), null);
            osaContactFormViewModelImpl.w.setValue(Boolean.FALSE);
            return Unit.f71739a;
            this.d = 2;
            objC = ((ResultStrategy) obj).c(this);
            if (objC != coroutineSingletons) {
                Result.Companion companion2 = Result.INSTANCE;
                if (!(objC instanceof Result.Failure)) {
                    osaContactFormViewModelImpl.P.setValue((Profile) objC);
                    osaContactFormViewModelImpl.T.remove("loadDynamicFormsJob");
                    osaContactFormViewModelImpl.x1();
                }
                thA = Result.a(objC);
                if (thA != null) {
                    resId = new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
                    this.f60687b = objC;
                    this.f60688c = thA;
                    this.d = 3;
                    if (OsaContactFormViewModelImpl.yc(osaContactFormViewModelImpl, resId, this) != coroutineSingletons) {
                        th = thA;
                        LegacyLogger.f66205a.c("OsaContactFormViewModelImpl", th.getMessage(), null);
                    }
                }
                osaContactFormViewModelImpl.w.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$retrieveProfile$1(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
        super(2, continuation);
        this.f60686c = osaContactFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$retrieveProfile$1(continuation, this.f60686c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$retrieveProfile$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60685b;
        OsaContactFormViewModelImpl osaContactFormViewModelImpl = this.f60686c;
        if (i2 == 0) {
            ResultKt.b(obj);
            osaContactFormViewModelImpl.w.setValue(Boolean.TRUE);
            Job jobC = BuildersKt.c(ViewModelKt.a(osaContactFormViewModelImpl), null, null, new AnonymousClass1(null, osaContactFormViewModelImpl), 3);
            this.f60685b = 1;
            if (jobC.join(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        if (((Boolean) osaContactFormViewModelImpl.I.getValue()).booleanValue()) {
            osaContactFormViewModelImpl.Ac(null);
        }
        return Unit.f71739a;
    }
}
