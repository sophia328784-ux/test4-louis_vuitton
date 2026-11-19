package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1", f = "ImmersiveArticleViewModelImpl.kt", l = {425}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$BooleanRef f58298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f58299c;
    public final /* synthetic */ ImmersiveArticleViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f58300e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = immersiveArticleViewModelImpl;
        this.f58300e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1(this.d, this.f58300e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        Ref$BooleanRef ref$BooleanRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58299c;
        String str = this.f58300e;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            ImmersiveArticleViewModelImpl.Ec(immersiveArticleViewModelImpl, str, false, true);
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            ref$BooleanRef2.f71917b = true;
            DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase = immersiveArticleViewModelImpl.r;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str);
            this.f58298b = ref$BooleanRef2;
            this.f58299c = 1;
            Object objA = deleteProductFromWishlistUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            ref$BooleanRef = ref$BooleanRef2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$BooleanRef = this.f58298b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            ImmersiveArticleViewModelImpl.Cc(immersiveArticleViewModelImpl, NotificationBuilder.a(immersiveArticleViewModelImpl.f58278i, new StringResourceUiModel.ResId(R.string.mylv_mywishlists_removefromwishlist_productremoved, null, 2, null), false, null, null, 62));
            ref$BooleanRef.f71917b = false;
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            ImmersiveArticleViewModelImpl.Cc(immersiveArticleViewModelImpl, NotificationBuilder.a(immersiveArticleViewModelImpl.f58278i, ImmersiveArticleViewModelImpl.yc(immersiveArticleViewModelImpl, thA), false, null, null, 60));
        }
        ImmersiveArticleViewModelImpl.Ec(immersiveArticleViewModelImpl, str, ref$BooleanRef.f71917b, false);
        return Unit.f71739a;
    }
}
