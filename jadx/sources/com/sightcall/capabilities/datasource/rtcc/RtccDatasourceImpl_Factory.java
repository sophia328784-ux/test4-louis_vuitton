package com.sightcall.capabilities.datasource.rtcc;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes3.dex */
public final class RtccDatasourceImpl_Factory implements Factory<RtccDatasourceImpl> {

    public static final class InstanceHolder {
        static final RtccDatasourceImpl_Factory INSTANCE = new RtccDatasourceImpl_Factory();

        private InstanceHolder() {
        }
    }

    public static RtccDatasourceImpl_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static RtccDatasourceImpl newInstance() {
        return new RtccDatasourceImpl();
    }

    @Override // javax.inject.Provider
    public RtccDatasourceImpl get() {
        return newInstance();
    }
}
