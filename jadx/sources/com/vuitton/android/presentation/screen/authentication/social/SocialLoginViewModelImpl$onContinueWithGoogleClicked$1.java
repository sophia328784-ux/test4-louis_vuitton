package com.vuitton.android.presentation.screen.authentication.social;

import androidx.activity.ComponentActivity;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$onContinueWithGoogleClicked$1", f = "SocialLoginViewModelImpl.kt", l = {144, 156, 176, 181}, m = "invokeSuspend", v = 2)
final class SocialLoginViewModelImpl$onContinueWithGoogleClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialLoginViewModelImpl f54054c;
    public final /* synthetic */ ComponentActivity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthOrigin f54055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f54056f;
    public final /* synthetic */ MonitorAction g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialLoginViewModelImpl$onContinueWithGoogleClicked$1(SocialLoginViewModelImpl socialLoginViewModelImpl, ComponentActivity componentActivity, TrackingAuthOrigin trackingAuthOrigin, boolean z, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f54054c = socialLoginViewModelImpl;
        this.d = componentActivity;
        this.f54055e = trackingAuthOrigin;
        this.f54056f = z;
        this.g = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SocialLoginViewModelImpl$onContinueWithGoogleClicked$1(this.f54054c, this.d, this.f54055e, this.f54056f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SocialLoginViewModelImpl$onContinueWithGoogleClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
    
        if (r2.u(r4, r17) == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00aa, code lost:
    
        if (r2.u(r3, r17) == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cf, code lost:
    
        if (r2.u(r4, r17) == r1) goto L43;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$onContinueWithGoogleClicked$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
