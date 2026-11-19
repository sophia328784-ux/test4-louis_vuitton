package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.PermissionsRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/PermissionsRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PermissionsRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PermissionsRepositoryImpl implements PermissionsRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f47862a;

    @Inject
    public PermissionsRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.PermissionsRepository
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF47862a() {
        return this.f47862a;
    }

    @Override // com.vuitton.android.domain.repository.PermissionsRepository
    public final void b() {
        this.f47862a = true;
    }
}
