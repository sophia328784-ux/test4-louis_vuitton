package com.vuitton.android.presentation.screen.wishlist;

import com.vuitton.android.presentation.screen.wishlist.model.ShareUiModel;
import defpackage.md;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$nativeShareWishlist$1$1", f = "WishlistViewModelImpl.kt", l = {223}, m = "invokeSuspend", v = 2)
final class WishlistViewModelImpl$nativeShareWishlist$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f65646c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f65647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f65648f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistViewModelImpl$nativeShareWishlist$1$1(WishlistViewModelImpl wishlistViewModelImpl, String str, String str2, String str3, Continuation continuation) {
        super(2, continuation);
        this.f65646c = wishlistViewModelImpl;
        this.d = str;
        this.f65647e = str2;
        this.f65648f = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistViewModelImpl$nativeShareWishlist$1$1(this.f65646c, this.d, this.f65647e, this.f65648f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistViewModelImpl$nativeShareWishlist$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65645b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl sharedFlowImpl = this.f65646c.r;
            ShareUiModel shareUiModel = new ShareUiModel(this.f65648f, tr.h(this.d, "\n", this.f65647e), "sharedWishlist", null);
            this.f65645b = 1;
            if (sharedFlowImpl.emit(shareUiModel, this) == coroutineSingletons) {
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
