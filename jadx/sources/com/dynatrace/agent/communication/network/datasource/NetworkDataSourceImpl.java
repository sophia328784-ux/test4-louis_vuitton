package com.dynatrace.agent.communication.network.datasource;

import com.dynatrace.agent.common.connectivity.NetworkConnectivityChecker;
import com.dynatrace.agent.communication.network.request.ConfigRequestFactory;
import com.dynatrace.agent.communication.network.request.DataRequestFactory;
import com.dynatrace.agent.communication.network.response.ConfigurationsParser;
import com.dynatrace.agent.communication.network.response.ResponseResult;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import okhttp3.Call;
import okhttp3.Request;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;", "Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;", "Lokhttp3/Call$Factory;", "client", "Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;", "configRequestFactory", "Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;", "dataRequestFactory", "Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;", "configurationsParser", "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;", "connectivityChecker", "<init>", "(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NetworkDataSourceImpl implements NetworkDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Call.Factory f26640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigRequestFactory f26641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataRequestFactory f26642c;
    public final ConfigurationsParser d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NetworkConnectivityChecker f26643e;

    public NetworkDataSourceImpl(Call.Factory factory, ConfigRequestFactory configRequestFactory, DataRequestFactory dataRequestFactory, ConfigurationsParser configurationsParser, NetworkConnectivityChecker networkConnectivityChecker) {
        factory.getClass();
        configRequestFactory.getClass();
        dataRequestFactory.getClass();
        configurationsParser.getClass();
        networkConnectivityChecker.getClass();
        this.f26640a = factory;
        this.f26641b = configRequestFactory;
        this.f26642c = dataRequestFactory;
        this.d = configurationsParser;
        this.f26643e = networkConnectivityChecker;
    }

    @Override // com.dynatrace.agent.communication.network.datasource.NetworkDataSource
    public final ResponseResult a(ConfigRequest configRequest) {
        try {
            if (!this.f26643e.b().f26507a) {
                Utility.b("config request failed: no connectivity");
                return new ResponseResult.RetryExecution("No internet connection");
            }
            Call.Factory factory = this.f26640a;
            Request requestA = this.f26641b.a(configRequest);
            Utility.b("config request: " + requestA);
            return c(factory.a(requestA).execute(), configRequest.f26633b, configRequest.f26632a);
        } catch (Exception e2) {
            e2.toString();
            Utility.a();
            return new ResponseResult.RetryExecution("unknown_error");
        }
    }

    @Override // com.dynatrace.agent.communication.network.datasource.NetworkDataSource
    public final ResponseResult b(DataRequest dataRequest) {
        try {
            if (!this.f26643e.b().f26507a) {
                Utility.b("data request failed: no connectivity");
                return new ResponseResult.RetryExecution("No internet connection");
            }
            Call.Factory factory = this.f26640a;
            Request requestA = this.f26642c.a(dataRequest);
            Utility.b("data request: " + requestA);
            Utility.b("data request body: " + dataRequest.f26636b);
            return c(factory.a(requestA).execute(), dataRequest.d, dataRequest.f26635a);
        } catch (Exception e2) {
            e2.toString();
            Utility.a();
            return new ResponseResult.RetryExecution("unknown_error");
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00de  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:57:0x0101
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final com.dynatrace.agent.communication.network.response.ResponseResult c(okhttp3.Response r12, com.dynatrace.agent.communication.LocalServerData r13, com.dynatrace.agent.storage.db.EndPointInfo r14) {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.communication.network.datasource.NetworkDataSourceImpl.c(okhttp3.Response, com.dynatrace.agent.communication.LocalServerData, com.dynatrace.agent.storage.db.EndPointInfo):com.dynatrace.agent.communication.network.response.ResponseResult");
    }
}
