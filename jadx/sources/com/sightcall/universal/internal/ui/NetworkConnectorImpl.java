package com.sightcall.universal.internal.ui;

import com.sightcall.libraries.network.NetworkConnector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\tH\u0016¢\u0006\u0002\u0010\nJ\t\u0010\u000b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;", "Lcom/sightcall/libraries/network/NetworkConnector;", "client", "Lretrofit2/Retrofit;", "<init>", "(Lretrofit2/Retrofit;)V", "create", "T", "service", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NetworkConnectorImpl implements NetworkConnector {
    private final Retrofit client;

    public NetworkConnectorImpl(Retrofit retrofit) {
        retrofit.getClass();
        this.client = retrofit;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final Retrofit getClient() {
        return this.client;
    }

    public static /* synthetic */ NetworkConnectorImpl copy$default(NetworkConnectorImpl networkConnectorImpl, Retrofit retrofit, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            retrofit = networkConnectorImpl.client;
        }
        return networkConnectorImpl.copy(retrofit);
    }

    public final NetworkConnectorImpl copy(Retrofit client) {
        client.getClass();
        return new NetworkConnectorImpl(client);
    }

    @Override // com.sightcall.libraries.network.NetworkConnector
    public <T> T create(Class<T> service) {
        service.getClass();
        return (T) this.client.b(service);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NetworkConnectorImpl) && Intrinsics.c(this.client, ((NetworkConnectorImpl) other).client);
    }

    public int hashCode() {
        return this.client.hashCode();
    }

    public String toString() {
        return "NetworkConnectorImpl(client=" + this.client + ")";
    }
}
