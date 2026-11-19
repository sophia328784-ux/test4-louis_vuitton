package com.vuitton.android.presentation.screen.thankyou;

import androidx.lifecycle.ViewModelKt;
import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.domain.usecase.cart.GetConfirmationDetailsUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYPurchaseEventUseCase;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeatureFlags;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.android.presentation.screen.thankyou.models.mappers.CheckoutConfirmationDetailMapperKt;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInfo;
import com.vuitton.foundation.model.domain.model.cart.CheckoutConfirmationDetail;
import com.vuitton.foundation.model.domain.model.cart.CheckoutItem;
import defpackage.md;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1", f = "ThankYouViewModelImpl.kt", l = {107, 111, 117}, m = "invokeSuspend", v = 2)
final class ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f65217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ThankYouViewModelImpl f65218c;
    public CheckoutConfirmationDetail d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CheckoutConfirmationDetailUiModel f65219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f65220f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f65221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewModelImpl f65222i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1(ThankYouViewModelImpl thankYouViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f65222i = thankYouViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1(this.f65222i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0098  */
    /* JADX WARN: Code duplicated, block: B:26:0x00da  */
    /* JADX WARN: Code duplicated, block: B:30:0x010b A[LOOP:0: B:28:0x0105->B:30:0x010b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x0136 A[LOOP:1: B:32:0x0130->B:34:0x0136, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:38:0x0165 A[LOOP:2: B:36:0x015f->B:38:0x0165, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x0189  */
    /* JADX WARN: Code duplicated, block: B:45:0x0197  */
    /* JADX WARN: Code duplicated, block: B:47:0x019d  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:52:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:55:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:56:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:59:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:61:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:64:0x01df  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object objYc;
        CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel;
        ThankYouViewModelImpl thankYouViewModelImpl;
        Object obj2;
        int i2;
        CheckoutConfirmationDetail checkoutConfirmationDetail;
        MutableStateFlow mutableStateFlow;
        String str;
        ThankYouFeatureFlags thankYouFeatureFlags;
        ReportDYPurchaseEventUseCase reportDYPurchaseEventUseCase;
        float f2;
        String str2;
        List list;
        String str3;
        Object obj3;
        Object obj4;
        CheckoutConfirmationDetail checkoutConfirmationDetail2;
        ThankYouViewModelImpl thankYouViewModelImpl2;
        CheckoutConfirmationDetail checkoutConfirmationDetail3;
        CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModelA;
        ThankYouFeatureFlags thankYouFeatureFlags2;
        ThankYouFeatureFlags thankYouFeatureFlags3;
        ArrayList arrayList;
        Iterator it;
        ArrayList arrayList2;
        Iterator it2;
        ArrayList arrayList3;
        Iterator it3;
        ThankYouViewModelImpl thankYouViewModelImpl3 = this.f65222i;
        MutableStateFlow mutableStateFlow2 = thankYouViewModelImpl3.m;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f65221h;
        String str4 = "thankYouFeatureFlags";
        if (i3 == 0) {
            ResultKt.b(obj);
            mutableStateFlow2.setValue(ThankYouViewState.Loading.f65300a);
            GetConfirmationDetailsUseCase getConfirmationDetailsUseCase = thankYouViewModelImpl3.f65205j;
            this.f65221h = 1;
            objA = getConfirmationDetailsUseCase.a(this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i3 == 2) {
                i2 = this.g;
                MutableStateFlow mutableStateFlow3 = (MutableStateFlow) this.f65220f;
                CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel2 = this.f65219e;
                CheckoutConfirmationDetail checkoutConfirmationDetail4 = this.d;
                ThankYouViewModelImpl thankYouViewModelImpl4 = this.f65218c;
                Object obj5 = this.f65217b;
                ResultKt.b(obj);
                checkoutConfirmationDetail = checkoutConfirmationDetail4;
                obj2 = obj5;
                checkoutConfirmationDetailUiModel = checkoutConfirmationDetailUiModel2;
                thankYouViewModelImpl = thankYouViewModelImpl4;
                mutableStateFlow = mutableStateFlow3;
                objYc = obj;
                str = (String) objYc;
                thankYouFeatureFlags = thankYouViewModelImpl.u;
                if (thankYouFeatureFlags != null) {
                    Intrinsics.h("thankYouFeatureFlags");
                    throw null;
                }
                mutableStateFlow.setValue(new ThankYouViewState.Success(checkoutConfirmationDetailUiModel, str, null, thankYouFeatureFlags, 4, null));
                thankYouViewModelImpl.f65198a.d(checkoutConfirmationDetail);
                reportDYPurchaseEventUseCase = thankYouViewModelImpl.f65204i;
                CartPrice cartPrice = checkoutConfirmationDetail.f66935h.f66918b;
                f2 = (float) cartPrice.f66914a;
                str2 = checkoutConfirmationDetail.f66930a;
                list = checkoutConfirmationDetail.g;
                str3 = cartPrice.f66916c;
                this.f65217b = obj2;
                this.f65218c = thankYouViewModelImpl;
                this.d = checkoutConfirmationDetail;
                this.f65219e = null;
                this.f65220f = null;
                this.g = i2;
                this.f65221h = 3;
                obj3 = obj2;
                if (reportDYPurchaseEventUseCase.a(f2, str2, list, str3, this) != coroutineSingletons) {
                    obj4 = obj3;
                    checkoutConfirmationDetail2 = checkoutConfirmationDetail;
                    thankYouViewModelImpl2 = thankYouViewModelImpl;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            checkoutConfirmationDetail2 = this.d;
            thankYouViewModelImpl2 = this.f65218c;
            obj4 = this.f65217b;
            ResultKt.b(obj);
        }
        HashMap map = new HashMap();
        CartPriceInfo cartPriceInfo = checkoutConfirmationDetail2.f66935h;
        List list2 = checkoutConfirmationDetail2.g;
        map.put(AFInAppEventParameterName.REVENUE, new Double(cartPriceInfo.f66918b.f66914a));
        List list3 = list2;
        arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(new Double(((CheckoutItem) it.next()).f66944e.f66914a));
        }
        map.put(AFInAppEventParameterName.PRICE, arrayList);
        arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
        it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((CheckoutItem) it2.next()).f66941a);
        }
        map.put(AFInAppEventParameterName.CONTENT_ID, arrayList2);
        map.put(AFInAppEventParameterName.CURRENCY, checkoutConfirmationDetail2.f66935h.f66918b.f66916c);
        arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
        it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(new Integer(((CheckoutItem) it3.next()).f66943c));
        }
        map.put(AFInAppEventParameterName.QUANTITY, arrayList3);
        thankYouViewModelImpl2.f65200c.a("ThankYouViewModel", new AppsFlyerEvent.Purchase(map));
        objA = obj4;
        if (Result.a(objA) != null) {
            thankYouFeatureFlags3 = thankYouViewModelImpl3.u;
            if (thankYouFeatureFlags3 != null) {
                Intrinsics.h(str4);
                throw null;
            }
            mutableStateFlow2.setValue(new ThankYouViewState.Error(null, thankYouFeatureFlags3, 1, null));
        }
        if (objA instanceof Result.Failure) {
            objA = null;
        }
        checkoutConfirmationDetail3 = (CheckoutConfirmationDetail) objA;
        if (checkoutConfirmationDetail3 != null) {
            checkoutConfirmationDetailUiModelA = CheckoutConfirmationDetailMapperKt.a(checkoutConfirmationDetail3);
        } else {
            checkoutConfirmationDetailUiModelA = null;
        }
        thankYouFeatureFlags2 = thankYouViewModelImpl3.u;
        if (thankYouFeatureFlags2 != null) {
            Intrinsics.h(str4);
            throw null;
        }
        if (thankYouFeatureFlags2.f65283b) {
            BuildersKt.c(ViewModelKt.a(thankYouViewModelImpl3), null, null, new ThankYouViewModelImpl$displayFeedbackNotification$1(thankYouViewModelImpl3, null), 3);
        }
        thankYouViewModelImpl3.Ba(new ThankYouTrackingUiModel.Screen(checkoutConfirmationDetailUiModelA));
        thankYouViewModelImpl3.Ba(new ThankYouTrackingUiModel.PurchaseConfirmation(checkoutConfirmationDetailUiModelA));
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CheckoutConfirmationDetail checkoutConfirmationDetail5 = (CheckoutConfirmationDetail) objA;
            CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModelA2 = CheckoutConfirmationDetailMapperKt.a(checkoutConfirmationDetail5);
            String str5 = checkoutConfirmationDetail5.o;
            this.f65217b = objA;
            this.f65218c = thankYouViewModelImpl3;
            this.d = checkoutConfirmationDetail5;
            this.f65219e = checkoutConfirmationDetailUiModelA2;
            this.f65220f = mutableStateFlow2;
            this.g = 0;
            this.f65221h = 2;
            objYc = ThankYouViewModelImpl.yc(thankYouViewModelImpl3, str5, this);
            if (objYc != coroutineSingletons) {
                checkoutConfirmationDetailUiModel = checkoutConfirmationDetailUiModelA2;
                thankYouViewModelImpl = thankYouViewModelImpl3;
                obj2 = objA;
                i2 = 0;
                checkoutConfirmationDetail = checkoutConfirmationDetail5;
                mutableStateFlow = mutableStateFlow2;
                str = (String) objYc;
                thankYouFeatureFlags = thankYouViewModelImpl.u;
                if (thankYouFeatureFlags != null) {
                    Intrinsics.h("thankYouFeatureFlags");
                    throw null;
                }
                mutableStateFlow.setValue(new ThankYouViewState.Success(checkoutConfirmationDetailUiModel, str, null, thankYouFeatureFlags, 4, null));
                thankYouViewModelImpl.f65198a.d(checkoutConfirmationDetail);
                reportDYPurchaseEventUseCase = thankYouViewModelImpl.f65204i;
                CartPrice cartPrice2 = checkoutConfirmationDetail.f66935h.f66918b;
                f2 = (float) cartPrice2.f66914a;
                str2 = checkoutConfirmationDetail.f66930a;
                list = checkoutConfirmationDetail.g;
                str3 = cartPrice2.f66916c;
                this.f65217b = obj2;
                this.f65218c = thankYouViewModelImpl;
                this.d = checkoutConfirmationDetail;
                this.f65219e = null;
                this.f65220f = null;
                this.g = i2;
                this.f65221h = 3;
                obj3 = obj2;
                if (reportDYPurchaseEventUseCase.a(f2, str2, list, str3, this) != coroutineSingletons) {
                    obj4 = obj3;
                    checkoutConfirmationDetail2 = checkoutConfirmationDetail;
                    thankYouViewModelImpl2 = thankYouViewModelImpl;
                    HashMap map2 = new HashMap();
                    CartPriceInfo cartPriceInfo2 = checkoutConfirmationDetail2.f66935h;
                    List list4 = checkoutConfirmationDetail2.g;
                    map2.put(AFInAppEventParameterName.REVENUE, new Double(cartPriceInfo2.f66918b.f66914a));
                    List list5 = list4;
                    arrayList = new ArrayList(CollectionsKt.t(list5, 10));
                    it = list5.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new Double(((CheckoutItem) it.next()).f66944e.f66914a));
                    }
                    map2.put(AFInAppEventParameterName.PRICE, arrayList);
                    arrayList2 = new ArrayList(CollectionsKt.t(list5, 10));
                    it2 = list5.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((CheckoutItem) it2.next()).f66941a);
                    }
                    map2.put(AFInAppEventParameterName.CONTENT_ID, arrayList2);
                    map2.put(AFInAppEventParameterName.CURRENCY, checkoutConfirmationDetail2.f66935h.f66918b.f66916c);
                    arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
                    it3 = list5.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(new Integer(((CheckoutItem) it3.next()).f66943c));
                    }
                    map2.put(AFInAppEventParameterName.QUANTITY, arrayList3);
                    thankYouViewModelImpl2.f65200c.a("ThankYouViewModel", new AppsFlyerEvent.Purchase(map2));
                    objA = obj4;
                }
            }
            return coroutineSingletons;
        }
        str4 = "thankYouFeatureFlags";
        if (Result.a(objA) != null) {
            thankYouFeatureFlags3 = thankYouViewModelImpl3.u;
            if (thankYouFeatureFlags3 != null) {
                Intrinsics.h(str4);
                throw null;
            }
            mutableStateFlow2.setValue(new ThankYouViewState.Error(null, thankYouFeatureFlags3, 1, null));
        }
        if (objA instanceof Result.Failure) {
            objA = null;
        }
        checkoutConfirmationDetail3 = (CheckoutConfirmationDetail) objA;
        if (checkoutConfirmationDetail3 != null) {
            checkoutConfirmationDetailUiModelA = CheckoutConfirmationDetailMapperKt.a(checkoutConfirmationDetail3);
        } else {
            checkoutConfirmationDetailUiModelA = null;
        }
        thankYouFeatureFlags2 = thankYouViewModelImpl3.u;
        if (thankYouFeatureFlags2 != null) {
            Intrinsics.h(str4);
            throw null;
        }
        if (thankYouFeatureFlags2.f65283b) {
            BuildersKt.c(ViewModelKt.a(thankYouViewModelImpl3), null, null, new ThankYouViewModelImpl$displayFeedbackNotification$1(thankYouViewModelImpl3, null), 3);
        }
        thankYouViewModelImpl3.Ba(new ThankYouTrackingUiModel.Screen(checkoutConfirmationDetailUiModelA));
        thankYouViewModelImpl3.Ba(new ThankYouTrackingUiModel.PurchaseConfirmation(checkoutConfirmationDetailUiModelA));
        return Unit.f71739a;
    }
}
