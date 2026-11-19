package com.sightcall.universal.internal.report.data;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class CaseReportDataSourceImpl_Factory implements Factory<CaseReportDataSourceImpl> {

    public static final class InstanceHolder {
        static final CaseReportDataSourceImpl_Factory INSTANCE = new CaseReportDataSourceImpl_Factory();

        private InstanceHolder() {
        }
    }

    public static CaseReportDataSourceImpl_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CaseReportDataSourceImpl newInstance() {
        return new CaseReportDataSourceImpl();
    }

    @Override // javax.inject.Provider
    public CaseReportDataSourceImpl get() {
        return newInstance();
    }
}
