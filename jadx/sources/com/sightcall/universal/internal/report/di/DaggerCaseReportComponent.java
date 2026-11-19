package com.sightcall.universal.internal.report.di;

import com.sightcall.core.di.SightCallComponent;
import com.sightcall.universal.internal.report.CaseReportRepository;
import com.sightcall.universal.internal.report.CaseReportRepositoryImpl;
import com.sightcall.universal.internal.report.data.CaseReportDataSourceImpl;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerCaseReportComponent {

    public static final class CaseReportComponentImpl implements CaseReportComponent {
        private final CaseReportComponentImpl caseReportComponentImpl = this;

        public CaseReportComponentImpl(SightCallComponent sightCallComponent) {
        }

        public CaseReportRepositoryImpl caseReportRepositoryImpl() {
            return new CaseReportRepositoryImpl(new CaseReportDataSourceImpl());
        }

        @Override // com.sightcall.universal.internal.report.di.CaseReportComponent
        public CaseReportRepository getCaseReportRepository() {
            return caseReportRepositoryImpl();
        }
    }

    private DaggerCaseReportComponent() {
    }

    public static Builder builder() {
        return new Builder(0);
    }

    public static final class Builder {
        private SightCallComponent sightCallComponent;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        public CaseReportComponent build() {
            Preconditions.a(SightCallComponent.class, this.sightCallComponent);
            return new CaseReportComponentImpl(this.sightCallComponent);
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
