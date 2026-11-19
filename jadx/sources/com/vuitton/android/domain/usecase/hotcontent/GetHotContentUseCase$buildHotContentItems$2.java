package com.vuitton.android.domain.usecase.hotcontent;

import com.vuitton.foundation.model.domain.model.account.orders.PurchasedOrder;
import com.vuitton.foundation.model.domain.model.account.orders.Transaction;
import com.vuitton.foundation.model.domain.model.account.orders.TransactionItem;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContentItem;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$buildHotContentItems$2", f = "GetHotContentUseCase.kt", l = {EACTags.ELEMENT_LIST, EACTags.ADDRESS, EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
final class GetHotContentUseCase$buildHotContentItems$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends HotContentItem>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f50092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Deferred f50093c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OsaItem f50094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f50095f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50096h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$buildHotContentItems$2(GetHotContentUseCase getHotContentUseCase, Continuation continuation) {
        super(2, continuation);
        this.f50096h = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        GetHotContentUseCase$buildHotContentItems$2 getHotContentUseCase$buildHotContentItems$2 = new GetHotContentUseCase$buildHotContentItems$2(this.f50096h, continuation);
        getHotContentUseCase$buildHotContentItems$2.g = obj;
        return getHotContentUseCase$buildHotContentItems$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GetHotContentUseCase$buildHotContentItems$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x009d  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:29:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ec A[LOOP:2: B:30:0x00e6->B:32:0x00ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:36:0x0105  */
    /* JADX WARN: Code duplicated, block: B:40:0x011b  */
    /* JADX WARN: Code duplicated, block: B:46:0x013b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0135 A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferredA;
        Deferred deferred;
        List list;
        Object objK;
        OsaItem osaItem;
        Object objK2;
        List list2;
        OsaItem osaItem2;
        ArrayList arrayList;
        Iterator it;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        Iterator it2;
        CoroutineScope coroutineScope = (CoroutineScope) this.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50095f;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetHotContentUseCase getHotContentUseCase = this.f50096h;
            Deferred deferredA2 = BuildersKt.a(coroutineScope, null, new GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1(getHotContentUseCase, null), 3);
            Deferred deferredA3 = BuildersKt.a(coroutineScope, null, new GetHotContentUseCase$buildHotContentItems$2$ordersDeferred$1(getHotContentUseCase, null), 3);
            deferredA = BuildersKt.a(coroutineScope, null, new GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1(getHotContentUseCase, null), 3);
            this.g = null;
            this.f50092b = deferredA2;
            this.f50093c = deferredA;
            this.f50095f = 1;
            Object objK3 = deferredA3.k(this);
            if (objK3 != coroutineSingletons) {
                deferred = deferredA2;
                obj = objK3;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            deferredA = this.f50093c;
            deferred = (Deferred) this.f50092b;
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                List list3 = this.d;
                Deferred deferred2 = this.f50093c;
                ResultKt.b(obj);
                objK = obj;
                list = list3;
                deferredA = deferred2;
                osaItem = (OsaItem) objK;
                this.g = null;
                this.f50092b = null;
                this.f50093c = null;
                this.d = list;
                this.f50094e = osaItem;
                this.f50095f = 3;
                objK2 = deferredA.k(this);
                if (objK2 != coroutineSingletons) {
                    List list4 = list;
                    obj = objK2;
                    list2 = list4;
                    osaItem2 = osaItem;
                }
                return coroutineSingletons;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            osaItem2 = this.f50094e;
            list2 = this.d;
            ResultKt.b(obj);
        }
        List list5 = (List) obj;
        arrayList = new ArrayList();
        it = list2.iterator();
        while (it.hasNext()) {
            List<Transaction> list6 = ((PurchasedOrder) it.next()).f66336c;
            arrayList4 = new ArrayList();
            for (Transaction transaction : list6) {
                List list7 = transaction.f66345e;
                arrayList5 = new ArrayList(CollectionsKt.t(list7, 10));
                it2 = list7.iterator();
                while (it2.hasNext()) {
                    arrayList5.add(new HotContentItem.Order(transaction, (TransactionItem) it2.next()));
                }
                CollectionsKt.j(arrayList4, arrayList5);
            }
            CollectionsKt.j(arrayList, arrayList4);
        }
        HotContentItem.StoreAppointment storeAppointment = osaItem2 != null ? new HotContentItem.StoreAppointment(osaItem2) : null;
        List list8 = list5;
        arrayList2 = new ArrayList();
        for (Object obj2 : list8) {
            if (((HotContentItem.CareService) obj2).f67607a.f66877f != null) {
                arrayList2.add(obj2);
            }
        }
        arrayList3 = new ArrayList();
        for (Object obj3 : list8) {
            if (((HotContentItem.CareService) obj3).f67607a.f66877f == null) {
                arrayList3.add(obj3);
            }
        }
        return CollectionsKt.Y(CollectionsKt.Y(CollectionsKt.Y(arrayList2, arrayList), CollectionsKt.Q(storeAppointment)), arrayList3);
        list = (List) obj;
        this.g = null;
        this.f50092b = null;
        this.f50093c = deferredA;
        this.d = list;
        this.f50095f = 2;
        objK = deferred.k(this);
        if (objK != coroutineSingletons) {
            osaItem = (OsaItem) objK;
            this.g = null;
            this.f50092b = null;
            this.f50093c = null;
            this.d = list;
            this.f50094e = osaItem;
            this.f50095f = 3;
            objK2 = deferredA.k(this);
            if (objK2 != coroutineSingletons) {
                List list9 = list;
                obj = objK2;
                list2 = list9;
                osaItem2 = osaItem;
                List list10 = (List) obj;
                arrayList = new ArrayList();
                it = list2.iterator();
                while (it.hasNext()) {
                    List<Transaction> list11 = ((PurchasedOrder) it.next()).f66336c;
                    arrayList4 = new ArrayList();
                    while (r2.hasNext()) {
                        List list12 = transaction.f66345e;
                        arrayList5 = new ArrayList(CollectionsKt.t(list12, 10));
                        it2 = list12.iterator();
                        while (it2.hasNext()) {
                            arrayList5.add(new HotContentItem.Order(transaction, (TransactionItem) it2.next()));
                        }
                        CollectionsKt.j(arrayList4, arrayList5);
                    }
                    CollectionsKt.j(arrayList, arrayList4);
                }
                if (osaItem2 != null) {
                }
                List list13 = list10;
                arrayList2 = new ArrayList();
                while (r0.hasNext()) {
                    if (((HotContentItem.CareService) obj2).f67607a.f66877f != null) {
                        arrayList2.add(obj2);
                    }
                }
                arrayList3 = new ArrayList();
                while (r12.hasNext()) {
                    if (((HotContentItem.CareService) obj3).f67607a.f66877f == null) {
                        arrayList3.add(obj3);
                    }
                }
                return CollectionsKt.Y(CollectionsKt.Y(CollectionsKt.Y(arrayList2, arrayList), CollectionsKt.Q(storeAppointment)), arrayList3);
            }
        }
        return coroutineSingletons;
    }
}
