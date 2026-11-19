package com.dynatrace.agent.communication.di;

import com.dynatrace.agent.common.connectivity.NetworkConnectivityChecker;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.CommunicationManagerImpl;
import com.dynatrace.agent.communication.ResponseProcessorImpl;
import com.dynatrace.agent.communication.api.ServerDataListener;
import com.dynatrace.agent.communication.network.datasource.NetworkDataSourceImpl;
import com.dynatrace.agent.communication.network.request.ConfigRequestFactory;
import com.dynatrace.agent.communication.network.request.DataRequestFactory;
import com.dynatrace.agent.communication.network.response.ConfigurationsParser;
import com.dynatrace.agent.communication.network.response.ServerConfigurationManagerV4;
import com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.android.agent.conf.ServerConfigurationManager;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/dynatrace/agent/communication/di/CommunicationModule;", "", "Lokhttp3/Call$Factory;", "httpFactory", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "", "version", "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "dataBaseDataSource", "Lcom/dynatrace/agent/storage/db/EndPointInfo;", "activeEndpoint", "Lcom/dynatrace/agent/communication/api/ServerDataListener;", "serverDataListener", "Lkotlinx/coroutines/CoroutineScope;", "externalScope", "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;", "connectivityChecker", "<init>", "(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/common/time/TimeProvider;Ljava/lang/String;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CommunicationModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Call.Factory f26624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f26625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26626c;
    public final EventDatabaseDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EndPointInfo f26627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ServerDataListener f26628f;
    public final CoroutineScope g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NetworkConnectivityChecker f26629h;

    public CommunicationModule(Call.Factory factory, TimeProvider timeProvider, String str, EventDatabaseDataSource eventDatabaseDataSource, EndPointInfo endPointInfo, ServerDataListener serverDataListener, CoroutineScope coroutineScope, NetworkConnectivityChecker networkConnectivityChecker) {
        timeProvider.getClass();
        str.getClass();
        eventDatabaseDataSource.getClass();
        endPointInfo.getClass();
        serverDataListener.getClass();
        coroutineScope.getClass();
        networkConnectivityChecker.getClass();
        this.f26624a = factory;
        this.f26625b = timeProvider;
        this.f26626c = str;
        this.d = eventDatabaseDataSource;
        this.f26627e = endPointInfo;
        this.f26628f = serverDataListener;
        this.g = coroutineScope;
        this.f26629h = networkConnectivityChecker;
    }

    public final CommunicationManagerImpl a() {
        Call.Factory okHttpClient = this.f26624a;
        if (okHttpClient == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.b(10L);
            builder.d(15L);
            builder.c(15L);
            okHttpClient = new OkHttpClient(builder);
        }
        ConfigRequestFactory configRequestFactory = new ConfigRequestFactory(this.f26626c);
        DataRequestFactory dataRequestFactory = new DataRequestFactory(this.f26626c, new CommunicationModule$provideCommunicationManager$networkDataSource$1(0, this.f26625b, TimeProvider.class, "millisSinceEpoch", "millisSinceEpoch()J", 0), false, 4, null);
        EndPointInfo endPointInfo = this.f26627e;
        NetworkDataSourceImpl networkDataSourceImpl = new NetworkDataSourceImpl(okHttpClient, configRequestFactory, dataRequestFactory, new ConfigurationsParser(new ServerConfigurationManager(endPointInfo.f26894a), new ServerConfigurationManagerV4()), this.f26629h);
        EventDatabaseDataSource eventDatabaseDataSource = this.d;
        TimeProvider timeProvider = this.f26625b;
        ResponseProcessorImpl responseProcessorImpl = new ResponseProcessorImpl(eventDatabaseDataSource, timeProvider);
        Charset charset = Charsets.UTF_8;
        byte[] bytes = "{\"data_version\":1,\"data\":{\"events\":[".getBytes(charset);
        bytes.getClass();
        int length = bytes.length;
        byte[] bytes2 = "]}}".getBytes(charset);
        bytes2.getClass();
        return new CommunicationManagerImpl(networkDataSourceImpl, new DispatchableDataProvider(endPointInfo, eventDatabaseDataSource, length + bytes2.length, timeProvider), responseProcessorImpl, this.f26628f, this.g, this.f26629h);
    }
}
