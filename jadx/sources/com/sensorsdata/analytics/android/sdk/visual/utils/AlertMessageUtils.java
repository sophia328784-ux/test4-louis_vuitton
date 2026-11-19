package com.sensorsdata.analytics.android.sdk.visual.utils;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.visual.AbstractViewCrawler;
import com.sensorsdata.analytics.android.sdk.visual.NodesProcess;
import com.sensorsdata.analytics.android.sdk.visual.R;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.WebNodeInfo;
import defpackage.fc;
import defpackage.n00;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AlertMessageUtils {
    private static final String TAG = "SA.AlertMessageUtils";

    /* JADX INFO: renamed from: com.sensorsdata.analytics.android.sdk.visual.utils.AlertMessageUtils$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType;

        static {
            int[] iArr = new int[AlertRunnable.AlertType.values().length];
            $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType = iArr;
            try {
                iArr[AlertRunnable.AlertType.H5.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType[AlertRunnable.AlertType.FLUTTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class AlertRunnable implements Runnable {
        private final AlertType alertType;
        private final String unique;

        public enum AlertType {
            H5,
            FLUTTER
        }

        public AlertRunnable(AlertType alertType, String str) {
            this.unique = str;
            this.alertType = alertType;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = AnonymousClass1.$SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType[this.alertType.ordinal()];
            if (i2 == 1) {
                AlertMessageUtils.h5AlertHandlerFailure(this.unique);
            } else {
                if (i2 != 2) {
                    return;
                }
                AlertMessageUtils.flutterAlertHandlerFailure(this.unique);
            }
        }
    }

    private static void buildAlertInfo(OutputStream outputStream, String str, List<NodeInfo.AlertInfo> list, Context context) throws IOException {
        if (list == null || list.size() <= 0) {
            return;
        }
        outputStream.write(",\"app_alert_infos\":".getBytes());
        outputStream.flush();
        outputStream.write("[".getBytes());
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 > 0) {
                outputStream.write(",".getBytes());
            }
            NodeInfo.AlertInfo alertInfo = list.get(i2);
            if (alertInfo != null) {
                if (TextUtils.equals(AbstractViewCrawler.TYPE_HEAT_MAP, str)) {
                    alertInfo.title = alertInfo.title.replace(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual), SADisplayUtil.getStringResource(context, R.string.sensors_analytics_heatmap));
                }
                outputStream.write("{".getBytes());
                outputStream.write("\"title\":".getBytes());
                outputStream.write(("\"" + alertInfo.title + "\"").getBytes());
                outputStream.write(",".getBytes());
                outputStream.write("\"message\":".getBytes());
                outputStream.write(("\"" + alertInfo.message + "\"").getBytes());
                outputStream.write(",".getBytes());
                outputStream.write("\"link_text\":".getBytes());
                outputStream.write(("\"" + alertInfo.linkText + "\"").getBytes());
                outputStream.write(",".getBytes());
                outputStream.write("\"link_url\":".getBytes());
                outputStream.write(("\"" + alertInfo.linkUrl + "\"").getBytes());
                outputStream.write("}".getBytes());
            }
        }
        outputStream.write("]".getBytes());
        outputStream.flush();
    }

    public static void buildFlutterAlertInfo(OutputStream outputStream, String str, SnapInfo snapInfo, Context context) throws IOException {
        buildAlertInfo(outputStream, str, snapInfo.flutter_alertInfos, context);
    }

    public static void buildH5AlertInfo(OutputStream outputStream, String str, SnapInfo snapInfo, Context context) throws IOException {
        WebNodeInfo webNodeInfo = (WebNodeInfo) NodesProcess.getInstance().getWebNodesManager().getPageInfo(snapInfo.webViewUrl);
        if (webNodeInfo != null) {
            if (!TextUtils.isEmpty(webNodeInfo.getUrl())) {
                outputStream.write((",\"h5_url\": \"" + webNodeInfo.getUrl() + "\"").getBytes());
            }
            if (!TextUtils.isEmpty(webNodeInfo.getTitle())) {
                outputStream.write((",\"h5_title\": \"" + webNodeInfo.getTitle() + "\"").getBytes());
            }
        }
        buildAlertInfo(outputStream, str, snapInfo.alertInfos, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void flutterAlertHandlerFailure(String str) {
        SALog.i(TAG, "Flutter page is not integrated SDK");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Context context = SensorsDataAPI.sharedInstance().getSAContextManager().getContext();
        NodesProcess.getInstance().getFlutterNodesManager().handlerFailure(str, n00.r(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5_error_link), "\",\"link_url\":\"https://manual.sensorsdata.cn/sa/latest/flutter-22257963.html\"}]}", fc.s("{\"callType\":\"app_alert\",\"data\":[{\"title\":\"", SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5), "\",\"message\":\"", SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_flutter_error), "\",\"link_text\":\"")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h5AlertHandlerFailure(String str) {
        if (TextUtils.isEmpty(str) || ((WebNodeInfo) NodesProcess.getInstance().getWebNodesManager().getNodes(str)) != null) {
            return;
        }
        SALog.i(TAG, "H5 page is not integrated Web JS SDK");
        Context context = SensorsDataAPI.sharedInstance().getSAContextManager().getContext();
        NodesProcess.getInstance().getWebNodesManager().handlerFailure(str, n00.r(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5_error_link), "\",\"link_url\":\"https://manual.sensorsdata.cn/sa/latest/tech_sdk_client_web_use-7545346.html\"}]}", fc.s("{\"callType\":\"app_alert\",\"data\":[{\"title\":\"", SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5), "\",\"message\":\"", SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5_error), "\",\"link_text\":\"")));
    }
}
