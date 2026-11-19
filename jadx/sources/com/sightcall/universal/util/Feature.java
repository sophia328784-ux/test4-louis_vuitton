package com.sightcall.universal.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import defpackage.fc;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public enum Feature {
    DEEPLINK(R.bool.universal_feature_deeplink, "universal_feature_deeplink"),
    DEEPLINK_SCHEME(R.bool.universal_feature_deeplink_scheme, "universal_feature_deeplink_scheme"),
    DEEPLINK_URI(R.bool.universal_feature_deeplink_uri, "universal_feature_deeplink_uri"),
    LOADING_ACTIVITY(R.bool.universal_feature_loading_activity, "universal_feature_loading_activity"),
    AGENT(R.bool.universal_feature_agent, "universal_feature_agent"),
    AGENT_NOTIFICATIONS(R.bool.universal_feature_agent_notifications, "universal_feature_agent_notifications"),
    FCM(R.bool.universal_feature_fcm, "universal_feature_fcm"),
    MEDIA_EXPORT(R.bool.universal_feature_media_export, "universal_feature_media_export"),
    CALL_OVERLAY(R.bool.universal_feature_call_overlay, "universal_feature_call_overlay");

    private final String id;
    private final int resId;

    public static class MissingFeatureFlagException extends RuntimeException {
        private final Feature feature;

        public MissingFeatureFlagException(Feature feature, Context context) {
            super(Feature.AGENT.message(context));
            this.feature = feature;
        }

        public Feature feature() {
            return this.feature;
        }
    }

    Feature(int i2, String str) {
        this.resId = i2;
        this.id = str;
    }

    public static void ensureCompatibility(Context context) {
        getRequestedPermissions(context);
        Feature feature = FCM;
        boolean zIsEnabled = feature.isEnabled(context);
        Feature feature2 = AGENT;
        boolean zIsEnabled2 = feature2.isEnabled(context);
        Feature feature3 = AGENT_NOTIFICATIONS;
        boolean zIsEnabled3 = feature3.isEnabled(context);
        if (zIsEnabled2 && !zIsEnabled) {
            Universal.logger().w(feature2.message(context) + " BUT " + feature.message(context));
        }
        if (!zIsEnabled2 && zIsEnabled3) {
            throw new RuntimeException(feature2.message(context) + " BUT " + feature3.message(context));
        }
        if (zIsEnabled && TextUtils.isEmpty(context.getString(R.string.universal_feature_fcm_sender_id))) {
            throw new RuntimeException(feature.message(context) + " BUT universal_feature_fcm_sender_id and gcm_defaultSenderId are empty.\nDid you applied the google services plugin?");
        }
    }

    private static Set<String> getRequestedPermissions(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                HashSet hashSet = new HashSet(strArr.length);
                Collections.addAll(hashSet, strArr);
                return hashSet;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return Collections.EMPTY_SET;
    }

    public String id() {
        return this.id;
    }

    public boolean isEnabled(Context context) {
        return context.getResources().getBoolean(this.resId);
    }

    public String message(Context context) {
        return fc.i("Feature [", this.id, "] is ", isEnabled(context) ? "enabled" : "disabled");
    }

    public void require(Context context) {
        if (!isEnabled(context)) {
            throw new MissingFeatureFlagException(this, context);
        }
    }
}
