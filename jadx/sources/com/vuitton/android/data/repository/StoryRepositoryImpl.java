package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.StoryApi;
import com.vuitton.android.domain.repository.StoryRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/StoryRepositoryImpl;", "Lcom/vuitton/android/domain/repository/StoryRepository;", "Lcom/vuitton/android/data/api/bff/publication/StoryApi;", "storyApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/StoryApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoryRepositoryImpl implements StoryRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoryApi f48050a;

    @Inject
    public StoryRepositoryImpl(StoryApi storyApi) {
        storyApi.getClass();
        this.f48050a = storyApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.StoryRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        StoryRepositoryImpl$getStory$1 storyRepositoryImpl$getStory$1;
        if (continuationImpl instanceof StoryRepositoryImpl$getStory$1) {
            storyRepositoryImpl$getStory$1 = (StoryRepositoryImpl$getStory$1) continuationImpl;
            int i2 = storyRepositoryImpl$getStory$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                storyRepositoryImpl$getStory$1.d = i2 - Integer.MIN_VALUE;
            } else {
                storyRepositoryImpl$getStory$1 = new StoryRepositoryImpl$getStory$1(this, continuationImpl);
            }
        } else {
            storyRepositoryImpl$getStory$1 = new StoryRepositoryImpl$getStory$1(this, continuationImpl);
        }
        Object objF = storyRepositoryImpl$getStory$1.f48051b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = storyRepositoryImpl$getStory$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            StoryRepositoryImpl$getStory$2 storyRepositoryImpl$getStory$2 = new StoryRepositoryImpl$getStory$2(this, str, null);
            storyRepositoryImpl$getStory$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, storyRepositoryImpl$getStory$2, storyRepositoryImpl$getStory$1);
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
        return ((Result) objF).f71708b;
    }
}
