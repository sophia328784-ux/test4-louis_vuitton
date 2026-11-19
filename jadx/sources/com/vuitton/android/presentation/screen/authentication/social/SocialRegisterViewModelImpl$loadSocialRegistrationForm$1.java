package com.vuitton.android.presentation.screen.authentication.social;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl", f = "SocialRegisterViewModelImpl.kt", l = {196}, m = "loadSocialRegistrationForm", v = 2)
final class SocialRegisterViewModelImpl$loadSocialRegistrationForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f54107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialRegisterViewModelImpl f54108c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialRegisterViewModelImpl$loadSocialRegistrationForm$1(SocialRegisterViewModelImpl socialRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f54108c = socialRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f54107b = obj;
        this.d |= Integer.MIN_VALUE;
        return SocialRegisterViewModelImpl.zc(this.f54108c, this);
    }
}
