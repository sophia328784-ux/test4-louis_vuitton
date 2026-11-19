package com.batch.android.dispatcher.firebase;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.batch.android.Batch;
import com.batch.android.BatchEventDispatcher;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseDispatcher implements BatchEventDispatcher {
    private static final String BATCH_TRACKING_ID = "batch_tracking_id";
    private static final String BATCH_WEBVIEW_ANALYTICS_ID = "batch_webview_analytics_id";
    private static final String CAMPAIGN = "campaign";
    private static final String CONTENT = "content";
    private static final String DISPATCHER_NAME = "firebase";
    private static final int DISPATCHER_VERSION = 1;
    private static final String MEDIUM = "medium";
    private static final String MESSAGING_AUTO_CLOSE_NAME = "batch_in_app_auto_close";
    private static final String MESSAGING_CLICK_NAME = "batch_in_app_click";
    private static final String MESSAGING_CLOSE_ERROR_NAME = "batch_in_app_close_error";
    private static final String MESSAGING_CLOSE_NAME = "batch_in_app_close";
    private static final String MESSAGING_SHOW_NAME = "batch_in_app_show";
    private static final String MESSAGING_WEBVIEW_CLICK_NAME = "batch_in_app_webview_click";
    private static final String NOTIFICATION_DISMISS_NAME = "batch_notification_dismiss";
    private static final String NOTIFICATION_DISPLAY_NAME = "batch_notification_display";
    private static final String NOTIFICATION_OPEN_NAME = "batch_notification_open";
    private static final String SOURCE = "source";
    private static final String UNKNOWN_EVENT_NAME = "batch_unknown";
    private static final String UTM_CAMPAIGN = "utm_campaign";
    private static final String UTM_CONTENT = "utm_content";
    private static final String UTM_MEDIUM = "utm_medium";
    private static final String UTM_SOURCE = "utm_source";
    private FirebaseAnalytics firebaseAnalytics;

    /* JADX INFO: renamed from: com.batch.android.dispatcher.firebase.FirebaseDispatcher$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$batch$android$Batch$EventDispatcher$Type;

        static {
            int[] iArr = new int[Batch.EventDispatcher.Type.values().length];
            $SwitchMap$com$batch$android$Batch$EventDispatcher$Type = iArr;
            try {
                iArr[Batch.EventDispatcher.Type.NOTIFICATION_DISPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.NOTIFICATION_OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.NOTIFICATION_DISMISS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.MESSAGING_SHOW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.MESSAGING_CLOSE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.MESSAGING_AUTO_CLOSE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.MESSAGING_CLOSE_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.MESSAGING_CLICK.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$batch$android$Batch$EventDispatcher$Type[Batch.EventDispatcher.Type.MESSAGING_WEBVIEW_CLICK.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public FirebaseDispatcher(Context context) {
        this.firebaseAnalytics = FirebaseAnalytics.getInstance(context);
    }

    private static void copyValueFromMap(Map<String, String> map, String str, Bundle bundle, String str2) {
        String str3 = map.get(str);
        if (str3 != null) {
            bundle.putString(str2, str3);
        }
    }

    private static void copyValueFromPayload(Batch.EventDispatcher.Payload payload, String str, Bundle bundle, String str2) {
        String customValue = payload.getCustomValue(str);
        if (customValue != null) {
            bundle.putString(str2, customValue);
        }
    }

    private static void copyValueFromQuery(Uri uri, String str, Bundle bundle, String str2) {
        String queryParameter;
        for (String str3 : uri.getQueryParameterNames()) {
            if (str.equalsIgnoreCase(str3) && (queryParameter = uri.getQueryParameter(str3)) != null) {
                bundle.putString(str2, queryParameter);
                return;
            }
        }
    }

    private static String getFirebaseEventName(Batch.EventDispatcher.Type type) {
        switch (AnonymousClass1.$SwitchMap$com$batch$android$Batch$EventDispatcher$Type[type.ordinal()]) {
            case 1:
                return NOTIFICATION_DISPLAY_NAME;
            case 2:
                return NOTIFICATION_OPEN_NAME;
            case 3:
                return NOTIFICATION_DISMISS_NAME;
            case 4:
                return MESSAGING_SHOW_NAME;
            case 5:
                return MESSAGING_CLOSE_NAME;
            case 6:
                return MESSAGING_AUTO_CLOSE_NAME;
            case 7:
                return MESSAGING_CLOSE_ERROR_NAME;
            case 8:
                return MESSAGING_CLICK_NAME;
            case 9:
                return MESSAGING_WEBVIEW_CLICK_NAME;
            default:
                return UNKNOWN_EVENT_NAME;
        }
    }

    private static Map<String, String> getFragmentMap(String str) {
        String[] strArrSplit = str.split("&");
        HashMap map = new HashMap();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split("=");
            if (strArrSplit2.length >= 2) {
                map.put(strArrSplit2[0].toLowerCase(), strArrSplit2[1]);
            }
        }
        return map;
    }

    private static Bundle getInAppParams(Batch.EventDispatcher.Payload payload) {
        Bundle bundle = new Bundle();
        bundle.putString(CAMPAIGN, payload.getTrackingId());
        bundle.putString("source", Batch.NOTIFICATION_TAG);
        bundle.putString(MEDIUM, "in-app");
        bundle.putString(BATCH_TRACKING_ID, payload.getTrackingId());
        String webViewAnalyticsID = payload.getWebViewAnalyticsID();
        if (webViewAnalyticsID != null) {
            bundle.putString(BATCH_WEBVIEW_ANALYTICS_ID, webViewAnalyticsID);
        }
        String deeplink = payload.getDeeplink();
        if (deeplink != null) {
            try {
                Uri uri = Uri.parse(deeplink.trim());
                if (uri.isHierarchical()) {
                    String fragment = uri.getFragment();
                    if (fragment != null && !fragment.isEmpty()) {
                        copyValueFromMap(getFragmentMap(fragment), UTM_CONTENT, bundle, CONTENT);
                    }
                    copyValueFromQuery(uri, UTM_CONTENT, bundle, CONTENT);
                }
            } catch (Exception e2) {
                e2.getLocalizedMessage();
            }
        }
        copyValueFromPayload(payload, UTM_CAMPAIGN, bundle, CAMPAIGN);
        copyValueFromPayload(payload, UTM_MEDIUM, bundle, MEDIUM);
        copyValueFromPayload(payload, UTM_SOURCE, bundle, "source");
        return bundle;
    }

    private static Bundle getNotificationParams(Batch.EventDispatcher.Payload payload) {
        Bundle bundle = new Bundle();
        bundle.putString("source", Batch.NOTIFICATION_TAG);
        bundle.putString(MEDIUM, "push");
        String deeplink = payload.getDeeplink();
        if (deeplink != null) {
            try {
                Uri uri = Uri.parse(deeplink.trim());
                if (uri.isHierarchical()) {
                    String fragment = uri.getFragment();
                    if (fragment != null && !fragment.isEmpty()) {
                        Map<String, String> fragmentMap = getFragmentMap(fragment);
                        copyValueFromMap(fragmentMap, UTM_CAMPAIGN, bundle, CAMPAIGN);
                        copyValueFromMap(fragmentMap, UTM_MEDIUM, bundle, MEDIUM);
                        copyValueFromMap(fragmentMap, UTM_SOURCE, bundle, "source");
                        copyValueFromMap(fragmentMap, UTM_CONTENT, bundle, CONTENT);
                    }
                    copyValueFromQuery(uri, UTM_CAMPAIGN, bundle, CAMPAIGN);
                    copyValueFromQuery(uri, UTM_MEDIUM, bundle, MEDIUM);
                    copyValueFromQuery(uri, UTM_SOURCE, bundle, "source");
                    copyValueFromQuery(uri, UTM_CONTENT, bundle, CONTENT);
                }
            } catch (Exception e2) {
                e2.getLocalizedMessage();
            }
        }
        copyValueFromPayload(payload, UTM_CAMPAIGN, bundle, CAMPAIGN);
        copyValueFromPayload(payload, UTM_MEDIUM, bundle, MEDIUM);
        copyValueFromPayload(payload, UTM_SOURCE, bundle, "source");
        return bundle;
    }

    @Override // com.batch.android.BatchEventDispatcher
    public void dispatchEvent(Batch.EventDispatcher.Type type, Batch.EventDispatcher.Payload payload) {
        Bundle inAppParams;
        if (type.isNotificationEvent()) {
            inAppParams = getNotificationParams(payload);
        } else {
            inAppParams = type.isMessagingEvent() ? getInAppParams(payload) : null;
        }
        Bundle bundle = inAppParams;
        this.firebaseAnalytics.f34361a.l(null, getFirebaseEventName(type), bundle, false, true, null, null);
    }

    @Override // com.batch.android.BatchEventDispatcher
    public String getName() {
        return "firebase";
    }

    @Override // com.batch.android.BatchEventDispatcher
    public int getVersion() {
        return 1;
    }
}
