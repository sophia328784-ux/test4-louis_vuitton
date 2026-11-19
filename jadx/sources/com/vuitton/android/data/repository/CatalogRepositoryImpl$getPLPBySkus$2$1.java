package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.PlpSection;
import com.vuitton.foundation.model.domain.model.plp.mapper.PlpMapperKt;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductListOption;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getPLPBySkus$2$1", f = "CatalogRepositoryImpl.kt", l = {210}, m = "invokeSuspend", v = 2)
final class CatalogRepositoryImpl$getPLPBySkus$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PlpPagination>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47525c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f47526e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getPLPBySkus$2$1(CatalogRepositoryImpl catalogRepositoryImpl, List list, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f47525c = catalogRepositoryImpl;
        this.d = list;
        this.f47526e = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogRepositoryImpl$getPLPBySkus$2$1(this.f47525c, this.d, this.f47526e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogRepositoryImpl$getPLPBySkus$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List listO;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47524b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f47524b = 1;
            obj = this.f47525c.k(this.d, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        if (list.isEmpty()) {
            listO = EmptyList.f71768b;
        } else {
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(PlpMapperKt.b((ProductShort) it.next(), this.f47526e));
            }
            listO = CollectionsKt.O(new PlpSection.Products("skus-products", arrayList));
        }
        return new PlpPagination(null, null, null, listO, new ProductListOption(EmptyList.f71768b, null, null, 4, null), list.size(), 0, null);
    }
}
