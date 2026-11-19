package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.inappbanner.InAppBannerMemCacheDataSource;
import com.vuitton.android.domain.repository.InAppBannerRepository;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;", "Lcom/vuitton/android/domain/repository/InAppBannerRepository;", "Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;", "inAppBannerMemCacheDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InAppBannerRepositoryImpl implements InAppBannerRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppBannerMemCacheDataSource f47727a;

    @Inject
    public InAppBannerRepositoryImpl(InAppBannerMemCacheDataSource inAppBannerMemCacheDataSource) {
        inAppBannerMemCacheDataSource.getClass();
        this.f47727a = inAppBannerMemCacheDataSource;
    }

    @Override // com.vuitton.android.domain.repository.InAppBannerRepository
    public final Flow a() {
        return this.f47727a.f44123c;
    }

    @Override // com.vuitton.android.domain.repository.InAppBannerRepository
    public final void b(InAppBanner inAppBanner) {
        InAppBannerMemCacheDataSource inAppBannerMemCacheDataSource = this.f47727a;
        synchronized (inAppBannerMemCacheDataSource.f44121a) {
            inAppBannerMemCacheDataSource.f44122b.setValue(inAppBanner);
        }
    }

    @Override // com.vuitton.android.domain.repository.InAppBannerRepository
    public final void clear() {
        this.f47727a.a();
    }
}
