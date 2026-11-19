package com.vuitton.android.presentation.redirectlink;

import android.app.Activity;
import android.net.Uri;
import com.vuitton.android.presentation.push.UtmNotificationTracker;
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
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.LinkViewModelImpl$dispatchDeepLinks$1", f = "LinkViewModelImpl.kt", l = {49}, m = "invokeSuspend", v = 2)
final class LinkViewModelImpl$dispatchDeepLinks$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinkViewModelImpl f52026c;
    public final /* synthetic */ Activity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Uri f52027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f52028f;
    public final /* synthetic */ boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkViewModelImpl$dispatchDeepLinks$1(LinkViewModelImpl linkViewModelImpl, Activity activity, Uri uri, String str, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f52026c = linkViewModelImpl;
        this.d = activity;
        this.f52027e = uri;
        this.f52028f = str;
        this.g = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LinkViewModelImpl$dispatchDeepLinks$1(this.f52026c, this.d, this.f52027e, this.f52028f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LinkViewModelImpl$dispatchDeepLinks$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52025b;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeepLinkHandler deepLinkHandler = this.f52026c.f52021a;
            this.f52025b = 1;
            deepLinkHandler.getClass();
            Activity activity = this.d;
            Uri uri = this.f52027e;
            UtmNotificationTracker.a(activity, uri);
            Object objC = SupervisorKt.c(new DeepLinkHandler$dispatchLvDeepLinks$2(deepLinkHandler, uri, this.g, this.f52028f, null), this);
            if (objC != obj2) {
                objC = Unit.f71739a;
            }
            if (objC != obj2) {
                objC = Unit.f71739a;
            }
            if (objC == obj2) {
                return obj2;
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
