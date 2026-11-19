package com.sightcall.universal.internal.report.di;

import com.sightcall.core.InitSightcallKt;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0011\u0010\u0003\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"caseReportComponentReference", "Ljava/lang/ref/WeakReference;", "Lcom/sightcall/universal/internal/report/di/CaseReportComponent;", "caseReportComponent", "getCaseReportComponent", "()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CaseReportComponentKt {
    private static WeakReference<CaseReportComponent> caseReportComponentReference = new WeakReference<>(null);

    public static final CaseReportComponent getCaseReportComponent() {
        CaseReportComponent caseReportComponent = caseReportComponentReference.get();
        if (caseReportComponent != null) {
            return caseReportComponent;
        }
        CaseReportComponent caseReportComponentBuild = DaggerCaseReportComponent.builder().sightCallComponent(InitSightcallKt.getSightCallComponent()).build();
        caseReportComponentReference = new WeakReference<>(caseReportComponentBuild);
        caseReportComponentBuild.getClass();
        return caseReportComponentBuild;
    }
}
