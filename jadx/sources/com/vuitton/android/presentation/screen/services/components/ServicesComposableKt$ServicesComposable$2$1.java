package com.vuitton.android.presentation.screen.services.components;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.models.ServicesNavigationEvent;
import defpackage.md;
import defpackage.os;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.components.ServicesComposableKt$ServicesComposable$2$1", f = "ServicesComposable.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
final class ServicesComposableKt$ServicesComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModel f64359c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesComposableKt$ServicesComposable$2$1(ServicesViewModel servicesViewModel, Context context, Continuation continuation) {
        super(2, continuation);
        this.f64359c = servicesViewModel;
        this.d = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ServicesComposableKt$ServicesComposable$2$1(this.f64359c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesComposableKt$ServicesComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64358b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow d = this.f64359c.getD();
            final Context context = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.services.components.ServicesComposableKt$ServicesComposable$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    ServicesDestinations toOsaPage;
                    ServicesNavigationEvent servicesNavigationEvent = (ServicesNavigationEvent) obj2;
                    if (Intrinsics.c(servicesNavigationEvent, ServicesNavigationEvent.ToMyExperiences.f64380a)) {
                        toOsaPage = ServicesDestinations.ToMyExperiencesPage.f64294a;
                    } else {
                        if (!(servicesNavigationEvent instanceof ServicesNavigationEvent.ToOsa)) {
                            v40.g();
                            return null;
                        }
                        ServicesNavigationEvent.ToOsa toOsa = (ServicesNavigationEvent.ToOsa) servicesNavigationEvent;
                        toOsaPage = new ServicesDestinations.ToOsaPage(toOsa.f64381a, null, null, null, false, OsaOriginScreen.CUSTOMER_SERVICES, null, toOsa.f64382b, 94, null);
                    }
                    Context context2 = context;
                    Intent intentA = ServicesDestinationsKt.a(toOsaPage, context2);
                    if (intentA != null) {
                        IntentExtensionKt.a(context2, intentA);
                    }
                    return Unit.f71739a;
                }
            };
            this.f64358b = 1;
            if (d.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
