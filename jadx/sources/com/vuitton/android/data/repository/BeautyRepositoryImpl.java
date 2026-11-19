package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.pdp.BeautyLocalDataSource;
import com.vuitton.android.domain.repository.BeautyRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;", "Lcom/vuitton/android/domain/repository/BeautyRepository;", "Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;", "beautyLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeautyRepositoryImpl implements BeautyRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BeautyLocalDataSource f47384a;

    @Inject
    public BeautyRepositoryImpl(BeautyLocalDataSource beautyLocalDataSource) {
        beautyLocalDataSource.getClass();
        this.f47384a = beautyLocalDataSource;
    }

    @Override // com.vuitton.android.domain.repository.BeautyRepository
    public final boolean a() {
        return this.f47384a.f44221a;
    }

    @Override // com.vuitton.android.domain.repository.BeautyRepository
    public final void b() {
        this.f47384a.f44221a = true;
    }
}
