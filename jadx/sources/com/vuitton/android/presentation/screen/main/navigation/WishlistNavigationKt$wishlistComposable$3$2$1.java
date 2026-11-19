package com.vuitton.android.presentation.screen.main.navigation;

import android.content.Context;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl;
import com.vuitton.android.presentation.screen.wishlist.model.ShareUiModel;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.navigation.WishlistNavigationKt$wishlistComposable$3$2$1", f = "WishlistNavigation.kt", l = {EACTags.DEPRECATED}, m = "invokeSuspend", v = 2)
final class WishlistNavigationKt$wishlistComposable$3$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModelImpl f59167c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistNavigationKt$wishlistComposable$3$2$1(WishlistViewModelImpl wishlistViewModelImpl, Context context, Continuation continuation) {
        super(2, continuation);
        this.f59167c = wishlistViewModelImpl;
        this.d = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistNavigationKt$wishlistComposable$3$2$1(this.f59167c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistNavigationKt$wishlistComposable$3$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59166b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow sharedFlowA = FlowKt.a(this.f59167c.r);
            final Context context = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.main.navigation.WishlistNavigationKt$wishlistComposable$3$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    ShareUiModel shareUiModel = (ShareUiModel) obj2;
                    ShareUtilsKt.c(context, shareUiModel.f65735b, shareUiModel.f65734a, 24);
                    return Unit.f71739a;
                }
            };
            this.f59166b = 1;
            if (sharedFlowA.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
