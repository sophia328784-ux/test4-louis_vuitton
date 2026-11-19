package com.sightcall.universal.internal.report.di;

import com.sightcall.universal.internal.report.CaseReportRepository;
import com.sightcall.universal.internal.report.CaseReportRepositoryImpl;
import com.sightcall.universal.internal.report.data.CaseReportDataSource;
import com.sightcall.universal.internal.report.data.CaseReportDataSourceImpl;
import dagger.Binds;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH!¢\u0006\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/universal/internal/report/di/CaseReportDataModule;", "", "<init>", "()V", "provideCaseReportDataSource", "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;", "caseReportDataSourceImpl", "Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;", "provideCaseReportDataSource$sdk_installedRelease", "provideCaseReportRepository", "Lcom/sightcall/universal/internal/report/CaseReportRepository;", "caseReportRepositoryImpl", "Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;", "provideCaseReportRepository$sdk_installedRelease", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public abstract class CaseReportDataModule {
    @Binds
    public abstract CaseReportDataSource provideCaseReportDataSource$sdk_installedRelease(CaseReportDataSourceImpl caseReportDataSourceImpl);

    @Binds
    public abstract CaseReportRepository provideCaseReportRepository$sdk_installedRelease(CaseReportRepositoryImpl caseReportRepositoryImpl);
}
