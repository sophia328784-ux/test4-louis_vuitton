package com.vuitton.android.domain.usecase.connectivity;

import com.vuitton.android.domain.repository.EarphoneRepository;
import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import com.vuitton.android.domain.repository.WatchV3Repository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/EarphoneRepository;", "earphoneRepository", "Lcom/vuitton/android/domain/repository/WatchV3Repository;", "watchV3Repository", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "lightUpRepository", "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;", "trunkSpeakerRepository", "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;", "horizonSpeakerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/EarphoneRepository;Lcom/vuitton/android/domain/repository/WatchV3Repository;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetFaqCategoryListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EarphoneRepository f49746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WatchV3Repository f49747c;
    public final LightUpRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TrunkSpeakerRepository f49748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HorizonSpeakerRepository f49749f;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f49750a;

        static {
            int[] iArr = new int[FaqCategoryType.values().length];
            try {
                iArr[FaqCategoryType.EARPHONES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FaqCategoryType.WATCH_V3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FaqCategoryType.LIGHT_UP_KEEP_ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FaqCategoryType.LIGHT_UP_SNEAKERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FaqCategoryType.SPEAKER_TRUNK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FaqCategoryType.SPEAKER_HORIZON.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f49750a = iArr;
        }
    }

    @Inject
    public GetFaqCategoryListUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, EarphoneRepository earphoneRepository, WatchV3Repository watchV3Repository, LightUpRepository lightUpRepository, TrunkSpeakerRepository trunkSpeakerRepository, HorizonSpeakerRepository horizonSpeakerRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        earphoneRepository.getClass();
        watchV3Repository.getClass();
        lightUpRepository.getClass();
        trunkSpeakerRepository.getClass();
        horizonSpeakerRepository.getClass();
        this.f49745a = requireCachedConnectedObjectsConfigUseCase;
        this.f49746b = earphoneRepository;
        this.f49747c = watchV3Repository;
        this.d = lightUpRepository;
        this.f49748e = trunkSpeakerRepository;
        this.f49749f = horizonSpeakerRepository;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0093 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(FaqCategoryType faqCategoryType, ContinuationImpl continuationImpl) {
        GetFaqCategoryListUseCase$run$1 getFaqCategoryListUseCase$run$1;
        if (continuationImpl instanceof GetFaqCategoryListUseCase$run$1) {
            getFaqCategoryListUseCase$run$1 = (GetFaqCategoryListUseCase$run$1) continuationImpl;
            int i2 = getFaqCategoryListUseCase$run$1.f49753e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getFaqCategoryListUseCase$run$1.f49753e = i2 - Integer.MIN_VALUE;
            } else {
                getFaqCategoryListUseCase$run$1 = new GetFaqCategoryListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getFaqCategoryListUseCase$run$1 = new GetFaqCategoryListUseCase$run$1(this, continuationImpl);
        }
        Object objA = getFaqCategoryListUseCase$run$1.f49752c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getFaqCategoryListUseCase$run$1.f49753e;
        if (i3 == 0) {
            ResultKt.b(objA);
            getFaqCategoryListUseCase$run$1.f49751b = faqCategoryType;
            getFaqCategoryListUseCase$run$1.f49753e = 1;
            objA = this.f49745a.a(getFaqCategoryListUseCase$run$1);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objA);
                return objA;
            }
            if (i3 == 3) {
                ResultKt.b(objA);
                return objA;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        faqCategoryType = getFaqCategoryListUseCase$run$1.f49751b;
        ResultKt.b(objA);
        ConnectedObjectsConfig connectedObjectsConfig = (ConnectedObjectsConfig) objA;
        int i4 = WhenMappings.f49750a[faqCategoryType.ordinal()];
        LightUpRepository lightUpRepository = this.d;
        switch (i4) {
            case 1:
                getFaqCategoryListUseCase$run$1.f49751b = null;
                getFaqCategoryListUseCase$run$1.f49753e = 2;
                List listB = this.f49746b.b(connectedObjectsConfig);
                if (listB == coroutineSingletons) {
                    return coroutineSingletons;
                }
                return listB;
            case 2:
                getFaqCategoryListUseCase$run$1.f49751b = null;
                getFaqCategoryListUseCase$run$1.f49753e = 3;
                List listD = this.f49747c.d(connectedObjectsConfig);
                if (listD == coroutineSingletons) {
                    return coroutineSingletons;
                }
                return listD;
            case 3:
                return lightUpRepository.j(connectedObjectsConfig);
            case 4:
                return lightUpRepository.g(connectedObjectsConfig);
            case 5:
                return this.f49748e.a(connectedObjectsConfig);
            case 6:
                return this.f49749f.e(connectedObjectsConfig);
            default:
                v40.g();
                return null;
        }
    }
}
