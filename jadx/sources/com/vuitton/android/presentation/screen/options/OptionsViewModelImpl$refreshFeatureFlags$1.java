package com.vuitton.android.presentation.screen.options;

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
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$refreshFeatureFlags$1", f = "OptionsViewModelImpl.kt", l = {BERTags.FLAGS}, m = "invokeSuspend", v = 2)
final class OptionsViewModelImpl$refreshFeatureFlags$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OptionsViewModelImpl f59664c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsViewModelImpl$refreshFeatureFlags$1(OptionsViewModelImpl optionsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59664c = optionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OptionsViewModelImpl$refreshFeatureFlags$1(this.f59664c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OptionsViewModelImpl$refreshFeatureFlags$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59663b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f59663b = 1;
            if (OptionsViewModelImpl.yc(this.f59664c, this) == coroutineSingletons) {
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
