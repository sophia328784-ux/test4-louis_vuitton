package com.vuitton.android.presentation.screen.cart;

import androidx.lifecycle.ViewModelKt;
import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.cart.NativeCartMonitoring;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.error.cart.GenericCartError;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$addItemToWishlist$1", f = "NativeCartViewModelImpl.kt", l = {641, 648, 670, 674, 675}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$addItemToWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f54885c;
    public NativeCartViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f54886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f54887f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f54888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ CartItemUiModel f54890j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f54891k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$addItemToWishlist$1(NativeCartViewModelImpl nativeCartViewModelImpl, CartItemUiModel cartItemUiModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f54889i = nativeCartViewModelImpl;
        this.f54890j = cartItemUiModel;
        this.f54891k = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$addItemToWishlist$1(this.f54889i, this.f54890j, this.f54891k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$addItemToWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x011d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0122  */
    /* JADX WARN: Code duplicated, block: B:31:0x0135  */
    /* JADX WARN: Code duplicated, block: B:37:0x0146  */
    /* JADX WARN: Code duplicated, block: B:40:0x0164  */
    /* JADX WARN: Code duplicated, block: B:44:0x0180  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        Object obj2;
        MonitorAction monitorAction;
        Object obj3;
        int i2;
        CartItemUiModel cartItemUiModel;
        boolean z;
        NativeCartViewModelImpl nativeCartViewModelImpl;
        boolean z2;
        MonitorAction monitorAction2;
        Throwable thA;
        int i3;
        GenericCartError genericCartError;
        NativeCartViewModelImpl nativeCartViewModelImpl2;
        MonitorAction monitorAction3;
        Throwable th;
        NativeCartViewModelImpl nativeCartViewModelImpl3 = this.f54889i;
        MutableStateFlow mutableStateFlow = nativeCartViewModelImpl3.M;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.f54888h;
        CartItemUiModel cartItemUiModel2 = this.f54890j;
        if (i4 == 0) {
            ResultKt.b(obj);
            String str = cartItemUiModel2.f55144a;
            String str2 = cartItemUiModel2.f55144a;
            nativeCartViewModelImpl3.W9(new CartTrackingUiModel.AddToWishlistEvent(str, null));
            monitorActionA = nativeCartViewModelImpl3.f54872b.a(nativeCartViewModelImpl3.A, NativeCartMonitoring.Action.AddToWishlist.f48883a);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            monitorActionA.c(str2, "sku");
            mutableStateFlow.setValue(Boolean.TRUE);
            nativeCartViewModelImpl3.T.setValue(null);
            AddProductToWishlistUseCase addProductToWishlistUseCase = nativeCartViewModelImpl3.t;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str2);
            this.f54884b = monitorActionA;
            this.f54888h = 1;
            objA = addProductToWishlistUseCase.a(str2, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i4 == 1) {
            monitorActionA = this.f54884b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i4 == 2) {
                int i5 = this.g;
                z = this.f54887f;
                cartItemUiModel = (CartItemUiModel) this.f54886e;
                nativeCartViewModelImpl = this.d;
                Object obj4 = this.f54885c;
                monitorAction = this.f54884b;
                ResultKt.b(obj);
                i2 = i5;
                obj3 = obj4;
                z2 = z;
                nativeCartViewModelImpl.f54874e.a("NativeCartViewModelImpl", new AppsFlyerEvent.AddToWishlist(MapsKt.h(new Pair(AFInAppEventParameterName.CONTENT_ID, cartItemUiModel.f55144a))));
                BuildersKt.c(ViewModelKt.a(nativeCartViewModelImpl), null, null, new NativeCartViewModelImpl$showAddToWishlistNotification$1(null, nativeCartViewModelImpl), 3);
                if (z2) {
                    nativeCartViewModelImpl.P4(false, cartItemUiModel);
                    MonitorAction monitorAction4 = monitorAction;
                    obj2 = obj3;
                    monitorActionA = monitorAction4;
                    thA = Result.a(obj2);
                    if (thA != null) {
                        monitorActionA.d(new NativeCartMonitoring.Error.AddToWishlistError(thA));
                        this.f54884b = monitorActionA;
                        this.f54885c = obj2;
                        this.d = nativeCartViewModelImpl3;
                        this.f54886e = thA;
                        this.g = 0;
                        this.f54888h = 4;
                        if (NativeCartViewModelImpl.Bc(nativeCartViewModelImpl3, cartItemUiModel2, true, this) != coroutineSingletons) {
                            i3 = 0;
                            genericCartError = new GenericCartError("Generic cart error");
                            this.f54884b = monitorActionA;
                            this.f54885c = obj2;
                            this.d = nativeCartViewModelImpl3;
                            this.f54886e = thA;
                            this.g = i3;
                            this.f54888h = 5;
                            if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                                nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                                monitorAction3 = monitorActionA;
                                th = thA;
                            }
                        }
                    }
                    mutableStateFlow.setValue(Boolean.FALSE);
                    monitorActionA.b();
                    return Unit.f71739a;
                }
                this.f54884b = monitorAction;
                this.f54885c = obj3;
                this.d = null;
                this.f54886e = null;
                this.g = i2;
                this.f54888h = 3;
                if (NativeCartViewModelImpl.yc(nativeCartViewModelImpl, this) != coroutineSingletons) {
                    monitorAction2 = monitorAction;
                    Result.Companion companion2 = Result.INSTANCE;
                    monitorAction = monitorAction2;
                    MonitorAction monitorAction5 = monitorAction;
                    obj2 = obj3;
                    monitorActionA = monitorAction5;
                    thA = Result.a(obj2);
                    if (thA != null) {
                        monitorActionA.d(new NativeCartMonitoring.Error.AddToWishlistError(thA));
                        this.f54884b = monitorActionA;
                        this.f54885c = obj2;
                        this.d = nativeCartViewModelImpl3;
                        this.f54886e = thA;
                        this.g = 0;
                        this.f54888h = 4;
                        if (NativeCartViewModelImpl.Bc(nativeCartViewModelImpl3, cartItemUiModel2, true, this) != coroutineSingletons) {
                            i3 = 0;
                            genericCartError = new GenericCartError("Generic cart error");
                            this.f54884b = monitorActionA;
                            this.f54885c = obj2;
                            this.d = nativeCartViewModelImpl3;
                            this.f54886e = thA;
                            this.g = i3;
                            this.f54888h = 5;
                            if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                                nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                                monitorAction3 = monitorActionA;
                                th = thA;
                            }
                        }
                    }
                    mutableStateFlow.setValue(Boolean.FALSE);
                    monitorActionA.b();
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            }
            if (i4 == 3) {
                obj3 = this.f54885c;
                monitorAction2 = this.f54884b;
                ResultKt.b(obj);
                Object obj5 = ((Result) obj).f71708b;
                Result.Companion companion3 = Result.INSTANCE;
                monitorAction = monitorAction2;
                MonitorAction monitorAction6 = monitorAction;
                obj2 = obj3;
                monitorActionA = monitorAction6;
                thA = Result.a(obj2);
                if (thA != null) {
                    monitorActionA.d(new NativeCartMonitoring.Error.AddToWishlistError(thA));
                    this.f54884b = monitorActionA;
                    this.f54885c = obj2;
                    this.d = nativeCartViewModelImpl3;
                    this.f54886e = thA;
                    this.g = 0;
                    this.f54888h = 4;
                    if (NativeCartViewModelImpl.Bc(nativeCartViewModelImpl3, cartItemUiModel2, true, this) != coroutineSingletons) {
                        i3 = 0;
                        genericCartError = new GenericCartError("Generic cart error");
                        this.f54884b = monitorActionA;
                        this.f54885c = obj2;
                        this.d = nativeCartViewModelImpl3;
                        this.f54886e = thA;
                        this.g = i3;
                        this.f54888h = 5;
                        if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                            nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                            monitorAction3 = monitorActionA;
                            th = thA;
                        }
                    }
                    return coroutineSingletons;
                }
                mutableStateFlow.setValue(Boolean.FALSE);
                monitorActionA.b();
                return Unit.f71739a;
            }
            if (i4 == 4) {
                i3 = this.g;
                Throwable th2 = (Throwable) this.f54886e;
                NativeCartViewModelImpl nativeCartViewModelImpl4 = this.d;
                obj2 = this.f54885c;
                MonitorAction monitorAction7 = this.f54884b;
                ResultKt.b(obj);
                thA = th2;
                nativeCartViewModelImpl3 = nativeCartViewModelImpl4;
                monitorActionA = monitorAction7;
                genericCartError = new GenericCartError("Generic cart error");
                this.f54884b = monitorActionA;
                this.f54885c = obj2;
                this.d = nativeCartViewModelImpl3;
                this.f54886e = thA;
                this.g = i3;
                this.f54888h = 5;
                if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                    nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                    monitorAction3 = monitorActionA;
                    th = thA;
                }
                return coroutineSingletons;
            }
            if (i4 != 5) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = (Throwable) this.f54886e;
            nativeCartViewModelImpl2 = this.d;
            monitorAction3 = this.f54884b;
            ResultKt.b(obj);
        }
        nativeCartViewModelImpl2.f54871a.c("NativeCartViewModelImpl", "Unable to add item to wishlist", th);
        monitorActionA = monitorAction3;
        mutableStateFlow.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
        Result.Companion companion4 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            obj2 = objA;
            thA = Result.a(obj2);
            if (thA != null) {
                monitorActionA.d(new NativeCartMonitoring.Error.AddToWishlistError(thA));
                this.f54884b = monitorActionA;
                this.f54885c = obj2;
                this.d = nativeCartViewModelImpl3;
                this.f54886e = thA;
                this.g = 0;
                this.f54888h = 4;
                if (NativeCartViewModelImpl.Bc(nativeCartViewModelImpl3, cartItemUiModel2, true, this) != coroutineSingletons) {
                    i3 = 0;
                    genericCartError = new GenericCartError("Generic cart error");
                    this.f54884b = monitorActionA;
                    this.f54885c = obj2;
                    this.d = nativeCartViewModelImpl3;
                    this.f54886e = thA;
                    this.g = i3;
                    this.f54888h = 5;
                    if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                        nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                        monitorAction3 = monitorActionA;
                        th = thA;
                        nativeCartViewModelImpl2.f54871a.c("NativeCartViewModelImpl", "Unable to add item to wishlist", th);
                        monitorActionA = monitorAction3;
                    }
                }
            }
            mutableStateFlow.setValue(Boolean.FALSE);
            monitorActionA.b();
            return Unit.f71739a;
        }
        nativeCartViewModelImpl3.W9(new CartTrackingUiModel.AddToWishlistSuccessEvent(cartItemUiModel2.f55144a, null));
        ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase = nativeCartViewModelImpl3.x;
        String str3 = cartItemUiModel2.f55144a;
        this.f54884b = monitorActionA;
        this.f54885c = objA;
        this.d = nativeCartViewModelImpl3;
        this.f54886e = cartItemUiModel2;
        boolean z3 = this.f54891k;
        this.f54887f = z3;
        this.g = 0;
        this.f54888h = 2;
        if (reportDYAddToWishlistEventUseCase.a(str3, this) != coroutineSingletons) {
            monitorAction = monitorActionA;
            obj3 = objA;
            i2 = 0;
            cartItemUiModel = cartItemUiModel2;
            z = z3;
            nativeCartViewModelImpl = nativeCartViewModelImpl3;
            z2 = z;
            nativeCartViewModelImpl.f54874e.a("NativeCartViewModelImpl", new AppsFlyerEvent.AddToWishlist(MapsKt.h(new Pair(AFInAppEventParameterName.CONTENT_ID, cartItemUiModel.f55144a))));
            BuildersKt.c(ViewModelKt.a(nativeCartViewModelImpl), null, null, new NativeCartViewModelImpl$showAddToWishlistNotification$1(null, nativeCartViewModelImpl), 3);
            if (z2) {
                nativeCartViewModelImpl.P4(false, cartItemUiModel);
                MonitorAction monitorAction8 = monitorAction;
                obj2 = obj3;
                monitorActionA = monitorAction8;
                thA = Result.a(obj2);
                if (thA != null) {
                    monitorActionA.d(new NativeCartMonitoring.Error.AddToWishlistError(thA));
                    this.f54884b = monitorActionA;
                    this.f54885c = obj2;
                    this.d = nativeCartViewModelImpl3;
                    this.f54886e = thA;
                    this.g = 0;
                    this.f54888h = 4;
                    if (NativeCartViewModelImpl.Bc(nativeCartViewModelImpl3, cartItemUiModel2, true, this) != coroutineSingletons) {
                        i3 = 0;
                        genericCartError = new GenericCartError("Generic cart error");
                        this.f54884b = monitorActionA;
                        this.f54885c = obj2;
                        this.d = nativeCartViewModelImpl3;
                        this.f54886e = thA;
                        this.g = i3;
                        this.f54888h = 5;
                        if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                            nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                            monitorAction3 = monitorActionA;
                            th = thA;
                            nativeCartViewModelImpl2.f54871a.c("NativeCartViewModelImpl", "Unable to add item to wishlist", th);
                            monitorActionA = monitorAction3;
                        }
                    }
                }
                mutableStateFlow.setValue(Boolean.FALSE);
                monitorActionA.b();
                return Unit.f71739a;
            }
            this.f54884b = monitorAction;
            this.f54885c = obj3;
            this.d = null;
            this.f54886e = null;
            this.g = i2;
            this.f54888h = 3;
            if (NativeCartViewModelImpl.yc(nativeCartViewModelImpl, this) != coroutineSingletons) {
                monitorAction2 = monitorAction;
                Result.Companion companion5 = Result.INSTANCE;
                monitorAction = monitorAction2;
                MonitorAction monitorAction9 = monitorAction;
                obj2 = obj3;
                monitorActionA = monitorAction9;
                thA = Result.a(obj2);
                if (thA != null) {
                    monitorActionA.d(new NativeCartMonitoring.Error.AddToWishlistError(thA));
                    this.f54884b = monitorActionA;
                    this.f54885c = obj2;
                    this.d = nativeCartViewModelImpl3;
                    this.f54886e = thA;
                    this.g = 0;
                    this.f54888h = 4;
                    if (NativeCartViewModelImpl.Bc(nativeCartViewModelImpl3, cartItemUiModel2, true, this) != coroutineSingletons) {
                        i3 = 0;
                        genericCartError = new GenericCartError("Generic cart error");
                        this.f54884b = monitorActionA;
                        this.f54885c = obj2;
                        this.d = nativeCartViewModelImpl3;
                        this.f54886e = thA;
                        this.g = i3;
                        this.f54888h = 5;
                        if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl3, genericCartError, this) != coroutineSingletons) {
                            nativeCartViewModelImpl2 = nativeCartViewModelImpl3;
                            monitorAction3 = monitorActionA;
                            th = thA;
                            nativeCartViewModelImpl2.f54871a.c("NativeCartViewModelImpl", "Unable to add item to wishlist", th);
                            monitorActionA = monitorAction3;
                        }
                    }
                }
                mutableStateFlow.setValue(Boolean.FALSE);
                monitorActionA.b();
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}
