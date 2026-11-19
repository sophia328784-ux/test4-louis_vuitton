package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.hotcontent.HotContentLocalDataSource;
import com.vuitton.android.domain.repository.HotContentRepository;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/HotContentRepositoryImpl;", "Lcom/vuitton/android/domain/repository/HotContentRepository;", "Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;", "hotContentLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HotContentRepositoryImpl implements HotContentRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HotContentLocalDataSource f47723a;

    @Inject
    public HotContentRepositoryImpl(HotContentLocalDataSource hotContentLocalDataSource) {
        hotContentLocalDataSource.getClass();
        this.f47723a = hotContentLocalDataSource;
    }

    @Override // com.vuitton.android.domain.repository.HotContentRepository
    public final List a() {
        return this.f47723a.f44120a;
    }

    @Override // com.vuitton.android.domain.repository.HotContentRepository
    public final void b(List list) {
        list.getClass();
        HotContentLocalDataSource hotContentLocalDataSource = this.f47723a;
        hotContentLocalDataSource.getClass();
        list.getClass();
        hotContentLocalDataSource.f44120a = list;
    }
}
