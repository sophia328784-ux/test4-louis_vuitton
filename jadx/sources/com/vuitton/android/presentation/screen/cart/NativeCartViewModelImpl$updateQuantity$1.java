package com.vuitton.android.presentation.screen.cart;

import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.cart.NativeCartMonitoring;
import com.vuitton.android.domain.usecase.cart.UpdateCartItemQuantityUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToCartEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYRemoveFromCartEventUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.cart.models.CartItemMapperKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.error.cart.OutOfStockError;
import com.vuitton.foundation.model.domain.model.cart.Cart;
import com.vuitton.foundation.model.domain.model.cart.CartItem;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInformation;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$updateQuantity$1", f = "NativeCartViewModelImpl.kt", l = {462, 469, 473, 500, 516, 519}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$updateQuantity$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f54970c;
    public NativeCartViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f54971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f54972f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f54973h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f54974i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f54975j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ CartItemUiModel f54976k;
    public final /* synthetic */ NativeCartViewModelImpl l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$updateQuantity$1(int i2, CartItemUiModel cartItemUiModel, NativeCartViewModelImpl nativeCartViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f54975j = i2;
        this.f54976k = cartItemUiModel;
        this.l = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$updateQuantity$1(this.f54975j, this.f54976k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$updateQuantity$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0304  */
    /* JADX WARN: Code duplicated, block: B:102:0x0308  */
    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:25:0x0116  */
    /* JADX WARN: Code duplicated, block: B:28:0x0133  */
    /* JADX WARN: Code duplicated, block: B:30:0x0139  */
    /* JADX WARN: Code duplicated, block: B:32:0x0141  */
    /* JADX WARN: Code duplicated, block: B:33:0x0147  */
    /* JADX WARN: Code duplicated, block: B:35:0x014d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0154  */
    /* JADX WARN: Code duplicated, block: B:42:0x0176 A[LOOP:0: B:40:0x0170->B:42:0x0176, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:46:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:48:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:55:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:58:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:60:0x01da  */
    /* JADX WARN: Code duplicated, block: B:63:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:65:0x01e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:67:0x022e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0240  */
    /* JADX WARN: Code duplicated, block: B:73:0x0248  */
    /* JADX WARN: Code duplicated, block: B:77:0x027b  */
    /* JADX WARN: Code duplicated, block: B:80:0x028a  */
    /* JADX WARN: Code duplicated, block: B:83:0x0292  */
    /* JADX WARN: Code duplicated, block: B:85:0x0299  */
    /* JADX WARN: Code duplicated, block: B:88:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:91:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:94:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:96:0x02e8  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        MonitorAction monitorAction;
        CoroutineSingletons coroutineSingletons;
        CartItemUiModel cartItemUiModel;
        Cart cart;
        MonitorAction monitorAction2;
        int i2;
        Cart cart2;
        int i3;
        CartItemUiModel cartItemUiModel2;
        Object obj2;
        NativeCartViewModelImpl nativeCartViewModelImpl;
        int i4;
        String str;
        CartPriceInformationUiModel cartPriceInformationUiModel;
        float f2;
        NativeCartViewModelImpl nativeCartViewModelImpl2;
        MonitorAction monitorAction3;
        CartItemUiModel cartItemUiModel3;
        Object obj3;
        int i5;
        float f3;
        String str2;
        String str3;
        ReportDYRemoveFromCartEventUseCase reportDYRemoveFromCartEventUseCase;
        String str4;
        List list;
        int i6;
        int i7;
        MonitorAction monitorAction4;
        Object obj4;
        NativeCartViewModelImpl nativeCartViewModelImpl3;
        CartItemUiModel cartItemUiModel4;
        CartPriceUiModel cartPriceUiModel;
        CartPriceUiModel cartPriceUiModel2;
        CartPriceUiModel cartPriceUiModel3;
        CartPriceUiModel cartPriceUiModel4;
        ReportDYAddToCartEventUseCase reportDYAddToCartEventUseCase;
        String str5;
        String str6;
        ArrayList arrayList;
        Iterator it;
        Object obj5;
        NativeCartViewModelImpl nativeCartViewModelImpl4;
        MonitorAction monitorAction5;
        CartItemUiModel cartItemUiModel5;
        Cart cart3;
        CartPriceUiModel cartPriceUiModel5;
        CartPriceUiModel cartPriceUiModel6;
        Throwable thA;
        NativeCartViewModelImpl nativeCartViewModelImpl5;
        CartItemUiModel cartItemUiModel6;
        MonitorAction monitorAction6;
        Throwable th;
        CartItemUiModel cartItemUiModel7;
        int i8;
        NativeCartViewModelImpl nativeCartViewModelImpl6;
        CartPriceInformation cartPriceInformation;
        int i9;
        CartPrice cartPrice;
        MonitorAction monitorAction7;
        MutableStateFlow mutableStateFlow;
        Pair pair;
        String str7;
        NativeCartViewModelImpl nativeCartViewModelImpl7;
        NativeCartViewModelImpl nativeCartViewModelImpl8 = this.l;
        MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl8.M;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i10 = this.f54974i;
        int i11 = this.f54975j;
        CartItemUiModel cartItemUiModel8 = this.f54976k;
        switch (i10) {
            case 0:
                ResultKt.b(obj);
                int i12 = cartItemUiModel8.d;
                String str8 = cartItemUiModel8.f55144a;
                String str9 = i11 > i12 ? "increase" : "decrease";
                DynatraceMonitorAction dynatraceMonitorActionA = nativeCartViewModelImpl8.f54872b.a(nativeCartViewModelImpl8.A, NativeCartMonitoring.Action.ModifyQuantityCart.f48886a);
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                dynatraceMonitorActionA.c(str8, "sku");
                dynatraceMonitorActionA.c(str9, "action");
                mutableStateFlow2.setValue(Boolean.TRUE);
                nativeCartViewModelImpl8.W9(new CartTrackingUiModel.ChangeQuantityIntention(cartItemUiModel8));
                UpdateCartItemQuantityUseCase updateCartItemQuantityUseCase = nativeCartViewModelImpl8.v;
                String str10 = cartItemUiModel8.f55151j;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str8);
                UpdateCartItemQuantityUseCase.Param param = new UpdateCartItemQuantityUseCase.Param(str10, str8, i11, null);
                this.f54969b = dynatraceMonitorActionA;
                this.f54974i = 1;
                objA = updateCartItemQuantityUseCase.a(param, this);
                if (objA != coroutineSingletons2) {
                    monitorAction = dynatraceMonitorActionA;
                    Result.Companion companion2 = Result.INSTANCE;
                    if (objA instanceof Result.Failure) {
                        nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                        mutableStateFlow2 = mutableStateFlow2;
                        coroutineSingletons = coroutineSingletons2;
                        cartItemUiModel = cartItemUiModel8;
                    } else {
                        cart = (Cart) objA;
                        this.f54969b = monitorAction;
                        this.f54970c = objA;
                        this.d = nativeCartViewModelImpl8;
                        this.f54971e = cartItemUiModel8;
                        this.f54972f = cart;
                        this.g = i11;
                        this.f54973h = 0;
                        this.f54974i = 2;
                        if (nativeCartViewModelImpl8.Dc(cart, this) != coroutineSingletons2) {
                            monitorAction2 = monitorAction;
                            i2 = i11;
                            cart2 = cart;
                            i3 = 0;
                            cartItemUiModel2 = cartItemUiModel8;
                            obj2 = objA;
                            nativeCartViewModelImpl = nativeCartViewModelImpl8;
                            nativeCartViewModelImpl.W9(new CartTrackingUiModel.ChangeQuantitySucceeded(cartItemUiModel2, String.valueOf(i2)));
                            i4 = cartItemUiModel2.d;
                            str = cartItemUiModel2.f55144a;
                            cartPriceInformationUiModel = cartItemUiModel2.f55145b;
                            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            if (i2 > i4) {
                                reportDYAddToCartEventUseCase = nativeCartViewModelImpl.w;
                                if (cartPriceInformationUiModel != null) {
                                    cartPriceUiModel6 = cartPriceInformationUiModel.d;
                                    cartItemUiModel = cartItemUiModel8;
                                    str5 = str;
                                    if (cartPriceUiModel6 != null) {
                                        f2 = (float) cartPriceUiModel6.f55158a;
                                    }
                                } else {
                                    cartItemUiModel = cartItemUiModel8;
                                    str5 = str;
                                }
                                if (cartPriceInformationUiModel != null || (cartPriceUiModel5 = cartPriceInformationUiModel.d) == null) {
                                    str6 = null;
                                } else {
                                    str6 = cartPriceUiModel5.f55160c;
                                }
                                SkuIdUiModel.f61763c.getClass();
                                SkuIdUiModel.Companion.b(str5);
                                List list2 = cart2.f66897c;
                                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                                it = list2.iterator();
                                while (it.hasNext()) {
                                    arrayList.add((CartItem) it.next());
                                }
                                this.f54969b = monitorAction2;
                                this.f54970c = obj2;
                                this.d = nativeCartViewModelImpl;
                                this.f54971e = cartItemUiModel2;
                                this.f54972f = cart2;
                                this.g = i2;
                                this.f54973h = i3;
                                this.f54974i = 3;
                                obj5 = obj2;
                                nativeCartViewModelImpl4 = nativeCartViewModelImpl;
                                monitorAction5 = monitorAction2;
                                cartItemUiModel5 = cartItemUiModel2;
                                if (reportDYAddToCartEventUseCase.a(f2, str5, 1, arrayList, str6, this) != coroutineSingletons2) {
                                    monitorAction4 = monitorAction5;
                                    obj4 = obj5;
                                    nativeCartViewModelImpl3 = nativeCartViewModelImpl4;
                                    cartItemUiModel4 = cartItemUiModel5;
                                    i7 = i2;
                                    cart3 = cart2;
                                    cart2 = cart3;
                                    nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                                    coroutineSingletons = coroutineSingletons2;
                                }
                            } else {
                                mutableStateFlow2 = mutableStateFlow2;
                                cartItemUiModel = cartItemUiModel8;
                                nativeCartViewModelImpl2 = nativeCartViewModelImpl;
                                monitorAction3 = monitorAction2;
                                cartItemUiModel3 = cartItemUiModel2;
                                obj3 = obj2;
                                i5 = i4 - i2;
                                if (cartPriceInformationUiModel != null && (cartPriceUiModel4 = cartPriceInformationUiModel.d) != null) {
                                    f2 = (float) cartPriceUiModel4.f55158a;
                                }
                                f3 = f2 * i5;
                                if (cartPriceInformationUiModel != null || (cartPriceUiModel3 = cartPriceInformationUiModel.d) == null) {
                                    str2 = null;
                                } else {
                                    str2 = cartPriceUiModel3.f55159b;
                                }
                                if (cartPriceInformationUiModel != null || (cartPriceUiModel2 = cartPriceInformationUiModel.d) == null) {
                                    str3 = null;
                                } else {
                                    str3 = cartPriceUiModel2.f55160c;
                                }
                                if (str2 == null && str3 != null) {
                                    nativeCartViewModelImpl2.f54874e.a("NativeCartViewModelImpl", new AppsFlyerEvent.RemoveFromCart(MapsKt.i(new Pair(AFInAppEventParameterName.CONTENT_ID, str), new Pair(AFInAppEventParameterName.CONTENT, cartItemUiModel3.f55149h), new Pair(AFInAppEventParameterName.PRICE, str2), new Pair(AFInAppEventParameterName.QUANTITY, "1"), new Pair(AFInAppEventParameterName.CURRENCY, str3))));
                                }
                                reportDYRemoveFromCartEventUseCase = nativeCartViewModelImpl2.y;
                                if (cartPriceInformationUiModel != null || (cartPriceUiModel = cartPriceInformationUiModel.d) == null) {
                                    str4 = null;
                                } else {
                                    str4 = cartPriceUiModel.f55160c;
                                }
                                SkuIdUiModel.f61763c.getClass();
                                SkuIdUiModel.Companion.b(r2);
                                list = cart2.f66897c;
                                this.f54969b = monitorAction3;
                                this.f54970c = obj3;
                                this.d = nativeCartViewModelImpl2;
                                this.f54971e = cartItemUiModel3;
                                this.f54972f = cart2;
                                i6 = i2;
                                this.g = i6;
                                this.f54973h = i3;
                                this.f54974i = 4;
                                coroutineSingletons = coroutineSingletons2;
                                if (reportDYRemoveFromCartEventUseCase.a(f3, str, i5, list, str4, this) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                i7 = i6;
                                monitorAction4 = monitorAction3;
                                obj4 = obj3;
                                nativeCartViewModelImpl3 = nativeCartViewModelImpl2;
                                cartItemUiModel4 = cartItemUiModel3;
                            }
                            ContactUsDelegate contactUsDelegate = nativeCartViewModelImpl3.f54875f;
                            ChatProductModel chatProductModelA = CartItemMapperKt.a(cartItemUiModel4);
                            cartPriceInformation = cart2.d;
                            if (cartPriceInformation != null || (cartPrice = cartPriceInformation.f66920a) == null) {
                                i9 = 0;
                            } else {
                                i9 = (int) cartPrice.f66914a;
                            }
                            contactUsDelegate.B(chatProductModelA, i7, i9);
                            objA = obj4;
                            monitorAction = monitorAction4;
                        }
                    }
                    thA = Result.a(objA);
                    if (thA != null) {
                        monitorAction.d(new NativeCartMonitoring.Error.ModifyQuantityCartError(thA));
                        this.f54969b = monitorAction;
                        this.f54970c = objA;
                        nativeCartViewModelImpl5 = nativeCartViewModelImpl8;
                        this.d = nativeCartViewModelImpl5;
                        cartItemUiModel6 = cartItemUiModel;
                        this.f54971e = cartItemUiModel6;
                        this.f54972f = thA;
                        this.g = 0;
                        this.f54974i = 5;
                        if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl5, thA, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        monitorAction6 = monitorAction;
                        th = thA;
                        cartItemUiModel7 = cartItemUiModel6;
                        i8 = 0;
                        nativeCartViewModelImpl6 = nativeCartViewModelImpl5;
                        if (th instanceof OutOfStockError) {
                            nativeCartViewModelImpl6.W9(new CartTrackingUiModel.ChangeQuantityFailed(cartItemUiModel7));
                            mutableStateFlow = nativeCartViewModelImpl6.Q;
                            String str11 = cartItemUiModel7.f55151j;
                            str7 = ((OutOfStockError) th).f66217c;
                            if (str7 == null) {
                                str7 = "";
                            }
                            pair = new Pair(str11, str7);
                            this.f54969b = monitorAction6;
                            this.f54970c = objA;
                            this.d = nativeCartViewModelImpl6;
                            this.f54971e = th;
                            this.f54972f = null;
                            this.g = i8;
                            this.f54974i = 6;
                            if (mutableStateFlow.emit(pair, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            monitorAction7 = monitorAction6;
                            nativeCartViewModelImpl7 = nativeCartViewModelImpl6;
                            nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                        } else {
                            monitorAction7 = monitorAction6;
                        }
                        nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                        monitorAction = monitorAction7;
                    }
                    mutableStateFlow2.setValue(Boolean.FALSE);
                    monitorAction.b();
                    return Unit.f71739a;
                }
                return coroutineSingletons2;
            case 1:
                monitorAction = this.f54969b;
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
                Result.Companion companion3 = Result.INSTANCE;
                if (objA instanceof Result.Failure) {
                    cart = (Cart) objA;
                    this.f54969b = monitorAction;
                    this.f54970c = objA;
                    this.d = nativeCartViewModelImpl8;
                    this.f54971e = cartItemUiModel8;
                    this.f54972f = cart;
                    this.g = i11;
                    this.f54973h = 0;
                    this.f54974i = 2;
                    if (nativeCartViewModelImpl8.Dc(cart, this) != coroutineSingletons2) {
                        monitorAction2 = monitorAction;
                        i2 = i11;
                        cart2 = cart;
                        i3 = 0;
                        cartItemUiModel2 = cartItemUiModel8;
                        obj2 = objA;
                        nativeCartViewModelImpl = nativeCartViewModelImpl8;
                        nativeCartViewModelImpl.W9(new CartTrackingUiModel.ChangeQuantitySucceeded(cartItemUiModel2, String.valueOf(i2)));
                        i4 = cartItemUiModel2.d;
                        str = cartItemUiModel2.f55144a;
                        cartPriceInformationUiModel = cartItemUiModel2.f55145b;
                        f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        if (i2 > i4) {
                            reportDYAddToCartEventUseCase = nativeCartViewModelImpl.w;
                            if (cartPriceInformationUiModel != null) {
                                cartPriceUiModel6 = cartPriceInformationUiModel.d;
                                cartItemUiModel = cartItemUiModel8;
                                str5 = str;
                                if (cartPriceUiModel6 != null) {
                                    f2 = (float) cartPriceUiModel6.f55158a;
                                }
                            } else {
                                cartItemUiModel = cartItemUiModel8;
                                str5 = str;
                            }
                            if (cartPriceInformationUiModel != null) {
                                str6 = null;
                            } else {
                                str6 = null;
                            }
                            SkuIdUiModel.f61763c.getClass();
                            SkuIdUiModel.Companion.b(str5);
                            List list3 = cart2.f66897c;
                            arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                            it = list3.iterator();
                            while (it.hasNext()) {
                                arrayList.add((CartItem) it.next());
                            }
                            this.f54969b = monitorAction2;
                            this.f54970c = obj2;
                            this.d = nativeCartViewModelImpl;
                            this.f54971e = cartItemUiModel2;
                            this.f54972f = cart2;
                            this.g = i2;
                            this.f54973h = i3;
                            this.f54974i = 3;
                            obj5 = obj2;
                            nativeCartViewModelImpl4 = nativeCartViewModelImpl;
                            monitorAction5 = monitorAction2;
                            cartItemUiModel5 = cartItemUiModel2;
                            if (reportDYAddToCartEventUseCase.a(f2, str5, 1, arrayList, str6, this) != coroutineSingletons2) {
                                monitorAction4 = monitorAction5;
                                obj4 = obj5;
                                nativeCartViewModelImpl3 = nativeCartViewModelImpl4;
                                cartItemUiModel4 = cartItemUiModel5;
                                i7 = i2;
                                cart3 = cart2;
                                cart2 = cart3;
                                nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                                coroutineSingletons = coroutineSingletons2;
                            }
                        } else {
                            mutableStateFlow2 = mutableStateFlow2;
                            cartItemUiModel = cartItemUiModel8;
                            nativeCartViewModelImpl2 = nativeCartViewModelImpl;
                            monitorAction3 = monitorAction2;
                            cartItemUiModel3 = cartItemUiModel2;
                            obj3 = obj2;
                            i5 = i4 - i2;
                            if (cartPriceInformationUiModel != null) {
                                f2 = (float) cartPriceUiModel4.f55158a;
                            }
                            f3 = f2 * i5;
                            if (cartPriceInformationUiModel != null) {
                                str2 = null;
                            } else {
                                str2 = null;
                            }
                            if (cartPriceInformationUiModel != null) {
                                str3 = null;
                            } else {
                                str3 = null;
                            }
                            if (str2 == null) {
                            }
                            reportDYRemoveFromCartEventUseCase = nativeCartViewModelImpl2.y;
                            if (cartPriceInformationUiModel != null) {
                                str4 = null;
                            } else {
                                str4 = null;
                            }
                            SkuIdUiModel.f61763c.getClass();
                            SkuIdUiModel.Companion.b(r2);
                            list = cart2.f66897c;
                            this.f54969b = monitorAction3;
                            this.f54970c = obj3;
                            this.d = nativeCartViewModelImpl2;
                            this.f54971e = cartItemUiModel3;
                            this.f54972f = cart2;
                            i6 = i2;
                            this.g = i6;
                            this.f54973h = i3;
                            this.f54974i = 4;
                            coroutineSingletons = coroutineSingletons2;
                            if (reportDYRemoveFromCartEventUseCase.a(f3, str, i5, list, str4, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            i7 = i6;
                            monitorAction4 = monitorAction3;
                            obj4 = obj3;
                            nativeCartViewModelImpl3 = nativeCartViewModelImpl2;
                            cartItemUiModel4 = cartItemUiModel3;
                        }
                        ContactUsDelegate contactUsDelegate2 = nativeCartViewModelImpl3.f54875f;
                        ChatProductModel chatProductModelA2 = CartItemMapperKt.a(cartItemUiModel4);
                        cartPriceInformation = cart2.d;
                        if (cartPriceInformation != null) {
                            i9 = 0;
                        } else {
                            i9 = 0;
                        }
                        contactUsDelegate2.B(chatProductModelA2, i7, i9);
                        objA = obj4;
                        monitorAction = monitorAction4;
                    }
                    return coroutineSingletons2;
                }
                nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                mutableStateFlow2 = mutableStateFlow2;
                coroutineSingletons = coroutineSingletons2;
                cartItemUiModel = cartItemUiModel8;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new NativeCartMonitoring.Error.ModifyQuantityCartError(thA));
                    this.f54969b = monitorAction;
                    this.f54970c = objA;
                    nativeCartViewModelImpl5 = nativeCartViewModelImpl8;
                    this.d = nativeCartViewModelImpl5;
                    cartItemUiModel6 = cartItemUiModel;
                    this.f54971e = cartItemUiModel6;
                    this.f54972f = thA;
                    this.g = 0;
                    this.f54974i = 5;
                    if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl5, thA, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    monitorAction6 = monitorAction;
                    th = thA;
                    cartItemUiModel7 = cartItemUiModel6;
                    i8 = 0;
                    nativeCartViewModelImpl6 = nativeCartViewModelImpl5;
                    if (th instanceof OutOfStockError) {
                        nativeCartViewModelImpl6.W9(new CartTrackingUiModel.ChangeQuantityFailed(cartItemUiModel7));
                        mutableStateFlow = nativeCartViewModelImpl6.Q;
                        String str12 = cartItemUiModel7.f55151j;
                        str7 = ((OutOfStockError) th).f66217c;
                        if (str7 == null) {
                            str7 = "";
                        }
                        pair = new Pair(str12, str7);
                        this.f54969b = monitorAction6;
                        this.f54970c = objA;
                        this.d = nativeCartViewModelImpl6;
                        this.f54971e = th;
                        this.f54972f = null;
                        this.g = i8;
                        this.f54974i = 6;
                        if (mutableStateFlow.emit(pair, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        monitorAction7 = monitorAction6;
                        nativeCartViewModelImpl7 = nativeCartViewModelImpl6;
                        nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                    } else {
                        monitorAction7 = monitorAction6;
                    }
                    nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                    monitorAction = monitorAction7;
                }
                mutableStateFlow2.setValue(Boolean.FALSE);
                monitorAction.b();
                return Unit.f71739a;
            case 2:
                i3 = this.f54973h;
                int i13 = this.g;
                Cart cart4 = (Cart) this.f54972f;
                CartItemUiModel cartItemUiModel9 = (CartItemUiModel) this.f54971e;
                NativeCartViewModelImpl nativeCartViewModelImpl9 = this.d;
                Object obj6 = this.f54970c;
                MonitorAction monitorAction8 = this.f54969b;
                ResultKt.b(obj);
                cart2 = cart4;
                nativeCartViewModelImpl = nativeCartViewModelImpl9;
                monitorAction2 = monitorAction8;
                i2 = i13;
                cartItemUiModel2 = cartItemUiModel9;
                obj2 = obj6;
                nativeCartViewModelImpl.W9(new CartTrackingUiModel.ChangeQuantitySucceeded(cartItemUiModel2, String.valueOf(i2)));
                i4 = cartItemUiModel2.d;
                str = cartItemUiModel2.f55144a;
                cartPriceInformationUiModel = cartItemUiModel2.f55145b;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (i2 > i4) {
                    reportDYAddToCartEventUseCase = nativeCartViewModelImpl.w;
                    if (cartPriceInformationUiModel != null) {
                        cartPriceUiModel6 = cartPriceInformationUiModel.d;
                        cartItemUiModel = cartItemUiModel8;
                        str5 = str;
                        if (cartPriceUiModel6 != null) {
                            f2 = (float) cartPriceUiModel6.f55158a;
                        }
                    } else {
                        cartItemUiModel = cartItemUiModel8;
                        str5 = str;
                    }
                    if (cartPriceInformationUiModel != null) {
                        str6 = null;
                    } else {
                        str6 = null;
                    }
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str5);
                    List list4 = cart2.f66897c;
                    arrayList = new ArrayList(CollectionsKt.t(list4, 10));
                    it = list4.iterator();
                    while (it.hasNext()) {
                        arrayList.add((CartItem) it.next());
                    }
                    this.f54969b = monitorAction2;
                    this.f54970c = obj2;
                    this.d = nativeCartViewModelImpl;
                    this.f54971e = cartItemUiModel2;
                    this.f54972f = cart2;
                    this.g = i2;
                    this.f54973h = i3;
                    this.f54974i = 3;
                    obj5 = obj2;
                    nativeCartViewModelImpl4 = nativeCartViewModelImpl;
                    monitorAction5 = monitorAction2;
                    cartItemUiModel5 = cartItemUiModel2;
                    if (reportDYAddToCartEventUseCase.a(f2, str5, 1, arrayList, str6, this) != coroutineSingletons2) {
                        monitorAction4 = monitorAction5;
                        obj4 = obj5;
                        nativeCartViewModelImpl3 = nativeCartViewModelImpl4;
                        cartItemUiModel4 = cartItemUiModel5;
                        i7 = i2;
                        cart3 = cart2;
                        cart2 = cart3;
                        nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                        coroutineSingletons = coroutineSingletons2;
                    }
                    return coroutineSingletons2;
                }
                mutableStateFlow2 = mutableStateFlow2;
                cartItemUiModel = cartItemUiModel8;
                nativeCartViewModelImpl2 = nativeCartViewModelImpl;
                monitorAction3 = monitorAction2;
                cartItemUiModel3 = cartItemUiModel2;
                obj3 = obj2;
                i5 = i4 - i2;
                if (cartPriceInformationUiModel != null) {
                    f2 = (float) cartPriceUiModel4.f55158a;
                }
                f3 = f2 * i5;
                if (cartPriceInformationUiModel != null) {
                    str2 = null;
                } else {
                    str2 = null;
                }
                if (cartPriceInformationUiModel != null) {
                    str3 = null;
                } else {
                    str3 = null;
                }
                if (str2 == null) {
                }
                reportDYRemoveFromCartEventUseCase = nativeCartViewModelImpl2.y;
                if (cartPriceInformationUiModel != null) {
                    str4 = null;
                } else {
                    str4 = null;
                }
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(r2);
                list = cart2.f66897c;
                this.f54969b = monitorAction3;
                this.f54970c = obj3;
                this.d = nativeCartViewModelImpl2;
                this.f54971e = cartItemUiModel3;
                this.f54972f = cart2;
                i6 = i2;
                this.g = i6;
                this.f54973h = i3;
                this.f54974i = 4;
                coroutineSingletons = coroutineSingletons2;
                if (reportDYRemoveFromCartEventUseCase.a(f3, str, i5, list, str4, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                i7 = i6;
                monitorAction4 = monitorAction3;
                obj4 = obj3;
                nativeCartViewModelImpl3 = nativeCartViewModelImpl2;
                cartItemUiModel4 = cartItemUiModel3;
                ContactUsDelegate contactUsDelegate3 = nativeCartViewModelImpl3.f54875f;
                ChatProductModel chatProductModelA3 = CartItemMapperKt.a(cartItemUiModel4);
                cartPriceInformation = cart2.d;
                if (cartPriceInformation != null) {
                    i9 = 0;
                } else {
                    i9 = 0;
                }
                contactUsDelegate3.B(chatProductModelA3, i7, i9);
                objA = obj4;
                monitorAction = monitorAction4;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new NativeCartMonitoring.Error.ModifyQuantityCartError(thA));
                    this.f54969b = monitorAction;
                    this.f54970c = objA;
                    nativeCartViewModelImpl5 = nativeCartViewModelImpl8;
                    this.d = nativeCartViewModelImpl5;
                    cartItemUiModel6 = cartItemUiModel;
                    this.f54971e = cartItemUiModel6;
                    this.f54972f = thA;
                    this.g = 0;
                    this.f54974i = 5;
                    if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl5, thA, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    monitorAction6 = monitorAction;
                    th = thA;
                    cartItemUiModel7 = cartItemUiModel6;
                    i8 = 0;
                    nativeCartViewModelImpl6 = nativeCartViewModelImpl5;
                    if (th instanceof OutOfStockError) {
                        nativeCartViewModelImpl6.W9(new CartTrackingUiModel.ChangeQuantityFailed(cartItemUiModel7));
                        mutableStateFlow = nativeCartViewModelImpl6.Q;
                        String str13 = cartItemUiModel7.f55151j;
                        str7 = ((OutOfStockError) th).f66217c;
                        if (str7 == null) {
                            str7 = "";
                        }
                        pair = new Pair(str13, str7);
                        this.f54969b = monitorAction6;
                        this.f54970c = objA;
                        this.d = nativeCartViewModelImpl6;
                        this.f54971e = th;
                        this.f54972f = null;
                        this.g = i8;
                        this.f54974i = 6;
                        if (mutableStateFlow.emit(pair, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        monitorAction7 = monitorAction6;
                        nativeCartViewModelImpl7 = nativeCartViewModelImpl6;
                        nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                    } else {
                        monitorAction7 = monitorAction6;
                    }
                    nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                    monitorAction = monitorAction7;
                }
                mutableStateFlow2.setValue(Boolean.FALSE);
                monitorAction.b();
                return Unit.f71739a;
            case 3:
                i7 = this.g;
                cart3 = (Cart) this.f54972f;
                cartItemUiModel4 = (CartItemUiModel) this.f54971e;
                nativeCartViewModelImpl3 = this.d;
                obj4 = this.f54970c;
                monitorAction4 = this.f54969b;
                ResultKt.b(obj);
                cartItemUiModel = cartItemUiModel8;
                cart2 = cart3;
                nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                coroutineSingletons = coroutineSingletons2;
                ContactUsDelegate contactUsDelegate4 = nativeCartViewModelImpl3.f54875f;
                ChatProductModel chatProductModelA4 = CartItemMapperKt.a(cartItemUiModel4);
                cartPriceInformation = cart2.d;
                if (cartPriceInformation != null) {
                    i9 = 0;
                } else {
                    i9 = 0;
                }
                contactUsDelegate4.B(chatProductModelA4, i7, i9);
                objA = obj4;
                monitorAction = monitorAction4;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new NativeCartMonitoring.Error.ModifyQuantityCartError(thA));
                    this.f54969b = monitorAction;
                    this.f54970c = objA;
                    nativeCartViewModelImpl5 = nativeCartViewModelImpl8;
                    this.d = nativeCartViewModelImpl5;
                    cartItemUiModel6 = cartItemUiModel;
                    this.f54971e = cartItemUiModel6;
                    this.f54972f = thA;
                    this.g = 0;
                    this.f54974i = 5;
                    if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl5, thA, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    monitorAction6 = monitorAction;
                    th = thA;
                    cartItemUiModel7 = cartItemUiModel6;
                    i8 = 0;
                    nativeCartViewModelImpl6 = nativeCartViewModelImpl5;
                    if (th instanceof OutOfStockError) {
                        nativeCartViewModelImpl6.W9(new CartTrackingUiModel.ChangeQuantityFailed(cartItemUiModel7));
                        mutableStateFlow = nativeCartViewModelImpl6.Q;
                        String str14 = cartItemUiModel7.f55151j;
                        str7 = ((OutOfStockError) th).f66217c;
                        if (str7 == null) {
                            str7 = "";
                        }
                        pair = new Pair(str14, str7);
                        this.f54969b = monitorAction6;
                        this.f54970c = objA;
                        this.d = nativeCartViewModelImpl6;
                        this.f54971e = th;
                        this.f54972f = null;
                        this.g = i8;
                        this.f54974i = 6;
                        if (mutableStateFlow.emit(pair, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        monitorAction7 = monitorAction6;
                        nativeCartViewModelImpl7 = nativeCartViewModelImpl6;
                        nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                    } else {
                        monitorAction7 = monitorAction6;
                    }
                    nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                    monitorAction = monitorAction7;
                }
                mutableStateFlow2.setValue(Boolean.FALSE);
                monitorAction.b();
                return Unit.f71739a;
            case 4:
                i7 = this.g;
                Cart cart5 = (Cart) this.f54972f;
                cartItemUiModel4 = (CartItemUiModel) this.f54971e;
                nativeCartViewModelImpl3 = this.d;
                obj4 = this.f54970c;
                monitorAction4 = this.f54969b;
                ResultKt.b(obj);
                cart2 = cart5;
                nativeCartViewModelImpl8 = nativeCartViewModelImpl8;
                mutableStateFlow2 = mutableStateFlow2;
                coroutineSingletons = coroutineSingletons2;
                cartItemUiModel = cartItemUiModel8;
                ContactUsDelegate contactUsDelegate5 = nativeCartViewModelImpl3.f54875f;
                ChatProductModel chatProductModelA5 = CartItemMapperKt.a(cartItemUiModel4);
                cartPriceInformation = cart2.d;
                if (cartPriceInformation != null) {
                    i9 = 0;
                } else {
                    i9 = 0;
                }
                contactUsDelegate5.B(chatProductModelA5, i7, i9);
                objA = obj4;
                monitorAction = monitorAction4;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new NativeCartMonitoring.Error.ModifyQuantityCartError(thA));
                    this.f54969b = monitorAction;
                    this.f54970c = objA;
                    nativeCartViewModelImpl5 = nativeCartViewModelImpl8;
                    this.d = nativeCartViewModelImpl5;
                    cartItemUiModel6 = cartItemUiModel;
                    this.f54971e = cartItemUiModel6;
                    this.f54972f = thA;
                    this.g = 0;
                    this.f54974i = 5;
                    if (NativeCartViewModelImpl.zc(nativeCartViewModelImpl5, thA, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    monitorAction6 = monitorAction;
                    th = thA;
                    cartItemUiModel7 = cartItemUiModel6;
                    i8 = 0;
                    nativeCartViewModelImpl6 = nativeCartViewModelImpl5;
                    if (th instanceof OutOfStockError) {
                        nativeCartViewModelImpl6.W9(new CartTrackingUiModel.ChangeQuantityFailed(cartItemUiModel7));
                        mutableStateFlow = nativeCartViewModelImpl6.Q;
                        String str15 = cartItemUiModel7.f55151j;
                        str7 = ((OutOfStockError) th).f66217c;
                        if (str7 == null) {
                            str7 = "";
                        }
                        pair = new Pair(str15, str7);
                        this.f54969b = monitorAction6;
                        this.f54970c = objA;
                        this.d = nativeCartViewModelImpl6;
                        this.f54971e = th;
                        this.f54972f = null;
                        this.g = i8;
                        this.f54974i = 6;
                        if (mutableStateFlow.emit(pair, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        monitorAction7 = monitorAction6;
                        nativeCartViewModelImpl7 = nativeCartViewModelImpl6;
                        nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                    } else {
                        monitorAction7 = monitorAction6;
                    }
                    nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                    monitorAction = monitorAction7;
                }
                mutableStateFlow2.setValue(Boolean.FALSE);
                monitorAction.b();
                return Unit.f71739a;
            case 5:
                i8 = this.g;
                th = (Throwable) this.f54972f;
                cartItemUiModel7 = (CartItemUiModel) this.f54971e;
                nativeCartViewModelImpl6 = this.d;
                Object obj7 = this.f54970c;
                MonitorAction monitorAction9 = this.f54969b;
                ResultKt.b(obj);
                monitorAction6 = monitorAction9;
                mutableStateFlow2 = mutableStateFlow2;
                objA = obj7;
                coroutineSingletons = coroutineSingletons2;
                if (th instanceof OutOfStockError) {
                    nativeCartViewModelImpl6.W9(new CartTrackingUiModel.ChangeQuantityFailed(cartItemUiModel7));
                    mutableStateFlow = nativeCartViewModelImpl6.Q;
                    String str16 = cartItemUiModel7.f55151j;
                    str7 = ((OutOfStockError) th).f66217c;
                    if (str7 == null) {
                        str7 = "";
                    }
                    pair = new Pair(str16, str7);
                    this.f54969b = monitorAction6;
                    this.f54970c = objA;
                    this.d = nativeCartViewModelImpl6;
                    this.f54971e = th;
                    this.f54972f = null;
                    this.g = i8;
                    this.f54974i = 6;
                    if (mutableStateFlow.emit(pair, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    monitorAction7 = monitorAction6;
                    nativeCartViewModelImpl7 = nativeCartViewModelImpl6;
                    nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                } else {
                    monitorAction7 = monitorAction6;
                }
                nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                monitorAction = monitorAction7;
                mutableStateFlow2.setValue(Boolean.FALSE);
                monitorAction.b();
                return Unit.f71739a;
            case 6:
                th = (Throwable) this.f54971e;
                nativeCartViewModelImpl7 = this.d;
                monitorAction7 = this.f54969b;
                ResultKt.b(obj);
                mutableStateFlow2 = mutableStateFlow2;
                nativeCartViewModelImpl6 = nativeCartViewModelImpl7;
                nativeCartViewModelImpl6.f54871a.c("NativeCartViewModelImpl", "Unable to update quantity", th);
                monitorAction = monitorAction7;
                mutableStateFlow2.setValue(Boolean.FALSE);
                monitorAction.b();
                return Unit.f71739a;
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
