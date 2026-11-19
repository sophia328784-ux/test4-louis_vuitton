package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao;
import com.vuitton.android.data.connectivity.lightup.LightUpProductEntity;
import com.vuitton.android.data.dto.connectivity.common.mapper.FaqCategoryMapperKt;
import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.HomePageContent;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LightUpSection;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import defpackage.c70;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpRepositoryImpl implements LightUpRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f47770a = LazyKt.b(new c70(17));

    @Inject
    public LightUpRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Object a(LightUpProduct lightUpProduct, Continuation continuation) {
        Object objC = l().c(new LightUpProductEntity(lightUpProduct.f67294a, lightUpProduct.f67295b, lightUpProduct.f67296c, lightUpProduct.d, lightUpProduct.f67298f, lightUpProduct.g, lightUpProduct.f67299h, lightUpProduct.f67297e), continuation);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final ArrayList b(ConnectedObjectsConfig connectedObjectsConfig) {
        connectedObjectsConfig.getClass();
        List listJ = j(connectedObjectsConfig);
        ArrayList arrayList = new ArrayList();
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((FaqCategory) it.next()).d);
        }
        return arrayList;
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Collection c(ConnectedObjectsConfig connectedObjectsConfig) throws Exception {
        List listG = g(connectedObjectsConfig);
        if (listG.isEmpty()) {
            throw new Exception("Connected objects -> Faq missing for sneakers");
        }
        return listG;
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Video d(ConnectedObjectsConfig connectedObjectsConfig) throws Throwable {
        LightUpSection lightUpSection;
        HomePageContent homePageContent;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        FaqVideo faqVideo = (sectionHome == null || (lightUpSection = sectionHome.f67343b) == null || (homePageContent = lightUpSection.d) == null) ? null : homePageContent.f67327a;
        if (faqVideo != null) {
            return new Video(faqVideo.f67316b, faqVideo.f67315a);
        }
        throw new Throwable("Connected objects -> Video is null for light up section");
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Collection e(ConnectedObjectsConfig connectedObjectsConfig) throws Exception {
        List listJ = j(connectedObjectsConfig);
        if (listJ.isEmpty()) {
            throw new Exception("Connected objects -> Faq missing for keep all");
        }
        return listJ;
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Object f(String str, SuspendLambda suspendLambda) {
        Object objD = l().d(str, suspendLambda);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final List g(ConnectedObjectsConfig connectedObjectsConfig) {
        LightUpSection lightUpSection;
        connectedObjectsConfig.getClass();
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        return FaqCategoryMapperKt.b("Connected objects -> Faq missing for sneakers", (sectionHome == null || (lightUpSection = sectionHome.f67343b) == null) ? null : lightUpSection.f67329b);
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final ArrayList h(ConnectedObjectsConfig connectedObjectsConfig) {
        connectedObjectsConfig.getClass();
        List listG = g(connectedObjectsConfig);
        ArrayList arrayList = new ArrayList();
        Iterator it = listG.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((FaqCategory) it.next()).d);
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Serializable i(boolean z, boolean z2, ContinuationImpl continuationImpl) throws Throwable {
        LightUpRepositoryImpl$getLightUpProducts$1 lightUpRepositoryImpl$getLightUpProducts$1;
        if (continuationImpl instanceof LightUpRepositoryImpl$getLightUpProducts$1) {
            lightUpRepositoryImpl$getLightUpProducts$1 = (LightUpRepositoryImpl$getLightUpProducts$1) continuationImpl;
            int i2 = lightUpRepositoryImpl$getLightUpProducts$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lightUpRepositoryImpl$getLightUpProducts$1.d = i2 - Integer.MIN_VALUE;
            } else {
                lightUpRepositoryImpl$getLightUpProducts$1 = new LightUpRepositoryImpl$getLightUpProducts$1(this, continuationImpl);
            }
        } else {
            lightUpRepositoryImpl$getLightUpProducts$1 = new LightUpRepositoryImpl$getLightUpProducts$1(this, continuationImpl);
        }
        Object objF = lightUpRepositoryImpl$getLightUpProducts$1.f47771b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = lightUpRepositoryImpl$getLightUpProducts$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            LightUpRepositoryImpl$getLightUpProducts$2 lightUpRepositoryImpl$getLightUpProducts$2 = new LightUpRepositoryImpl$getLightUpProducts$2(z, z2, this, null);
            lightUpRepositoryImpl$getLightUpProducts$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, lightUpRepositoryImpl$getLightUpProducts$2, lightUpRepositoryImpl$getLightUpProducts$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        List list = (List) objF;
        list.getClass();
        List<LightUpProductEntity> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (LightUpProductEntity lightUpProductEntity : list2) {
            arrayList.add(new LightUpProduct(lightUpProductEntity.f43570a, lightUpProductEntity.f43571b, lightUpProductEntity.f43572c, lightUpProductEntity.d, lightUpProductEntity.f43575h, lightUpProductEntity.f43573e, lightUpProductEntity.f43574f, lightUpProductEntity.g));
        }
        return arrayList;
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final List j(ConnectedObjectsConfig connectedObjectsConfig) {
        LightUpSection lightUpSection;
        connectedObjectsConfig.getClass();
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        return FaqCategoryMapperKt.b("Connected objects -> Faq missing for keep all", (sectionHome == null || (lightUpSection = sectionHome.f67343b) == null) ? null : lightUpSection.f67328a);
    }

    @Override // com.vuitton.android.domain.repository.LightUpRepository
    public final Object k(LightUpProduct lightUpProduct, Continuation continuation) {
        Object objB = l().b(new LightUpProductEntity(lightUpProduct.f67294a, lightUpProduct.f67295b, lightUpProduct.f67296c, lightUpProduct.d, lightUpProduct.f67298f, lightUpProduct.g, lightUpProduct.f67299h, lightUpProduct.f67297e), continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public final LightUpProductDao l() {
        return (LightUpProductDao) this.f47770a.getF71699b();
    }
}
