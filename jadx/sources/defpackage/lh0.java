package defpackage;

import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lh0 implements ConfigurationPublisher.ConfigurationTransform {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServerConfigurationV4 f76031c;

    public /* synthetic */ lh0(ServerConfigurationV4 serverConfigurationV4, int i2) {
        this.f76030b = i2;
        this.f76031c = serverConfigurationV4;
    }

    @Override // com.dynatrace.android.agent.conf.ConfigurationPublisher.ConfigurationTransform
    public final ConfigurationPublisher.ConfigurationUpdate.Builder a(ConfigurationPublisher.ConfigurationUpdate.Builder builder) {
        int i2 = this.f76030b;
        ServerConfigurationV4 serverConfigurationV4 = this.f76031c;
        switch (i2) {
            case 0:
                builder.f27370b = serverConfigurationV4.f27046e.contains("all");
                String str = serverConfigurationV4.f27047f;
                str.getClass();
                builder.f27371c = str;
                builder.f27377k = serverConfigurationV4.g;
                break;
            default:
                builder.f27370b = serverConfigurationV4.f27046e.contains("all");
                String str2 = serverConfigurationV4.f27047f;
                str2.getClass();
                builder.f27371c = str2;
                builder.f27377k = serverConfigurationV4.g;
                break;
        }
        return builder;
    }
}
