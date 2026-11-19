package com.vuitton.android.presentation.screen.immersivearticle;

import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$addProductToWishlist$1", f = "ImmersiveArticleViewModelImpl.kt", l = {386, 398}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$addProductToWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f58291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImmersiveArticleViewModelImpl f58292c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleViewModelImpl f58293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f58294f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$addProductToWishlist$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f58293e = immersiveArticleViewModelImpl;
        this.f58294f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$addProductToWishlist$1(this.f58293e, this.f58294f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$addProductToWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x008f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl;
        Throwable thA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        String str = this.f58294f;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl2 = this.f58293e;
        if (i2 == 0) {
            ResultKt.b(obj);
            ImmersiveArticleViewModelImpl.Ec(immersiveArticleViewModelImpl2, str, true, true);
            AddProductToWishlistUseCase addProductToWishlistUseCase = immersiveArticleViewModelImpl2.o;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str);
            this.d = 1;
            objA = addProductToWishlistUseCase.a(str, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            immersiveArticleViewModelImpl = this.f58292c;
            obj2 = this.f58291b;
            ResultKt.b(obj);
        }
        ImmersiveArticleViewModelImpl.Cc(immersiveArticleViewModelImpl, NotificationBuilder.a(immersiveArticleViewModelImpl.f58278i, new StringResourceUiModel.ResId(R.string.mylv_mywishlists_addtowishlist_productadded, null, 2, null), false, null, ImmersiveArticleNotificationAction.GoToWishlist.f58271b, 30));
        objA = obj2;
        thA = Result.a(objA);
        if (thA != null) {
            ImmersiveArticleViewModelImpl.Cc(immersiveArticleViewModelImpl2, NotificationBuilder.a(immersiveArticleViewModelImpl2.f58278i, ImmersiveArticleViewModelImpl.yc(immersiveArticleViewModelImpl2, thA), false, null, null, 60));
        }
        ImmersiveArticleViewModelImpl.Ec(immersiveArticleViewModelImpl2, str, !(objA instanceof Result.Failure), false);
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            immersiveArticleViewModelImpl2.f58276f.a("ImmersiveArticleViewModelImpl", new AppsFlyerEvent.AddToWishlist(MapsKt.h(new Pair(AFInAppEventParameterName.CONTENT_ID, str))));
            ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase = immersiveArticleViewModelImpl2.s;
            this.f58291b = objA;
            this.f58292c = immersiveArticleViewModelImpl2;
            this.d = 2;
            if (reportDYAddToWishlistEventUseCase.a(str, this) != coroutineSingletons) {
                obj2 = objA;
                immersiveArticleViewModelImpl = immersiveArticleViewModelImpl2;
                ImmersiveArticleViewModelImpl.Cc(immersiveArticleViewModelImpl, NotificationBuilder.a(immersiveArticleViewModelImpl.f58278i, new StringResourceUiModel.ResId(R.string.mylv_mywishlists_addtowishlist_productadded, null, 2, null), false, null, ImmersiveArticleNotificationAction.GoToWishlist.f58271b, 30));
                objA = obj2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            ImmersiveArticleViewModelImpl.Cc(immersiveArticleViewModelImpl2, NotificationBuilder.a(immersiveArticleViewModelImpl2.f58278i, ImmersiveArticleViewModelImpl.yc(immersiveArticleViewModelImpl2, thA), false, null, null, 60));
        }
        ImmersiveArticleViewModelImpl.Ec(immersiveArticleViewModelImpl2, str, !(objA instanceof Result.Failure), false);
        return Unit.f71739a;
    }
}
