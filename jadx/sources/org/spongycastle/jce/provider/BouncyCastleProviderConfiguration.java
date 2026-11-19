package org.spongycastle.jce.provider;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jcajce.provider.config.ProviderConfigurationPermission;

/* JADX INFO: loaded from: classes5.dex */
class BouncyCastleProviderConfiguration implements ProviderConfiguration {
    static {
        new ProviderConfigurationPermission("SC", ConfigurableProvider.THREAD_LOCAL_EC_IMPLICITLY_CA);
        new ProviderConfigurationPermission("SC", ConfigurableProvider.EC_IMPLICITLY_CA);
        new ProviderConfigurationPermission("SC", ConfigurableProvider.THREAD_LOCAL_DH_DEFAULT_PARAMS);
        new ProviderConfigurationPermission("SC", ConfigurableProvider.DH_DEFAULT_PARAMS);
        new ProviderConfigurationPermission("SC", ConfigurableProvider.ACCEPTABLE_EC_CURVES);
        new ProviderConfigurationPermission("SC", ConfigurableProvider.ADDITIONAL_EC_PARAMETERS);
    }
}
