package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.LastViewedProductRepository;
import com.vuitton.android.domain.repository.RecommendedSourceRepository;
import com.vuitton.foundation.model.domain.model.product.LastViewedProduct;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a4;
import defpackage.b4;
import defpackage.md;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;", "", "Lcom/vuitton/android/domain/repository/LastViewedProductRepository;", "lastViewedProductRepository", "Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;", "recommendedSourceRepository", "<init>", "(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddLastViewedProductSkuUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LastViewedProductRepository f50285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecommendedSourceRepository f50286b;

    @Inject
    public AddLastViewedProductSkuUseCase(LastViewedProductRepository lastViewedProductRepository, RecommendedSourceRepository recommendedSourceRepository) {
        lastViewedProductRepository.getClass();
        recommendedSourceRepository.getClass();
        this.f50285a = lastViewedProductRepository;
        this.f50286b = recommendedSourceRepository;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
    
        if (r1.c(r11, r7) == r0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r11, java.lang.String r12, java.lang.String r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase$run$1
            if (r0 == 0) goto L14
            r0 = r14
            com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase$run$1) r0
            int r1 = r0.f50289e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f50289e = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase$run$1
            r0.<init>(r10, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f50288c
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f50289e
            r8 = 2
            r2 = 1
            r9 = 0
            if (r1 == 0) goto L3a
            if (r1 == r2) goto L33
            if (r1 != r8) goto L2d
            kotlin.ResultKt.b(r14)
            goto L70
        L2d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r9
        L33:
            java.util.ArrayList r11 = r7.f50287b
            kotlin.ResultKt.b(r14)
            r1 = r10
            goto L65
        L3a:
            kotlin.ResultKt.b(r14)
            java.time.LocalDateTime r5 = java.time.LocalDateTime.now()
            com.vuitton.android.domain.repository.LastViewedProductRepository r14 = r10.f50285a
            kotlinx.coroutines.flow.StateFlow r14 = r14.b()
            java.lang.Object r14 = r14.getValue()
            java.util.Collection r14 = (java.util.Collection) r14
            java.util.ArrayList r14 = kotlin.collections.CollectionsKt.z0(r14)
            r5.getClass()
            r7.f50287b = r14
            r7.f50289e = r2
            r1 = r10
            r3 = r11
            r4 = r12
            r6 = r13
            r2 = r14
            java.lang.Object r10 = r1.b(r2, r3, r4, r5, r6, r7)
            if (r10 != r0) goto L64
            goto L6f
        L64:
            r11 = r2
        L65:
            r7.f50287b = r9
            r7.f50289e = r8
            java.lang.Object r10 = r1.c(r11, r7)
            if (r10 != r0) goto L70
        L6f:
            return r0
        L70:
            kotlin.Unit r10 = kotlin.Unit.f71739a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase.a(java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:? A[LOOP:0: B:31:0x0089->B:47:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public final Object b(ArrayList arrayList, String str, String str2, LocalDateTime localDateTime, String str3, ContinuationImpl continuationImpl) {
        AddLastViewedProductSkuUseCase$updateLastViewedProductList$1 addLastViewedProductSkuUseCase$updateLastViewedProductList$1;
        Iterator it;
        if (continuationImpl instanceof AddLastViewedProductSkuUseCase$updateLastViewedProductList$1) {
            addLastViewedProductSkuUseCase$updateLastViewedProductList$1 = (AddLastViewedProductSkuUseCase$updateLastViewedProductList$1) continuationImpl;
            int i2 = addLastViewedProductSkuUseCase$updateLastViewedProductList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addLastViewedProductSkuUseCase$updateLastViewedProductList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addLastViewedProductSkuUseCase$updateLastViewedProductList$1 = new AddLastViewedProductSkuUseCase$updateLastViewedProductList$1(this, continuationImpl);
            }
        } else {
            addLastViewedProductSkuUseCase$updateLastViewedProductList$1 = new AddLastViewedProductSkuUseCase$updateLastViewedProductList$1(this, continuationImpl);
        }
        AddLastViewedProductSkuUseCase$updateLastViewedProductList$1 addLastViewedProductSkuUseCase$updateLastViewedProductList$2 = addLastViewedProductSkuUseCase$updateLastViewedProductList$1;
        Object obj = addLastViewedProductSkuUseCase$updateLastViewedProductList$2.f50290b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addLastViewedProductSkuUseCase$updateLastViewedProductList$2.d;
        int i4 = 1;
        if (i3 == 0) {
            ResultKt.b(obj);
            int i5 = 0;
            if (arrayList == null || !arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        String str4 = ((LastViewedProduct) it2.next()).f67896a;
                        SkuId.Companion companion = SkuId.INSTANCE;
                        if (str4.equals(str)) {
                            arrayList.removeIf(new b4(new a4(str, i5), i5));
                            arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                        }
                    } else if (arrayList != null || !arrayList.isEmpty()) {
                        it = arrayList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (((LastViewedProduct) it.next()).f67897b.equals(str2)) {
                                    arrayList.removeIf(new b4(new a4(str2, i4), i4));
                                    arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                                }
                            } else if (arrayList.size() == 20) {
                                arrayList.remove(arrayList.get(arrayList.size() - 1));
                                arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                            } else {
                                arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                            }
                        }
                    } else if (arrayList.size() == 20) {
                        arrayList.remove(arrayList.get(arrayList.size() - 1));
                        arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                    } else {
                        arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                    }
                }
            } else if (arrayList != null) {
                it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((LastViewedProduct) it.next()).f67897b.equals(str2)) {
                            arrayList.removeIf(new b4(new a4(str2, i4), i4));
                            arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                        }
                    } else if (arrayList.size() == 20) {
                        arrayList.remove(arrayList.get(arrayList.size() - 1));
                        arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                    } else {
                        arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                    }
                }
            } else {
                it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((LastViewedProduct) it.next()).f67897b.equals(str2)) {
                            arrayList.removeIf(new b4(new a4(str2, i4), i4));
                            arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                        }
                    } else if (arrayList.size() == 20) {
                        arrayList.remove(arrayList.get(arrayList.size() - 1));
                        arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                    } else {
                        arrayList.add(0, new LastViewedProduct(str, str2, localDateTime, str3, null));
                    }
                }
            }
            addLastViewedProductSkuUseCase$updateLastViewedProductList$2.d = 1;
            if (this.f50285a.a(arrayList, addLastViewedProductSkuUseCase$updateLastViewedProductList$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(List list, ContinuationImpl continuationImpl) {
        AddLastViewedProductSkuUseCase$updateRecommendedSource$1 addLastViewedProductSkuUseCase$updateRecommendedSource$1;
        List listQ0;
        if (continuationImpl instanceof AddLastViewedProductSkuUseCase$updateRecommendedSource$1) {
            addLastViewedProductSkuUseCase$updateRecommendedSource$1 = (AddLastViewedProductSkuUseCase$updateRecommendedSource$1) continuationImpl;
            int i2 = addLastViewedProductSkuUseCase$updateRecommendedSource$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addLastViewedProductSkuUseCase$updateRecommendedSource$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addLastViewedProductSkuUseCase$updateRecommendedSource$1 = new AddLastViewedProductSkuUseCase$updateRecommendedSource$1(this, continuationImpl);
            }
        } else {
            addLastViewedProductSkuUseCase$updateRecommendedSource$1 = new AddLastViewedProductSkuUseCase$updateRecommendedSource$1(this, continuationImpl);
        }
        Object obj = addLastViewedProductSkuUseCase$updateRecommendedSource$1.f50292b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addLastViewedProductSkuUseCase$updateRecommendedSource$1.d;
        List list2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            RecommendedSourceRepository recommendedSourceRepository = this.f50286b;
            List list3 = (List) recommendedSourceRepository.a().getValue();
            if (list.size() < 4) {
                list = null;
            }
            if (list != null && (listQ0 = CollectionsKt.q0(list, 4)) != null) {
                LastViewedProduct lastViewedProduct = (LastViewedProduct) CollectionsKt.G(0, listQ0);
                String str = lastViewedProduct != null ? lastViewedProduct.d : null;
                if (str != null) {
                    List list4 = listQ0;
                    if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                        Iterator it = list4.iterator();
                        do {
                            if (!it.hasNext()) {
                                list2 = listQ0;
                                break;
                            }
                        } while (Intrinsics.c(((LastViewedProduct) it.next()).d, str));
                    } else {
                        list2 = listQ0;
                        break;
                    }
                }
            }
            if (list2 != null) {
                List<LastViewedProduct> list5 = list2;
                if (!(list5 instanceof Collection) || !list5.isEmpty()) {
                    for (LastViewedProduct lastViewedProduct2 : list5) {
                        List list6 = list3;
                        if (!(list6 instanceof Collection) || !list6.isEmpty()) {
                            Iterator it2 = list6.iterator();
                            while (it2.hasNext()) {
                                String str2 = ((LastViewedProduct) it2.next()).f67896a;
                                String str3 = lastViewedProduct2.f67896a;
                                SkuId.Companion companion = SkuId.INSTANCE;
                                if (str2.equals(str3)) {
                                }
                            }
                        }
                    }
                }
                addLastViewedProductSkuUseCase$updateRecommendedSource$1.d = 1;
                if (recommendedSourceRepository.b(list2, addLastViewedProductSkuUseCase$updateRecommendedSource$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ((Result) obj).getClass();
        return Unit.f71739a;
    }
}
