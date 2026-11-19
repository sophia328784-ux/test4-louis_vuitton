package com.sightcall.universal.util;

import android.net.Uri;
import android.text.TextUtils;
import com.linkplay.network.SecurityConstants;
import com.sightcall.httpclient.di.HttpClientModule;
import com.sightcall.pratik.extensions.UriExtensionsKt;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.model.Config;
import defpackage.pq0;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DeeplinkParser {
    private static final OldLogger logger = OldLogger.get("DEEPLINK_PARSER");

    public static class MalformedUriException extends Exception {
        public MalformedUriException(Uri uri) {
            super(pq0.l(uri, "Malformed uri "));
        }
    }

    public static class UnsupportedUriException extends Exception {
        public UnsupportedUriException(Uri uri) {
            super(pq0.l(uri, "Unsupported uri "));
        }
    }

    private DeeplinkParser() {
    }

    private static Config config(Uri uri, Environment environment) {
        return new Config().environment(environment).uri(uri).reference(UriExtensionsKt.getDisplayName(uri)).calleeId(UriExtensionsKt.getCallId(uri)).callNotStartedUrl(uri.getQueryParameter("callNotStartedUrl"));
    }

    private static boolean expectedPathSegments(List<String> list, int i2) {
        if (list.size() == i2) {
            return true;
        }
        logger.e("Expected [%d] segments but got [%d] instead. Segments=%s", Integer.valueOf(i2), Integer.valueOf(list.size()), Arrays.toString(list.toArray()));
        return false;
    }

    public static Deeplink parse(Uri uri) throws Exception {
        logger.d("parse(%s)", uri);
        if (uri == null) {
            return EmptyLink.INSTANCE;
        }
        String scheme = uri.getScheme();
        return (scheme == null || !(scheme.equalsIgnoreCase(SecurityConstants.SECURITY_NONE) || scheme.equalsIgnoreCase(SecurityConstants.SECURITY_HTTPS))) ? parseWithCustomScheme(uri) : parseWithHttpScheme(uri);
    }

    private static Deeplink parseWithCustomScheme(Uri uri) throws Exception {
        if (!"rtcc".equals(uri.getHost())) {
            return parseWithHttpScheme(uri);
        }
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (TextUtils.isEmpty(schemeSpecificPart) || "//".equalsIgnoreCase(schemeSpecificPart)) {
            return EmptyLink.INSTANCE;
        }
        Config config = config(uri, Environment.with(uri.getPath()));
        HttpClientModule.INSTANCE.initBaseUrl(config.environment().baseUrl());
        if (!TextUtils.equals("register", uri.getQueryParameter("mode"))) {
            return CallStepLink.INSTANCE.create(config);
        }
        String queryParameter = uri.getQueryParameter("token");
        if (queryParameter != null) {
            return AgentRegistrationStepLink.INSTANCE.create(queryParameter, config, true);
        }
        logger.e("Expected [token] as query parameter!");
        throw new MalformedUriException(uri);
    }

    private static Deeplink parseWithHttpScheme(Uri uri) throws Exception {
        Config config = config(uri, Environment.with(uri));
        HttpClientModule.INSTANCE.initBaseUrl(config.environment().baseUrl());
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.isEmpty()) {
            return EmptyLink.INSTANCE;
        }
        String str = pathSegments.get(0);
        str.getClass();
        switch (str) {
            case "mobile":
            case "call":
            case "noapp":
            case "noapp_webrtc":
            case "app_webrtc":
                if (expectedPathSegments(pathSegments, 2)) {
                    return CallStepLink.INSTANCE.create(config);
                }
                throw new MalformedUriException(uri);
            case "register":
                if (!expectedPathSegments(pathSegments, 2)) {
                    throw new MalformedUriException(uri);
                }
                return AgentRegistrationStepLink.INSTANCE.create(pathSegments.get(1), config, true);
            case "b":
                if (expectedPathSegments(pathSegments, 2) || ((expectedPathSegments(pathSegments, 3) && pathSegments.get(1).equals("n")) || ((expectedPathSegments(pathSegments, 3) && pathSegments.get(1).equals("w")) || (expectedPathSegments(pathSegments, 4) && pathSegments.get(1).equals("n") && pathSegments.get(2).equals("w"))))) {
                    return CallStepLink.INSTANCE.create(config);
                }
                throw new MalformedUriException(uri);
            case "sso":
                if (!expectedPathSegments(pathSegments, 2)) {
                    throw new MalformedUriException(uri);
                }
                return AgentRegistrationStepLink.INSTANCE.create(pathSegments.get(1), config, false);
            case "debug":
                if (!expectedPathSegments(pathSegments, 2)) {
                    throw new MalformedUriException(uri);
                }
                String str2 = pathSegments.get(1);
                String lowerCase = str2.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                if (lowerCase.equals("true")) {
                    return DebugLink.INSTANCE.create(true);
                }
                if (lowerCase.equals("false")) {
                    return DebugLink.INSTANCE.create(false);
                }
                logger.e("Unsupported debug value [%s]", str2);
                throw new MalformedUriException(uri);
            default:
                logger.e("Unsupported action [%s]", str);
                throw new UnsupportedUriException(uri);
        }
    }
}
