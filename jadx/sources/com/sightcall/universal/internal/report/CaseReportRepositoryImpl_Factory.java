package com.sightcall.universal.internal.report;

import com.sightcall.universal.internal.report.data.CaseReportDataSource;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CaseReportRepositoryImpl_Factory implements Factory<CaseReportRepositoryImpl> {
    private final Provider<CaseReportDataSource> caseReportDataSourceProvider;

    private CaseReportRepositoryImpl_Factory(Provider<CaseReportDataSource> provider) {
        this.caseReportDataSourceProvider = provider;
    }

    public static CaseReportRepositoryImpl_Factory create(Provider<CaseReportDataSource> provider) {
        return new CaseReportRepositoryImpl_Factory(provider);
    }

    public static CaseReportRepositoryImpl newInstance(CaseReportDataSource caseReportDataSource) {
        return new CaseReportRepositoryImpl(caseReportDataSource);
    }

    @Override // javax.inject.Provider
    public CaseReportRepositoryImpl get() {
        return newInstance((CaseReportDataSource) this.caseReportDataSourceProvider.get());
    }
}
