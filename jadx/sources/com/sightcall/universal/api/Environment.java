package com.sightcall.universal.api;

import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public enum Environment {
    PPR_US("-usppr|usppr", "https://api-usppr.sightcall.com/api/", 1),
    PROD_US("us", "https://api-us.sightcall.com/api/", 1),
    PROD("prod", "https://api.sightcall.com/api/", 0),
    PPR("ppr", "https://api-ppr.sightcall.com/api/", 0),
    QUALIF("qualif", "https://api-qualif.sightcall.com/api/", 0),
    CUSTOM(Payload.CUSTOM, "https://api.sightcall.com/api/", 0);

    private String baseUrl;
    private int environmentPlatform;
    private String overrideBaseUrl;
    private Pattern pattern;
    private String value;

    Environment(String str, String str2, int i2) {
        this.value = str;
        this.baseUrl = str2;
        this.environmentPlatform = i2;
    }

    public static Environment with(String str) {
        if (str == null || str.isEmpty()) {
            return PROD;
        }
        for (Environment environment : values()) {
            if (environment.pattern == null) {
                environment.pattern = Pattern.compile(environment.value);
            }
            if (environment.pattern.matcher(str).find()) {
                return environment;
            }
        }
        if (!str.equalsIgnoreCase(SecurityConstants.SECURITY_NONE) && !str.equalsIgnoreCase(SecurityConstants.SECURITY_HTTPS)) {
            return PROD;
        }
        Environment environment2 = CUSTOM;
        environment2.value = "Custom";
        if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        environment2.baseUrl = str;
        environment2.pattern = null;
        return environment2;
    }

    public final String baseUrl() {
        return !TextUtils.isEmpty(this.overrideBaseUrl) ? this.overrideBaseUrl : this.baseUrl;
    }

    public int getEnvironmentPlatform() {
        return this.environmentPlatform;
    }

    public void overrideBaseUrl(String str) {
        this.overrideBaseUrl = str;
    }

    public static Environment with(Uri uri) {
        if (uri == null) {
            return PROD;
        }
        String queryParameter = uri.getQueryParameter(ConfigurationName.DOWNLOAD_PLUGIN_URL);
        if (queryParameter == null) {
            queryParameter = uri.getHost();
        }
        return with(queryParameter);
    }
}
