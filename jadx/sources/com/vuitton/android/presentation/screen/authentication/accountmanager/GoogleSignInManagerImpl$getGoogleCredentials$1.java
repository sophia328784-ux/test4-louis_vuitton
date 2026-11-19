package com.vuitton.android.presentation.screen.authentication.accountmanager;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManagerImpl", f = "GoogleSignInManagerImpl.kt", l = {56}, m = "getGoogleCredentials", v = 2)
final class GoogleSignInManagerImpl$getGoogleCredentials$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrackingAuthOrigin f53413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TrackingAuthEntryPoint f53414c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f53415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f53416f;
    public final /* synthetic */ GoogleSignInManagerImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f53417h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleSignInManagerImpl$getGoogleCredentials$1(GoogleSignInManagerImpl googleSignInManagerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = googleSignInManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53416f = obj;
        this.f53417h |= Integer.MIN_VALUE;
        return this.g.a(null, null, null, this);
    }
}
