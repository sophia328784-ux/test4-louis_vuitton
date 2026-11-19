package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.domain.usecase.products.RemoveSkuFromLastViewedProductListUseCase;
import com.vuitton.android.presentation.model.common.mapper.ProductShortMapperKt;
import com.vuitton.android.presentation.screen.feed.models.FeedFeatureFlags;
import com.vuitton.foundation.model.domain.model.product.LastViewedProduct;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "productList", "", "Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadLastViewedProducts$2", f = "FeedViewModelImpl.kt", l = {757, 762}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$loadLastViewedProducts$2 extends SuspendLambda implements Function2<List<? extends LastViewedProduct>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f57683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f57684c;
    public FeedViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f57685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f57686f;
    public Iterator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f57687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f57688i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f57689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ Object f57690k;
    public final /* synthetic */ FeedViewModelImpl l;
    public final /* synthetic */ String m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$loadLastViewedProducts$2(FeedViewModelImpl feedViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.l = feedViewModelImpl;
        this.m = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FeedViewModelImpl$loadLastViewedProducts$2 feedViewModelImpl$loadLastViewedProducts$2 = new FeedViewModelImpl$loadLastViewedProducts$2(this.l, this.m, continuation);
        feedViewModelImpl$loadLastViewedProducts$2.f57690k = obj;
        return feedViewModelImpl$loadLastViewedProducts$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$loadLastViewedProducts$2) create((List) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:36:0x0113  */
    /* JADX WARN: Code duplicated, block: B:39:0x0129 A[LOOP:1: B:37:0x0123->B:39:0x0129, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x013f  */
    /* JADX WARN: Code duplicated, block: B:44:0x014f  */
    /* JADX WARN: Code duplicated, block: B:48:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:? A[LOOP:0: B:29:0x00de->B:51:?, LOOP_END, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        ArrayList arrayList;
        Object obj3;
        int i2;
        String str;
        List list;
        FeedViewModelImpl feedViewModelImpl;
        Iterator it;
        int i3;
        Throwable thA;
        ArrayList arrayList2;
        Iterator it2;
        String str2;
        RemoveSkuFromLastViewedProductListUseCase removeSkuFromLastViewedProductListUseCase;
        List list2 = (List) this.f57690k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.f57689j;
        FeedViewModelImpl feedViewModelImpl2 = this.l;
        if (i4 == 0) {
            ResultKt.b(obj);
            if (((FeedFeatureFlags) feedViewModelImpl2.R.getValue()).d && !list2.isEmpty()) {
                List list3 = list2;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new SkuId(((LastViewedProduct) it3.next()).f67896a));
                }
                GetProductShortListUseCase getProductShortListUseCase = feedViewModelImpl2.t;
                this.f57690k = null;
                this.f57683b = arrayList3;
                this.f57689j = 1;
                Object objA = getProductShortListUseCase.a(arrayList3, this);
                if (objA != coroutineSingletons) {
                    obj2 = objA;
                    arrayList = arrayList3;
                }
                return coroutineSingletons;
            }
            FeedViewModelImpl.Mc(feedViewModelImpl2, this.m, EmptyList.f71768b, null, null, 28);
            return Unit.f71739a;
        }
        if (i4 == 1) {
            arrayList = this.f57683b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        } else {
            if (i4 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i3 = this.f57688i;
            i2 = this.f57687h;
            it = this.g;
            list = this.f57686f;
            String str3 = this.f57685e;
            FeedViewModelImpl feedViewModelImpl3 = this.d;
            obj3 = this.f57684c;
            ResultKt.b(obj);
            str = str3;
            feedViewModelImpl = feedViewModelImpl3;
        }
        while (it.hasNext()) {
            str2 = ((SkuId) it.next()).f67933a;
            removeSkuFromLastViewedProductListUseCase = feedViewModelImpl.C;
            this.f57690k = null;
            this.f57683b = null;
            this.f57684c = obj3;
            this.d = feedViewModelImpl;
            this.f57685e = str;
            this.f57686f = list;
            this.g = it;
            this.f57687h = i2;
            this.f57688i = i3;
            this.f57689j = 2;
            if (removeSkuFromLastViewedProductListUseCase.a(str2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        if (list.size() >= 3) {
            List list4 = list;
            obj2 = obj3;
            arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
            it2 = list4.iterator();
            while (it2.hasNext()) {
                arrayList2.add(ProductShortMapperKt.a((ProductShort) it2.next()));
            }
            FeedViewModelImpl.Mc(feedViewModelImpl, str, arrayList2, null, null, 28);
        } else {
            obj2 = obj3;
            FeedViewModelImpl.Mc(feedViewModelImpl, str, EmptyList.f71768b, null, null, 28);
        }
        thA = Result.a(obj2);
        if (thA != null) {
            feedViewModelImpl2.f57615b.c("FeedViewModelImpl", thA.getMessage(), thA);
            FeedViewModelImpl.Mc(feedViewModelImpl2, this.m, EmptyList.f71768b, null, null, 28);
        }
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (obj2 instanceof Result.Failure) {
            thA = Result.a(obj2);
            if (thA != null) {
                feedViewModelImpl2.f57615b.c("FeedViewModelImpl", thA.getMessage(), thA);
                FeedViewModelImpl.Mc(feedViewModelImpl2, this.m, EmptyList.f71768b, null, null, 28);
            }
        } else {
            List list5 = (List) obj2;
            List list6 = list5;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list6, 10));
            Iterator it4 = list6.iterator();
            while (it4.hasNext()) {
                arrayList4.add(new SkuId(((ProductShort) it4.next()).f68128e));
            }
            Iterator it5 = CollectionsKt.p0(arrayList, CollectionsKt.B0(arrayList4)).iterator();
            obj3 = obj2;
            i2 = 0;
            str = this.m;
            list = list5;
            feedViewModelImpl = feedViewModelImpl2;
            it = it5;
            i3 = 0;
            while (it.hasNext()) {
                str2 = ((SkuId) it.next()).f67933a;
                removeSkuFromLastViewedProductListUseCase = feedViewModelImpl.C;
                this.f57690k = null;
                this.f57683b = null;
                this.f57684c = obj3;
                this.d = feedViewModelImpl;
                this.f57685e = str;
                this.f57686f = list;
                this.g = it;
                this.f57687h = i2;
                this.f57688i = i3;
                this.f57689j = 2;
                if (removeSkuFromLastViewedProductListUseCase.a(str2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            if (list.size() >= 3) {
                List list7 = list;
                obj2 = obj3;
                arrayList2 = new ArrayList(CollectionsKt.t(list7, 10));
                it2 = list7.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(ProductShortMapperKt.a((ProductShort) it2.next()));
                }
                FeedViewModelImpl.Mc(feedViewModelImpl, str, arrayList2, null, null, 28);
            } else {
                obj2 = obj3;
                FeedViewModelImpl.Mc(feedViewModelImpl, str, EmptyList.f71768b, null, null, 28);
            }
            thA = Result.a(obj2);
            if (thA != null) {
                feedViewModelImpl2.f57615b.c("FeedViewModelImpl", thA.getMessage(), thA);
                FeedViewModelImpl.Mc(feedViewModelImpl2, this.m, EmptyList.f71768b, null, null, 28);
            }
        }
        return Unit.f71739a;
    }
}
