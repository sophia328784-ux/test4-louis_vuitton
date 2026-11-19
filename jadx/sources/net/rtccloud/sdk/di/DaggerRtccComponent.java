package net.rtccloud.sdk.di;

import com.sightcall.analytics.AnalyticsRepositoryImpl;
import com.sightcall.analytics.datasource.analyticsupload.AnalyticsUploadDatasourceImpl;
import com.sightcall.analytics.di.AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;
import com.sightcall.core.di.SightCallComponent;
import dagger.internal.Preconditions;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.Rtcc_MembersInjector;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerRtccComponent {

    /* JADX INFO: loaded from: classes3.dex */
    public static final class RtccComponentImpl implements RtccComponent {
        private final RtccComponentImpl rtccComponentImpl = this;

        public RtccComponentImpl(SightCallComponent sightCallComponent) {
        }

        private Rtcc injectRtcc(Rtcc rtcc) {
            Rtcc_MembersInjector.injectAnalyticsRepository(rtcc, analyticsRepositoryImpl());
            return rtcc;
        }

        public AnalyticsRepositoryImpl analyticsRepositoryImpl() {
            return new AnalyticsRepositoryImpl(analyticsUploadDatasourceImpl());
        }

        public AnalyticsUploadDatasourceImpl analyticsUploadDatasourceImpl() {
            return new AnalyticsUploadDatasourceImpl(AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory.provideAnalyticsUploadApi$analytics_release());
        }

        @Override // net.rtccloud.sdk.di.RtccComponent
        public void inject(Rtcc rtcc) {
            injectRtcc(rtcc);
        }
    }

    private DaggerRtccComponent() {
    }

    public static Builder builder() {
        return new Builder(0);
    }

    public static final class Builder {
        private SightCallComponent sightCallComponent;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        public RtccComponent build() {
            Preconditions.a(SightCallComponent.class, this.sightCallComponent);
            return new RtccComponentImpl(this.sightCallComponent);
        }

        public Builder sightCallComponent(SightCallComponent sightCallComponent) {
            sightCallComponent.getClass();
            this.sightCallComponent = sightCallComponent;
            return this;
        }

        private Builder() {
        }
    }
}
