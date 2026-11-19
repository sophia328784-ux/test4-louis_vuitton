package com.vuitton.android.data.datasource.di;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.dispatch.DispatchMemCacheDataSource;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/datasource/di/DataSourceDiModule;", "", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public interface DataSourceDiModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f44074a = Companion.f44075a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f44075a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final DispatchMemCacheDataSource f44076b = new DispatchMemCacheDataSource();
    }
}
