package com.vuitton.android.presentation.screen.privacy;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StartAppsFlyerUseCase;
import com.vuitton.foundation.logger.Logger;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$saveConsents$1$2$1", f = "PrivacyViewModelImpl.kt", l = {ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", v = 2)
final class PrivacyViewModelImpl$saveConsents$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrivacyViewModelImpl f63370c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyViewModelImpl$saveConsents$1$2$1(PrivacyViewModelImpl privacyViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63370c = privacyViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrivacyViewModelImpl$saveConsents$1$2$1(this.f63370c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrivacyViewModelImpl$saveConsents$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63369b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PrivacyViewModelImpl privacyViewModelImpl = this.f63370c;
            boolean zA = privacyViewModelImpl.l.a();
            Logger logger = privacyViewModelImpl.n;
            if (zA) {
                logger.getClass();
                StartAppsFlyerUseCase startAppsFlyerUseCase = privacyViewModelImpl.f63354j;
                this.f63369b = 1;
                if (startAppsFlyerUseCase.a(this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                logger.getClass();
                privacyViewModelImpl.f63355k.f49228a.a();
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
