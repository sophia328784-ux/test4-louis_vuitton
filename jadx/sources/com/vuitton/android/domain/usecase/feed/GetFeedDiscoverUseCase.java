package com.vuitton.android.domain.usecase.feed;

import com.vuitton.android.domain.repository.FeedRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.exclusivesales.GetUserExclusiveSalesUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;", "", "Lcom/vuitton/android/domain/repository/FeedRepository;", "feedRepository", "Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;", "updateFeedWithLiveEventDataUseCase", "Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;", "getUserExclusiveSalesUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/FeedRepository;Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetFeedDiscoverUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FeedRepository f50000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UpdateFeedWithLiveEventDataUseCase f50001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetUserExclusiveSalesUseCase f50002c;
    public final IsFeatureAvailableUseCase d;

    @Inject
    public GetFeedDiscoverUseCase(FeedRepository feedRepository, UpdateFeedWithLiveEventDataUseCase updateFeedWithLiveEventDataUseCase, GetUserExclusiveSalesUseCase getUserExclusiveSalesUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        feedRepository.getClass();
        updateFeedWithLiveEventDataUseCase.getClass();
        getUserExclusiveSalesUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f50000a = feedRepository;
        this.f50001b = updateFeedWithLiveEventDataUseCase;
        this.f50002c = getUserExclusiveSalesUseCase;
        this.d = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0129  */
    /* JADX WARN: Code duplicated, block: B:68:0x0132  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c9, code lost:
    
        if (r12 == r1) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.common.Coordinates r9, boolean r10, boolean r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.feed.GetFeedDiscoverUseCase.a(com.vuitton.foundation.model.domain.model.common.Coordinates, boolean, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
