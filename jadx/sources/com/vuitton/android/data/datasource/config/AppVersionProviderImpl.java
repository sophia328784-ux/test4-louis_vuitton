package com.vuitton.android.data.datasource.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.AppVersionProvider;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AppVersionProviderImpl;", "Lcom/vuitton/android/domain/repository/AppVersionProvider;", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppVersionProviderImpl implements AppVersionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BuildConfigProvider f44018a;

    @Inject
    public AppVersionProviderImpl(BuildConfigProvider buildConfigProvider) {
        buildConfigProvider.getClass();
        this.f44018a = buildConfigProvider;
    }

    @Override // com.vuitton.android.domain.repository.AppVersionProvider
    public final int a() {
        this.f44018a.getClass();
        return 672;
    }
}
