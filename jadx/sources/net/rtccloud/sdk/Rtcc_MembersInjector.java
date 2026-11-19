package net.rtccloud.sdk;

import com.sightcall.analytics.AnalyticsRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class Rtcc_MembersInjector implements MembersInjector<Rtcc> {
    private final Provider<AnalyticsRepository> analyticsRepositoryProvider;

    private Rtcc_MembersInjector(Provider<AnalyticsRepository> provider) {
        this.analyticsRepositoryProvider = provider;
    }

    public static MembersInjector<Rtcc> create(Provider<AnalyticsRepository> provider) {
        return new Rtcc_MembersInjector(provider);
    }

    public static void injectAnalyticsRepository(Rtcc rtcc, AnalyticsRepository analyticsRepository) {
        rtcc.analyticsRepository = analyticsRepository;
    }

    public void injectMembers(Rtcc rtcc) {
        injectAnalyticsRepository(rtcc, (AnalyticsRepository) this.analyticsRepositoryProvider.get());
    }
}
