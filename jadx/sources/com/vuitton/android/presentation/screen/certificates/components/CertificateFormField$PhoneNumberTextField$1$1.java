package com.vuitton.android.presentation.screen.certificates.components;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.components.CertificateFormField$PhoneNumberTextField$1$1", f = "CertificateFormField.kt", l = {Primes.SMALL_FACTOR_LIMIT}, m = "invokeSuspend", v = 2)
final class CertificateFormField$PhoneNumberTextField$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableInteractionSource f55675c;
    public final /* synthetic */ CertificateFormField d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f55676e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateFormField$PhoneNumberTextField$1$1(MutableInteractionSource mutableInteractionSource, CertificateFormField certificateFormField, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f55675c = mutableInteractionSource;
        this.d = certificateFormField;
        this.f55676e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateFormField$PhoneNumberTextField$1$1(this.f55675c, this.d, this.f55676e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateFormField$PhoneNumberTextField$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55674b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl f4891a = this.f55675c.getF4891a();
            final CertificateFormField certificateFormField = this.d;
            final Function1 function1 = this.f55676e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.certificates.components.CertificateFormField$PhoneNumberTextField$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (((Interaction) obj2) instanceof FocusInteraction.Unfocus) {
                        Regex regex = CertificateFormField.l;
                        CertificateFormField certificateFormField2 = certificateFormField;
                        if (!certificateFormField2.e()) {
                            function1.invoke(Boolean.valueOf(certificateFormField2.g()));
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f55674b = 1;
            f4891a.getClass();
            if (SharedFlowImpl.o(f4891a, flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
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
