package com.vuitton.android.presentation.screen.authentication.social;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$loadRegistrationForms$1", f = "SocialRegisterViewModelImpl.kt", l = {177}, m = "invokeSuspend", v = 2)
final class SocialRegisterViewModelImpl$loadRegistrationForms$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f54098c;
    public final /* synthetic */ SocialRegisterViewModelImpl d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$loadRegistrationForms$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$loadRegistrationForms$1$1", f = "SocialRegisterViewModelImpl.kt", l = {178}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f54099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SocialRegisterViewModelImpl f54100c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SocialRegisterViewModelImpl socialRegisterViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f54100c = socialRegisterViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f54100c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f54099b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f54099b = 1;
                if (SocialRegisterViewModelImpl.zc(this.f54100c, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$loadRegistrationForms$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$loadRegistrationForms$1$2", f = "SocialRegisterViewModelImpl.kt", l = {179}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f54101b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SocialRegisterViewModelImpl f54102c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SocialRegisterViewModelImpl socialRegisterViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f54102c = socialRegisterViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f54102c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f54101b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f54101b = 1;
                if (SocialRegisterViewModelImpl.yc(this.f54102c, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialRegisterViewModelImpl$loadRegistrationForms$1(SocialRegisterViewModelImpl socialRegisterViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = socialRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SocialRegisterViewModelImpl$loadRegistrationForms$1 socialRegisterViewModelImpl$loadRegistrationForms$1 = new SocialRegisterViewModelImpl$loadRegistrationForms$1(this.d, continuation);
        socialRegisterViewModelImpl$loadRegistrationForms$1.f54098c = obj;
        return socialRegisterViewModelImpl$loadRegistrationForms$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SocialRegisterViewModelImpl$loadRegistrationForms$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SocialRegisterViewModelImpl socialRegisterViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = socialRegisterViewModelImpl.q;
        CoroutineScope coroutineScope = (CoroutineScope) this.f54098c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54097b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            Deferred[] deferredArr = {BuildersKt.a(coroutineScope, null, new AnonymousClass1(socialRegisterViewModelImpl, null), 3), BuildersKt.a(coroutineScope, null, new AnonymousClass2(socialRegisterViewModelImpl, null), 3)};
            this.f54098c = null;
            this.f54097b = 1;
            if (AwaitKt.a(deferredArr, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
