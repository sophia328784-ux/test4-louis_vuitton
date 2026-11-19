package com.vuitton.android.presentation.screen.thankyou;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl", f = "ThankYouViewModelImpl.kt", l = {233, 233}, m = "resolveDisplayName", v = 2)
final class ThankYouViewModelImpl$resolveDisplayName$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f65213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f65214c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewModelImpl f65215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f65216f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouViewModelImpl$resolveDisplayName$1(ThankYouViewModelImpl thankYouViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f65215e = thankYouViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f65216f |= Integer.MIN_VALUE;
        return ThankYouViewModelImpl.yc(this.f65215e, null, this);
    }
}
