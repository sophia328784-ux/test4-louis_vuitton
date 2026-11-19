package com.vuitton.android.domain.usecase.pdp;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSotTokenForTwistUserOrNullUseCase;
import com.vuitton.android.domain.usecase.config.GetECommerceStatusUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.authentication.SotToken;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.availability.ECommerceStatus;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.universal.Product;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;", "eCommerceStatusUseCase", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "catalogRepository", "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;", "trunkSpeakerRepository", "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;", "horizonSpeakerRepository", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;", "getSotTokenForTwistUserOrNullUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductDetailUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f50167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetECommerceStatusUseCase f50168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CatalogRepository f50169c;
    public final TrunkSpeakerRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HorizonSpeakerRepository f50170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetSotTokenForTwistUserOrNullUseCase f50171f;
    public final IsFeatureAvailableUseCase g;

    @Inject
    public GetProductDetailUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, GetECommerceStatusUseCase getECommerceStatusUseCase, CatalogRepository catalogRepository, TrunkSpeakerRepository trunkSpeakerRepository, HorizonSpeakerRepository horizonSpeakerRepository, GetSotTokenForTwistUserOrNullUseCase getSotTokenForTwistUserOrNullUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        getECommerceStatusUseCase.getClass();
        catalogRepository.getClass();
        trunkSpeakerRepository.getClass();
        horizonSpeakerRepository.getClass();
        getSotTokenForTwistUserOrNullUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f50167a = requireCachedConnectedObjectsConfigUseCase;
        this.f50168b = getECommerceStatusUseCase;
        this.f50169c = catalogRepository;
        this.d = trunkSpeakerRepository;
        this.f50170e = horizonSpeakerRepository;
        this.f50171f = getSotTokenForTwistUserOrNullUseCase;
        this.g = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x010c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0133  */
    /* JADX WARN: Code duplicated, block: B:44:0x013a A[Catch: all -> 0x0204, TRY_ENTER, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0158  */
    /* JADX WARN: Code duplicated, block: B:47:0x0159  */
    /* JADX WARN: Code duplicated, block: B:50:0x0178  */
    /* JADX WARN: Code duplicated, block: B:51:0x0179  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:58:0x01b0 A[Catch: all -> 0x0204, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x01bb A[Catch: all -> 0x0204, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x01c5 A[Catch: all -> 0x0204, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01da A[Catch: all -> 0x0204, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01e5 A[Catch: all -> 0x0204, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01ef A[Catch: all -> 0x0204, TryCatch #0 {all -> 0x0204, blocks: (B:14:0x003e, B:56:0x01a8, B:58:0x01b0, B:67:0x01d4, B:69:0x01da, B:77:0x01fd, B:72:0x01e5, B:73:0x01e9, B:75:0x01ef, B:61:0x01bb, B:62:0x01bf, B:64:0x01c5, B:17:0x0053, B:52:0x0181, B:21:0x006a, B:48:0x015b, B:44:0x013a), top: B:82:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:? A[LOOP:0: B:73:0x01e9->B:86:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x01b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:? A[LOOP:1: B:62:0x01bf->B:89:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
    public final Object a(String str, boolean z, CustomizationId customizationId, String str2, ContinuationImpl continuationImpl) {
        GetProductDetailUseCase$run$1 getProductDetailUseCase$run$1;
        ECommerceStatus eCommerceStatusA;
        CustomizationId customizationId2;
        boolean z2;
        String str3;
        CatalogRepository catalogRepository;
        Object obj;
        String str4;
        String str5;
        Object objC;
        String str6;
        String str7;
        boolean z3;
        CatalogRepository catalogRepository2;
        Object objB;
        boolean z4;
        Product product;
        String str8;
        boolean z5;
        int i2;
        ConnectedObjectsConfig connectedObjectsConfig;
        Object objD;
        ConnectedObjectsConfig connectedObjectsConfig2;
        boolean z6;
        int i3;
        Product product2;
        List list;
        Object objB2;
        List list2;
        String str9;
        List list3;
        Iterator it;
        boolean z7;
        List list4;
        Iterator it2;
        if (continuationImpl instanceof GetProductDetailUseCase$run$1) {
            getProductDetailUseCase$run$1 = (GetProductDetailUseCase$run$1) continuationImpl;
            int i4 = getProductDetailUseCase$run$1.m;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                getProductDetailUseCase$run$1.m = i4 - Integer.MIN_VALUE;
            } else {
                getProductDetailUseCase$run$1 = new GetProductDetailUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProductDetailUseCase$run$1 = new GetProductDetailUseCase$run$1(this, continuationImpl);
        }
        GetProductDetailUseCase$run$1 getProductDetailUseCase$run$2 = getProductDetailUseCase$run$1;
        Object objA = getProductDetailUseCase$run$2.f50179k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        boolean z8 = true;
        try {
            switch (getProductDetailUseCase$run$2.m) {
                case 0:
                    ResultKt.b(objA);
                    eCommerceStatusA = this.f50168b.a();
                    getProductDetailUseCase$run$2.f50172b = str;
                    getProductDetailUseCase$run$2.f50173c = customizationId;
                    getProductDetailUseCase$run$2.d = str2;
                    CatalogRepository catalogRepository3 = this.f50169c;
                    getProductDetailUseCase$run$2.f50174e = catalogRepository3;
                    getProductDetailUseCase$run$2.f50175f = eCommerceStatusA;
                    getProductDetailUseCase$run$2.f50177i = z;
                    getProductDetailUseCase$run$2.m = 1;
                    Object objA2 = this.f50171f.a(getProductDetailUseCase$run$2);
                    if (objA2 != coroutineSingletons) {
                        customizationId2 = customizationId;
                        z2 = z;
                        str3 = str2;
                        catalogRepository = catalogRepository3;
                        obj = objA2;
                        str4 = str;
                        str5 = (String) obj;
                        Feature[] featureArr = {Feature.AGEC_LAW};
                        getProductDetailUseCase$run$2.f50172b = str4;
                        getProductDetailUseCase$run$2.f50173c = customizationId2;
                        getProductDetailUseCase$run$2.d = str3;
                        getProductDetailUseCase$run$2.f50174e = catalogRepository;
                        getProductDetailUseCase$run$2.f50175f = eCommerceStatusA;
                        getProductDetailUseCase$run$2.g = str5;
                        getProductDetailUseCase$run$2.f50177i = z2;
                        getProductDetailUseCase$run$2.m = 2;
                        objC = this.g.c(featureArr, false, getProductDetailUseCase$run$2);
                        if (objC != coroutineSingletons) {
                            String str10 = str4;
                            str6 = str5;
                            objA = objC;
                            str7 = str10;
                            CatalogRepository catalogRepository4 = catalogRepository;
                            z3 = z2;
                            catalogRepository2 = catalogRepository4;
                            CustomizationId customizationId3 = customizationId2;
                            String str11 = str3;
                            boolean zBooleanValue = ((Boolean) objA).booleanValue();
                            getProductDetailUseCase$run$2.f50172b = null;
                            getProductDetailUseCase$run$2.f50173c = null;
                            getProductDetailUseCase$run$2.d = null;
                            getProductDetailUseCase$run$2.f50174e = null;
                            getProductDetailUseCase$run$2.f50175f = null;
                            getProductDetailUseCase$run$2.g = null;
                            getProductDetailUseCase$run$2.f50177i = z3;
                            getProductDetailUseCase$run$2.m = 3;
                            objB = catalogRepository2.b(str7, z3, customizationId3, str11, str6, zBooleanValue, getProductDetailUseCase$run$2);
                            if (objB != coroutineSingletons) {
                                z4 = z3;
                                Result.Companion companion = Result.INSTANCE;
                                if (!(objB instanceof Result.Failure)) {
                                    return objB;
                                }
                                product = (Product) objB;
                                str8 = product.f68011a;
                                RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase = this.f50167a;
                                getProductDetailUseCase$run$2.f50172b = null;
                                getProductDetailUseCase$run$2.f50173c = null;
                                getProductDetailUseCase$run$2.d = null;
                                getProductDetailUseCase$run$2.f50174e = product;
                                getProductDetailUseCase$run$2.f50175f = str8;
                                getProductDetailUseCase$run$2.f50177i = z4;
                                getProductDetailUseCase$run$2.f50178j = 0;
                                getProductDetailUseCase$run$2.m = 4;
                                objA = requireCachedConnectedObjectsConfigUseCase.a(getProductDetailUseCase$run$2);
                                if (objA == coroutineSingletons) {
                                    z5 = z4;
                                    i2 = 0;
                                    connectedObjectsConfig = (ConnectedObjectsConfig) objA;
                                    TrunkSpeakerRepository trunkSpeakerRepository = this.d;
                                    getProductDetailUseCase$run$2.f50172b = null;
                                    getProductDetailUseCase$run$2.f50173c = null;
                                    getProductDetailUseCase$run$2.d = null;
                                    getProductDetailUseCase$run$2.f50174e = product;
                                    getProductDetailUseCase$run$2.f50175f = str8;
                                    getProductDetailUseCase$run$2.g = connectedObjectsConfig;
                                    getProductDetailUseCase$run$2.f50177i = z5;
                                    getProductDetailUseCase$run$2.f50178j = i2;
                                    getProductDetailUseCase$run$2.m = 5;
                                    objD = trunkSpeakerRepository.d(connectedObjectsConfig);
                                    if (objD != coroutineSingletons) {
                                        connectedObjectsConfig2 = connectedObjectsConfig;
                                        objA = objD;
                                        z6 = z5;
                                        i3 = i2;
                                        product2 = product;
                                        boolean z9 = z6;
                                        list = (List) objA;
                                        HorizonSpeakerRepository horizonSpeakerRepository = this.f50170e;
                                        getProductDetailUseCase$run$2.f50172b = null;
                                        getProductDetailUseCase$run$2.f50173c = null;
                                        getProductDetailUseCase$run$2.d = null;
                                        getProductDetailUseCase$run$2.f50174e = product2;
                                        getProductDetailUseCase$run$2.f50175f = str8;
                                        getProductDetailUseCase$run$2.g = null;
                                        getProductDetailUseCase$run$2.f50176h = list;
                                        getProductDetailUseCase$run$2.f50177i = z9;
                                        getProductDetailUseCase$run$2.f50178j = i3;
                                        getProductDetailUseCase$run$2.m = 6;
                                        objB2 = horizonSpeakerRepository.b(connectedObjectsConfig2, getProductDetailUseCase$run$2);
                                        if (objB2 != coroutineSingletons) {
                                            objA = objB2;
                                            list2 = list;
                                            str9 = str8;
                                            list3 = (List) objA;
                                            if ((list3 instanceof Collection) || !list3.isEmpty()) {
                                                it = list3.iterator();
                                                while (true) {
                                                    if (!it.hasNext()) {
                                                        z7 = false;
                                                    } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                                        z7 = true;
                                                    }
                                                }
                                            } else {
                                                z7 = false;
                                            }
                                            list4 = list2;
                                            if ((list4 instanceof Collection) || !list4.isEmpty()) {
                                                it2 = list4.iterator();
                                                while (it2.hasNext()) {
                                                    if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                                    }
                                                }
                                                z8 = false;
                                            } else {
                                                z8 = false;
                                            }
                                            Product productA = Product.a(product2, z8, z7);
                                            Result.Companion companion2 = Result.INSTANCE;
                                            return productA;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return coroutineSingletons;
                case 1:
                    z2 = getProductDetailUseCase$run$2.f50177i;
                    eCommerceStatusA = (ECommerceStatus) getProductDetailUseCase$run$2.f50175f;
                    catalogRepository = (CatalogRepository) getProductDetailUseCase$run$2.f50174e;
                    str3 = getProductDetailUseCase$run$2.d;
                    customizationId2 = getProductDetailUseCase$run$2.f50173c;
                    str4 = getProductDetailUseCase$run$2.f50172b;
                    ResultKt.b(objA);
                    SotToken sotToken = (SotToken) objA;
                    obj = sotToken != null ? sotToken.f66608a : null;
                    str5 = (String) obj;
                    Feature[] featureArr2 = {Feature.AGEC_LAW};
                    getProductDetailUseCase$run$2.f50172b = str4;
                    getProductDetailUseCase$run$2.f50173c = customizationId2;
                    getProductDetailUseCase$run$2.d = str3;
                    getProductDetailUseCase$run$2.f50174e = catalogRepository;
                    getProductDetailUseCase$run$2.f50175f = eCommerceStatusA;
                    getProductDetailUseCase$run$2.g = str5;
                    getProductDetailUseCase$run$2.f50177i = z2;
                    getProductDetailUseCase$run$2.m = 2;
                    objC = this.g.c(featureArr2, false, getProductDetailUseCase$run$2);
                    if (objC != coroutineSingletons) {
                        String str12 = str4;
                        str6 = str5;
                        objA = objC;
                        str7 = str12;
                        CatalogRepository catalogRepository5 = catalogRepository;
                        z3 = z2;
                        catalogRepository2 = catalogRepository5;
                        CustomizationId customizationId4 = customizationId2;
                        String str13 = str3;
                        boolean zBooleanValue2 = ((Boolean) objA).booleanValue();
                        getProductDetailUseCase$run$2.f50172b = null;
                        getProductDetailUseCase$run$2.f50173c = null;
                        getProductDetailUseCase$run$2.d = null;
                        getProductDetailUseCase$run$2.f50174e = null;
                        getProductDetailUseCase$run$2.f50175f = null;
                        getProductDetailUseCase$run$2.g = null;
                        getProductDetailUseCase$run$2.f50177i = z3;
                        getProductDetailUseCase$run$2.m = 3;
                        objB = catalogRepository2.b(str7, z3, customizationId4, str13, str6, zBooleanValue2, getProductDetailUseCase$run$2);
                        if (objB != coroutineSingletons) {
                            z4 = z3;
                            Result.Companion companion3 = Result.INSTANCE;
                            if (!(objB instanceof Result.Failure)) {
                                return objB;
                            }
                            product = (Product) objB;
                            str8 = product.f68011a;
                            RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase2 = this.f50167a;
                            getProductDetailUseCase$run$2.f50172b = null;
                            getProductDetailUseCase$run$2.f50173c = null;
                            getProductDetailUseCase$run$2.d = null;
                            getProductDetailUseCase$run$2.f50174e = product;
                            getProductDetailUseCase$run$2.f50175f = str8;
                            getProductDetailUseCase$run$2.f50177i = z4;
                            getProductDetailUseCase$run$2.f50178j = 0;
                            getProductDetailUseCase$run$2.m = 4;
                            objA = requireCachedConnectedObjectsConfigUseCase2.a(getProductDetailUseCase$run$2);
                            if (objA == coroutineSingletons) {
                                z5 = z4;
                                i2 = 0;
                                connectedObjectsConfig = (ConnectedObjectsConfig) objA;
                                TrunkSpeakerRepository trunkSpeakerRepository2 = this.d;
                                getProductDetailUseCase$run$2.f50172b = null;
                                getProductDetailUseCase$run$2.f50173c = null;
                                getProductDetailUseCase$run$2.d = null;
                                getProductDetailUseCase$run$2.f50174e = product;
                                getProductDetailUseCase$run$2.f50175f = str8;
                                getProductDetailUseCase$run$2.g = connectedObjectsConfig;
                                getProductDetailUseCase$run$2.f50177i = z5;
                                getProductDetailUseCase$run$2.f50178j = i2;
                                getProductDetailUseCase$run$2.m = 5;
                                objD = trunkSpeakerRepository2.d(connectedObjectsConfig);
                                if (objD != coroutineSingletons) {
                                    connectedObjectsConfig2 = connectedObjectsConfig;
                                    objA = objD;
                                    z6 = z5;
                                    i3 = i2;
                                    product2 = product;
                                    boolean z10 = z6;
                                    list = (List) objA;
                                    HorizonSpeakerRepository horizonSpeakerRepository2 = this.f50170e;
                                    getProductDetailUseCase$run$2.f50172b = null;
                                    getProductDetailUseCase$run$2.f50173c = null;
                                    getProductDetailUseCase$run$2.d = null;
                                    getProductDetailUseCase$run$2.f50174e = product2;
                                    getProductDetailUseCase$run$2.f50175f = str8;
                                    getProductDetailUseCase$run$2.g = null;
                                    getProductDetailUseCase$run$2.f50176h = list;
                                    getProductDetailUseCase$run$2.f50177i = z10;
                                    getProductDetailUseCase$run$2.f50178j = i3;
                                    getProductDetailUseCase$run$2.m = 6;
                                    objB2 = horizonSpeakerRepository2.b(connectedObjectsConfig2, getProductDetailUseCase$run$2);
                                    if (objB2 != coroutineSingletons) {
                                        objA = objB2;
                                        list2 = list;
                                        str9 = str8;
                                        list3 = (List) objA;
                                        if (list3 instanceof Collection) {
                                            it = list3.iterator();
                                            while (true) {
                                                if (!it.hasNext()) {
                                                    z7 = false;
                                                } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                                    z7 = true;
                                                }
                                            }
                                        } else {
                                            it = list3.iterator();
                                            while (true) {
                                                if (!it.hasNext()) {
                                                    z7 = false;
                                                } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                                    z7 = true;
                                                }
                                            }
                                        }
                                        list4 = list2;
                                        if (list4 instanceof Collection) {
                                            it2 = list4.iterator();
                                            while (it2.hasNext()) {
                                                if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                                }
                                            }
                                            z8 = false;
                                        } else {
                                            it2 = list4.iterator();
                                            while (it2.hasNext()) {
                                                if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                                }
                                            }
                                            z8 = false;
                                        }
                                        Product productA2 = Product.a(product2, z8, z7);
                                        Result.Companion companion4 = Result.INSTANCE;
                                        return productA2;
                                    }
                                }
                            }
                        }
                    }
                    return coroutineSingletons;
                case 2:
                    boolean z11 = getProductDetailUseCase$run$2.f50177i;
                    String str14 = (String) getProductDetailUseCase$run$2.g;
                    CatalogRepository catalogRepository6 = (CatalogRepository) getProductDetailUseCase$run$2.f50174e;
                    str3 = getProductDetailUseCase$run$2.d;
                    customizationId2 = getProductDetailUseCase$run$2.f50173c;
                    String str15 = getProductDetailUseCase$run$2.f50172b;
                    ResultKt.b(objA);
                    z3 = z11;
                    catalogRepository2 = catalogRepository6;
                    str6 = str14;
                    str7 = str15;
                    CustomizationId customizationId5 = customizationId2;
                    String str16 = str3;
                    boolean zBooleanValue3 = ((Boolean) objA).booleanValue();
                    getProductDetailUseCase$run$2.f50172b = null;
                    getProductDetailUseCase$run$2.f50173c = null;
                    getProductDetailUseCase$run$2.d = null;
                    getProductDetailUseCase$run$2.f50174e = null;
                    getProductDetailUseCase$run$2.f50175f = null;
                    getProductDetailUseCase$run$2.g = null;
                    getProductDetailUseCase$run$2.f50177i = z3;
                    getProductDetailUseCase$run$2.m = 3;
                    objB = catalogRepository2.b(str7, z3, customizationId5, str16, str6, zBooleanValue3, getProductDetailUseCase$run$2);
                    if (objB != coroutineSingletons) {
                        z4 = z3;
                        Result.Companion companion5 = Result.INSTANCE;
                        if (!(objB instanceof Result.Failure)) {
                            return objB;
                        }
                        product = (Product) objB;
                        str8 = product.f68011a;
                        RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase3 = this.f50167a;
                        getProductDetailUseCase$run$2.f50172b = null;
                        getProductDetailUseCase$run$2.f50173c = null;
                        getProductDetailUseCase$run$2.d = null;
                        getProductDetailUseCase$run$2.f50174e = product;
                        getProductDetailUseCase$run$2.f50175f = str8;
                        getProductDetailUseCase$run$2.f50177i = z4;
                        getProductDetailUseCase$run$2.f50178j = 0;
                        getProductDetailUseCase$run$2.m = 4;
                        objA = requireCachedConnectedObjectsConfigUseCase3.a(getProductDetailUseCase$run$2);
                        if (objA == coroutineSingletons) {
                            z5 = z4;
                            i2 = 0;
                            connectedObjectsConfig = (ConnectedObjectsConfig) objA;
                            TrunkSpeakerRepository trunkSpeakerRepository3 = this.d;
                            getProductDetailUseCase$run$2.f50172b = null;
                            getProductDetailUseCase$run$2.f50173c = null;
                            getProductDetailUseCase$run$2.d = null;
                            getProductDetailUseCase$run$2.f50174e = product;
                            getProductDetailUseCase$run$2.f50175f = str8;
                            getProductDetailUseCase$run$2.g = connectedObjectsConfig;
                            getProductDetailUseCase$run$2.f50177i = z5;
                            getProductDetailUseCase$run$2.f50178j = i2;
                            getProductDetailUseCase$run$2.m = 5;
                            objD = trunkSpeakerRepository3.d(connectedObjectsConfig);
                            if (objD != coroutineSingletons) {
                                connectedObjectsConfig2 = connectedObjectsConfig;
                                objA = objD;
                                z6 = z5;
                                i3 = i2;
                                product2 = product;
                                boolean z12 = z6;
                                list = (List) objA;
                                HorizonSpeakerRepository horizonSpeakerRepository3 = this.f50170e;
                                getProductDetailUseCase$run$2.f50172b = null;
                                getProductDetailUseCase$run$2.f50173c = null;
                                getProductDetailUseCase$run$2.d = null;
                                getProductDetailUseCase$run$2.f50174e = product2;
                                getProductDetailUseCase$run$2.f50175f = str8;
                                getProductDetailUseCase$run$2.g = null;
                                getProductDetailUseCase$run$2.f50176h = list;
                                getProductDetailUseCase$run$2.f50177i = z12;
                                getProductDetailUseCase$run$2.f50178j = i3;
                                getProductDetailUseCase$run$2.m = 6;
                                objB2 = horizonSpeakerRepository3.b(connectedObjectsConfig2, getProductDetailUseCase$run$2);
                                if (objB2 != coroutineSingletons) {
                                    objA = objB2;
                                    list2 = list;
                                    str9 = str8;
                                    list3 = (List) objA;
                                    if (list3 instanceof Collection) {
                                        it = list3.iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                z7 = false;
                                            } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                                z7 = true;
                                            }
                                        }
                                    } else {
                                        it = list3.iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                z7 = false;
                                            } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                                z7 = true;
                                            }
                                        }
                                    }
                                    list4 = list2;
                                    if (list4 instanceof Collection) {
                                        it2 = list4.iterator();
                                        while (it2.hasNext()) {
                                            if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                            }
                                        }
                                        z8 = false;
                                    } else {
                                        it2 = list4.iterator();
                                        while (it2.hasNext()) {
                                            if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                            }
                                        }
                                        z8 = false;
                                    }
                                    Product productA3 = Product.a(product2, z8, z7);
                                    Result.Companion companion6 = Result.INSTANCE;
                                    return productA3;
                                }
                            }
                        }
                    }
                    return coroutineSingletons;
                case 3:
                    z4 = getProductDetailUseCase$run$2.f50177i;
                    ResultKt.b(objA);
                    objB = ((Result) objA).f71708b;
                    Result.Companion companion7 = Result.INSTANCE;
                    if (!(objB instanceof Result.Failure)) {
                        return objB;
                    }
                    product = (Product) objB;
                    str8 = product.f68011a;
                    RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase4 = this.f50167a;
                    getProductDetailUseCase$run$2.f50172b = null;
                    getProductDetailUseCase$run$2.f50173c = null;
                    getProductDetailUseCase$run$2.d = null;
                    getProductDetailUseCase$run$2.f50174e = product;
                    getProductDetailUseCase$run$2.f50175f = str8;
                    getProductDetailUseCase$run$2.f50177i = z4;
                    getProductDetailUseCase$run$2.f50178j = 0;
                    getProductDetailUseCase$run$2.m = 4;
                    objA = requireCachedConnectedObjectsConfigUseCase4.a(getProductDetailUseCase$run$2);
                    if (objA == coroutineSingletons) {
                        z5 = z4;
                        i2 = 0;
                        connectedObjectsConfig = (ConnectedObjectsConfig) objA;
                        TrunkSpeakerRepository trunkSpeakerRepository4 = this.d;
                        getProductDetailUseCase$run$2.f50172b = null;
                        getProductDetailUseCase$run$2.f50173c = null;
                        getProductDetailUseCase$run$2.d = null;
                        getProductDetailUseCase$run$2.f50174e = product;
                        getProductDetailUseCase$run$2.f50175f = str8;
                        getProductDetailUseCase$run$2.g = connectedObjectsConfig;
                        getProductDetailUseCase$run$2.f50177i = z5;
                        getProductDetailUseCase$run$2.f50178j = i2;
                        getProductDetailUseCase$run$2.m = 5;
                        objD = trunkSpeakerRepository4.d(connectedObjectsConfig);
                        if (objD != coroutineSingletons) {
                            connectedObjectsConfig2 = connectedObjectsConfig;
                            objA = objD;
                            z6 = z5;
                            i3 = i2;
                            product2 = product;
                            boolean z13 = z6;
                            list = (List) objA;
                            HorizonSpeakerRepository horizonSpeakerRepository4 = this.f50170e;
                            getProductDetailUseCase$run$2.f50172b = null;
                            getProductDetailUseCase$run$2.f50173c = null;
                            getProductDetailUseCase$run$2.d = null;
                            getProductDetailUseCase$run$2.f50174e = product2;
                            getProductDetailUseCase$run$2.f50175f = str8;
                            getProductDetailUseCase$run$2.g = null;
                            getProductDetailUseCase$run$2.f50176h = list;
                            getProductDetailUseCase$run$2.f50177i = z13;
                            getProductDetailUseCase$run$2.f50178j = i3;
                            getProductDetailUseCase$run$2.m = 6;
                            objB2 = horizonSpeakerRepository4.b(connectedObjectsConfig2, getProductDetailUseCase$run$2);
                            if (objB2 != coroutineSingletons) {
                                objA = objB2;
                                list2 = list;
                                str9 = str8;
                                list3 = (List) objA;
                                if (list3 instanceof Collection) {
                                    it = list3.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            z7 = false;
                                        } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                            z7 = true;
                                        }
                                    }
                                } else {
                                    it = list3.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            z7 = false;
                                        } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                            z7 = true;
                                        }
                                    }
                                }
                                list4 = list2;
                                if (list4 instanceof Collection) {
                                    it2 = list4.iterator();
                                    while (it2.hasNext()) {
                                        if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                        }
                                    }
                                    z8 = false;
                                } else {
                                    it2 = list4.iterator();
                                    while (it2.hasNext()) {
                                        if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                        }
                                    }
                                    z8 = false;
                                }
                                Product productA4 = Product.a(product2, z8, z7);
                                Result.Companion companion8 = Result.INSTANCE;
                                return productA4;
                            }
                        }
                    }
                    return coroutineSingletons;
                case 4:
                    i2 = getProductDetailUseCase$run$2.f50178j;
                    z5 = getProductDetailUseCase$run$2.f50177i;
                    str8 = (String) getProductDetailUseCase$run$2.f50175f;
                    product = (Product) getProductDetailUseCase$run$2.f50174e;
                    ResultKt.b(objA);
                    connectedObjectsConfig = (ConnectedObjectsConfig) objA;
                    TrunkSpeakerRepository trunkSpeakerRepository5 = this.d;
                    getProductDetailUseCase$run$2.f50172b = null;
                    getProductDetailUseCase$run$2.f50173c = null;
                    getProductDetailUseCase$run$2.d = null;
                    getProductDetailUseCase$run$2.f50174e = product;
                    getProductDetailUseCase$run$2.f50175f = str8;
                    getProductDetailUseCase$run$2.g = connectedObjectsConfig;
                    getProductDetailUseCase$run$2.f50177i = z5;
                    getProductDetailUseCase$run$2.f50178j = i2;
                    getProductDetailUseCase$run$2.m = 5;
                    objD = trunkSpeakerRepository5.d(connectedObjectsConfig);
                    if (objD != coroutineSingletons) {
                        connectedObjectsConfig2 = connectedObjectsConfig;
                        objA = objD;
                        z6 = z5;
                        i3 = i2;
                        product2 = product;
                        boolean z14 = z6;
                        list = (List) objA;
                        HorizonSpeakerRepository horizonSpeakerRepository5 = this.f50170e;
                        getProductDetailUseCase$run$2.f50172b = null;
                        getProductDetailUseCase$run$2.f50173c = null;
                        getProductDetailUseCase$run$2.d = null;
                        getProductDetailUseCase$run$2.f50174e = product2;
                        getProductDetailUseCase$run$2.f50175f = str8;
                        getProductDetailUseCase$run$2.g = null;
                        getProductDetailUseCase$run$2.f50176h = list;
                        getProductDetailUseCase$run$2.f50177i = z14;
                        getProductDetailUseCase$run$2.f50178j = i3;
                        getProductDetailUseCase$run$2.m = 6;
                        objB2 = horizonSpeakerRepository5.b(connectedObjectsConfig2, getProductDetailUseCase$run$2);
                        if (objB2 != coroutineSingletons) {
                            objA = objB2;
                            list2 = list;
                            str9 = str8;
                            list3 = (List) objA;
                            if (list3 instanceof Collection) {
                                it = list3.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        z7 = false;
                                    } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                        z7 = true;
                                    }
                                }
                            } else {
                                it = list3.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        z7 = false;
                                    } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                        z7 = true;
                                    }
                                }
                            }
                            list4 = list2;
                            if (list4 instanceof Collection) {
                                it2 = list4.iterator();
                                while (it2.hasNext()) {
                                    if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                    }
                                }
                                z8 = false;
                            } else {
                                it2 = list4.iterator();
                                while (it2.hasNext()) {
                                    if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                    }
                                }
                                z8 = false;
                            }
                            Product productA5 = Product.a(product2, z8, z7);
                            Result.Companion companion9 = Result.INSTANCE;
                            return productA5;
                        }
                    }
                    return coroutineSingletons;
                case 5:
                    int i5 = getProductDetailUseCase$run$2.f50178j;
                    boolean z15 = getProductDetailUseCase$run$2.f50177i;
                    ConnectedObjectsConfig connectedObjectsConfig3 = (ConnectedObjectsConfig) getProductDetailUseCase$run$2.g;
                    String str17 = (String) getProductDetailUseCase$run$2.f50175f;
                    Product product3 = (Product) getProductDetailUseCase$run$2.f50174e;
                    ResultKt.b(objA);
                    z6 = z15;
                    i3 = i5;
                    product2 = product3;
                    connectedObjectsConfig2 = connectedObjectsConfig3;
                    str8 = str17;
                    boolean z16 = z6;
                    list = (List) objA;
                    HorizonSpeakerRepository horizonSpeakerRepository6 = this.f50170e;
                    getProductDetailUseCase$run$2.f50172b = null;
                    getProductDetailUseCase$run$2.f50173c = null;
                    getProductDetailUseCase$run$2.d = null;
                    getProductDetailUseCase$run$2.f50174e = product2;
                    getProductDetailUseCase$run$2.f50175f = str8;
                    getProductDetailUseCase$run$2.g = null;
                    getProductDetailUseCase$run$2.f50176h = list;
                    getProductDetailUseCase$run$2.f50177i = z16;
                    getProductDetailUseCase$run$2.f50178j = i3;
                    getProductDetailUseCase$run$2.m = 6;
                    objB2 = horizonSpeakerRepository6.b(connectedObjectsConfig2, getProductDetailUseCase$run$2);
                    if (objB2 != coroutineSingletons) {
                        objA = objB2;
                        list2 = list;
                        str9 = str8;
                        list3 = (List) objA;
                        if (list3 instanceof Collection) {
                            it = list3.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z7 = false;
                                } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                    z7 = true;
                                }
                            }
                        } else {
                            it = list3.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z7 = false;
                                } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                    z7 = true;
                                }
                            }
                        }
                        list4 = list2;
                        if (list4 instanceof Collection) {
                            it2 = list4.iterator();
                            while (it2.hasNext()) {
                                if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                }
                            }
                            z8 = false;
                        } else {
                            it2 = list4.iterator();
                            while (it2.hasNext()) {
                                if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                                }
                            }
                            z8 = false;
                        }
                        Product productA6 = Product.a(product2, z8, z7);
                        Result.Companion companion10 = Result.INSTANCE;
                        return productA6;
                    }
                    return coroutineSingletons;
                case 6:
                    list2 = getProductDetailUseCase$run$2.f50176h;
                    str9 = (String) getProductDetailUseCase$run$2.f50175f;
                    product2 = (Product) getProductDetailUseCase$run$2.f50174e;
                    ResultKt.b(objA);
                    list3 = (List) objA;
                    if (list3 instanceof Collection) {
                        it = list3.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z7 = false;
                            } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                z7 = true;
                            }
                        }
                    } else {
                        it = list3.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z7 = false;
                            } else if (Intrinsics.c(((SkuId) it.next()).f67933a, str9)) {
                                z7 = true;
                            }
                        }
                    }
                    list4 = list2;
                    if (list4 instanceof Collection) {
                        it2 = list4.iterator();
                        while (it2.hasNext()) {
                            if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                            }
                        }
                        z8 = false;
                    } else {
                        it2 = list4.iterator();
                        while (it2.hasNext()) {
                            if (Intrinsics.c(((SkuId) it2.next()).f67933a, str9)) {
                            }
                        }
                        z8 = false;
                    }
                    Product productA7 = Product.a(product2, z8, z7);
                    Result.Companion companion11 = Result.INSTANCE;
                    return productA7;
                default:
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
            }
        } catch (Throwable th) {
            Result.Companion companion12 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
