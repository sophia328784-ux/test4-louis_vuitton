package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import com.vuitton.android.domain.repository.DeviceIdRepository;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/DeviceIdRepositoryImpl;", "Lcom/vuitton/android/domain/repository/DeviceIdRepository;", "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;", "deviceIdLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeviceIdRepositoryImpl implements DeviceIdRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeviceIdLocalDataSource f47646a;

    @Inject
    public DeviceIdRepositoryImpl(DeviceIdLocalDataSource deviceIdLocalDataSource) {
        deviceIdLocalDataSource.getClass();
        this.f47646a = deviceIdLocalDataSource;
    }

    @Override // com.vuitton.android.domain.repository.DeviceIdRepository
    public final Object a(Continuation continuation) {
        return this.f47646a.a((ContinuationImpl) continuation);
    }
}
