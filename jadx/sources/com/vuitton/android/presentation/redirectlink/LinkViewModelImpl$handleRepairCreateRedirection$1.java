package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.presentation.screen.authentication.LoginRedirection;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.LinkViewModelImpl$handleRepairCreateRedirection$1", f = "LinkViewModelImpl.kt", l = {60}, m = "invokeSuspend", v = 2)
final class LinkViewModelImpl$handleRepairCreateRedirection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinkViewModelImpl f52032c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkViewModelImpl$handleRepairCreateRedirection$1(LinkViewModelImpl linkViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52032c = linkViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LinkViewModelImpl$handleRepairCreateRedirection$1(this.f52032c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LinkViewModelImpl$handleRepairCreateRedirection$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52031b;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeepLinkHandler deepLinkHandler = this.f52032c.f52021a;
            this.f52031b = 1;
            Object objB = DeepLinkAuthHandler.b(deepLinkHandler.g.d, LoginRedirection.REPAIR_CREATE, null, null, this, 6);
            if (objB != obj2) {
                objB = Unit.f71739a;
            }
            if (objB != obj2) {
                objB = Unit.f71739a;
            }
            if (objB == obj2) {
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
