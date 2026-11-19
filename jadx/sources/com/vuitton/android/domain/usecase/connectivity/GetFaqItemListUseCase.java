package com.vuitton.android.domain.usecase.connectivity;

import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "lightUpRepository", "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;", "trunkSpeakerRepository", "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;", "horizonSpeakerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetFaqItemListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchRepository f49755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LightUpRepository f49756c;
    public final TrunkSpeakerRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HorizonSpeakerRepository f49757e;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f49758a;

        static {
            int[] iArr = new int[FaqType.values().length];
            try {
                iArr[FaqType.WATCH_FAQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FaqType.LIGHT_UP_KEEP_ALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FaqType.LIGHT_UP_SNEAKERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FaqType.TRUNK_SPEAKERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FaqType.HORIZON_SPEAKER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f49758a = iArr;
        }
    }

    @Inject
    public GetFaqItemListUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, WatchRepository watchRepository, LightUpRepository lightUpRepository, TrunkSpeakerRepository trunkSpeakerRepository, HorizonSpeakerRepository horizonSpeakerRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        watchRepository.getClass();
        lightUpRepository.getClass();
        trunkSpeakerRepository.getClass();
        horizonSpeakerRepository.getClass();
        this.f49754a = requireCachedConnectedObjectsConfigUseCase;
        this.f49755b = watchRepository;
        this.f49756c = lightUpRepository;
        this.d = trunkSpeakerRepository;
        this.f49757e = horizonSpeakerRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(FaqType faqType, ContinuationImpl continuationImpl) {
        GetFaqItemListUseCase$run$1 getFaqItemListUseCase$run$1;
        if (continuationImpl instanceof GetFaqItemListUseCase$run$1) {
            getFaqItemListUseCase$run$1 = (GetFaqItemListUseCase$run$1) continuationImpl;
            int i2 = getFaqItemListUseCase$run$1.f49761e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getFaqItemListUseCase$run$1.f49761e = i2 - Integer.MIN_VALUE;
            } else {
                getFaqItemListUseCase$run$1 = new GetFaqItemListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getFaqItemListUseCase$run$1 = new GetFaqItemListUseCase$run$1(this, continuationImpl);
        }
        Object objA = getFaqItemListUseCase$run$1.f49760c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getFaqItemListUseCase$run$1.f49761e;
        if (i3 == 0) {
            ResultKt.b(objA);
            getFaqItemListUseCase$run$1.f49759b = faqType;
            getFaqItemListUseCase$run$1.f49761e = 1;
            objA = this.f49754a.a(getFaqItemListUseCase$run$1);
            if (objA != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objA);
                return objA;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        faqType = getFaqItemListUseCase$run$1.f49759b;
        ResultKt.b(objA);
        ConnectedObjectsConfig connectedObjectsConfig = (ConnectedObjectsConfig) objA;
        int i4 = WhenMappings.f49758a[faqType.ordinal()];
        if (i4 == 1) {
            getFaqItemListUseCase$run$1.f49759b = null;
            getFaqItemListUseCase$run$1.f49761e = 2;
            ArrayList arrayListI = this.f49755b.i(connectedObjectsConfig);
            return arrayListI == coroutineSingletons ? coroutineSingletons : arrayListI;
        }
        LightUpRepository lightUpRepository = this.f49756c;
        if (i4 == 2) {
            return lightUpRepository.b(connectedObjectsConfig);
        }
        if (i4 == 3) {
            return lightUpRepository.h(connectedObjectsConfig);
        }
        if (i4 != 4) {
            return i4 != 5 ? EmptyList.f71768b : this.f49757e.a(connectedObjectsConfig);
        }
        return this.d.b(connectedObjectsConfig);
    }
}
