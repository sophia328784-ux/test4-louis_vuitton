package com.dynatrace.android.agent.conf;

import com.dynatrace.agent.common.InstrumentationFlavor;
import com.github.druk.dnssd.DNSSD;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationPreset {
    static {
        InstrumentationFlavor instrumentationFlavor = InstrumentationFlavor.PLAIN;
    }

    public static Configuration a() {
        new ConfigurationPreset();
        return new Configuration("", "", "", AgentMode.SAAS, true, 500, DNSSD.DNSSD_DEFAULT_TIMEOUT, true, true, true, true, true, true, true, new String[0], new String[0], new String[0], true, false, false, InstrumentationFlavor.PLAIN, true, 1000);
    }

    public final String toString() {
        return "ConfigurationPreset{, graceTime=500, waitTime=60000, applicationMonitoring=true, activityMonitoring=true, certificateValidation=true, sendEmptyActions=true, namePrivacy=false, crashReporting=true, nativeCrashReporting=true, anrReporting=true, webRequestTiming=true, monitoredDomains=" + Arrays.toString(new String[0]) + ", monitoredHttpsDomains=" + Arrays.toString(new String[0]) + ", urlFilters=" + Arrays.toString(new String[0]) + ", hybridApp=false, fileDomainCookies=true, debugLogLevel=false, autoStart=false, userOptIn=false, startupLoadBalancing=false, startupWithGrailEnabled=false, instrumentationFlavor=" + InstrumentationFlavor.PLAIN + ", sessionReplayComponentProvider=null, isRageTapDetectionEnabled=true, eventThrottlingLimit=1000, replaySyncSizeThresholdKb=100, enableOfflineRecovery=false}";
    }
}
