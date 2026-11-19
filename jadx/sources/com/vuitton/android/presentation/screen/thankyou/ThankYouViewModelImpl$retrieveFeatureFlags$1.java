package com.vuitton.android.presentation.screen.thankyou;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl", f = "ThankYouViewModelImpl.kt", l = {99, 100}, m = "retrieveFeatureFlags", v = 2)
final class ThankYouViewModelImpl$retrieveFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ThankYouViewModelImpl f65223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f65224c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f65225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewModelImpl f65226f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouViewModelImpl$retrieveFeatureFlags$1(ThankYouViewModelImpl thankYouViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f65226f = thankYouViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f65225e = obj;
        this.g |= Integer.MIN_VALUE;
        return ThankYouViewModelImpl.zc(this.f65226f, this);
    }
}
