package com.vuitton.android.presentation.screen.authentication.social;

import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;", "socialLoginUiModel", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "isLoading", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$viewState$1", f = "SocialLoginViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class SocialLoginViewModelImpl$viewState$1 extends SuspendLambda implements Function3<SocialLoginUiModel, Boolean, Continuation<? super SocialLoginViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ SocialLoginUiModel f54074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f54075c;
    public final /* synthetic */ SocialLoginViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialLoginViewModelImpl$viewState$1(SocialLoginViewModelImpl socialLoginViewModelImpl, Continuation continuation) {
        super(3, continuation);
        this.d = socialLoginViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        SocialLoginViewModelImpl$viewState$1 socialLoginViewModelImpl$viewState$1 = new SocialLoginViewModelImpl$viewState$1(this.d, (Continuation) obj3);
        socialLoginViewModelImpl$viewState$1.f54074b = (SocialLoginUiModel) obj;
        socialLoginViewModelImpl$viewState$1.f54075c = zBooleanValue;
        return socialLoginViewModelImpl$viewState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SocialLoginUiModel socialLoginUiModel = this.f54074b;
        boolean z = this.f54075c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SocialLoginViewModelImpl socialLoginViewModelImpl = this.d;
        return new SocialLoginViewState(socialLoginUiModel, socialLoginViewModelImpl.n, socialLoginViewModelImpl.o, socialLoginViewModelImpl.p, socialLoginViewModelImpl.q, z);
    }
}
