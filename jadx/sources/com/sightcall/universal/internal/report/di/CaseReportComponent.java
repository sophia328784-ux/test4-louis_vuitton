package com.sightcall.universal.internal.report.di;

import com.sightcall.universal.internal.report.CaseReportRepository;
import dagger.Component;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Component
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/report/di/CaseReportComponent;", "", "caseReportRepository", "Lcom/sightcall/universal/internal/report/CaseReportRepository;", "getCaseReportRepository", "()Lcom/sightcall/universal/internal/report/CaseReportRepository;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@CaseReportScope
public interface CaseReportComponent {
    CaseReportRepository getCaseReportRepository();
}
