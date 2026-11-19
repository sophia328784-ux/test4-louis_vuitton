package com.sensorsdata.analytics.android.sdk.visual.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.jsbridge.H5Helper;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataLifecycleMonitorManager;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.visual.HeatMapService;
import com.sensorsdata.analytics.android.sdk.visual.NodesProcess;
import com.sensorsdata.analytics.android.sdk.visual.R;
import com.sensorsdata.analytics.android.sdk.visual.VisualizedAutoTrackService;
import com.sensorsdata.analytics.android.sdk.visual.WebViewVisualInterface;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
import com.sensorsdata.analytics.android.sdk.visual.utils.AppStateManager;
import com.sensorsdata.analytics.android.sdk.visual.utils.VisualUtil;
import com.sensorsdata.analytics.android.sdk.visual.view.PairingCodeEditDialog;
import com.sensorsdata.analytics.android.sdk.visual.view.VisualDialog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class VisualProtocolImpl {
    private static final String TAG = "SA.SAVisualProtocolImpl";
    private final SAContextManager mSAContextManager;

    public VisualProtocolImpl(SAContextManager sAContextManager) {
        this.mSAContextManager = sAContextManager;
        SensorsDataLifecycleMonitorManager.getInstance().addActivityLifeCallback(new AppStateManager());
    }

    private void addVisualJavascriptInterface(View view) {
        if (view == null || view.getTag(R.id.sensors_analytics_tag_view_webview_visual) != null) {
            return;
        }
        view.setTag(R.id.sensors_analytics_tag_view_webview_visual, new Object());
        H5Helper.addJavascriptInterface(view, new WebViewVisualInterface(view), "SensorsData_App_Visual_Bridge");
    }

    private String appVisualConfig() {
        try {
            if (this.mSAContextManager.getInternalConfigs().saConfigOptions != null && this.mSAContextManager.getInternalConfigs().saConfigOptions.isVisualizedPropertiesEnabled()) {
                VisualPropertiesManager.getInstance().getVisualPropertiesH5Helper().registerListeners();
                return VisualPropertiesManager.getInstance().getVisualPropertiesCache().getVisualCache();
            }
            return null;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    private void mergeVisualProperties(JSONObject jSONObject, View view) {
        if (view == null) {
            return;
        }
        try {
            ViewNode viewNodeAddViewPathProperties = VisualUtil.addViewPathProperties(SAViewUtils.getActivityOfView(view.getContext(), view), view, jSONObject);
            if (this.mSAContextManager.getInternalConfigs().saConfigOptions.isVisualizedPropertiesEnabled()) {
                VisualPropertiesManager.getInstance().mergeVisualProperties(VisualPropertiesManager.VisualEventType.APP_CLICK, jSONObject, viewNodeAddViewPathProperties);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void showPairingCodeInputDialog(final Context context) {
        if (this.mSAContextManager.getContext() == null) {
            SALog.i(TAG, "The argument context can't be null");
        } else if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.impl.VisualProtocolImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    new PairingCodeEditDialog(context).show();
                }
            });
        } else {
            SALog.i(TAG, "The static method showPairingCodeEditDialog(Context context) only accepts Activity as a parameter");
        }
    }

    public String flutterGetAppVisualConfig() {
        String strAppVisualConfig = appVisualConfig();
        if (TextUtils.isEmpty(strAppVisualConfig)) {
            return null;
        }
        return Base64.encodeToString(strAppVisualConfig.getBytes(), 2);
    }

    public Boolean getVisualState() {
        return Boolean.valueOf(VisualizedAutoTrackService.getInstance().isServiceRunning() || HeatMapService.getInstance().isServiceRunning());
    }

    public String h5GetAppVisualConfig() {
        String strAppVisualConfig = appVisualConfig();
        if (TextUtils.isEmpty(strAppVisualConfig)) {
            return null;
        }
        return Base64.encodeToString(strAppVisualConfig.getBytes(), 0);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public <T> T invokeModuleFunction(String str, Object... objArr) {
        try {
            switch (str.hashCode()) {
                case -2132080600:
                    if (!str.equals(Modules.Visual.METHOD_RESUME_VISUAL_SERVICE)) {
                        return null;
                    }
                    VisualizedAutoTrackService.getInstance().resume();
                    return null;
                case -2103270069:
                    if (!str.equals(Modules.Visual.METHOD_ADD_VISUAL_JAVASCRIPTINTERFACE)) {
                        return null;
                    }
                    addVisualJavascriptInterface((View) objArr[0]);
                    return null;
                case -2071982886:
                    if (str.equals(Modules.Visual.METHOD_H5_GET_APPVISUAL_CONFIG)) {
                        return (T) h5GetAppVisualConfig();
                    }
                    return null;
                case -1974002693:
                    if (str.equals(Modules.Visual.METHOD_GET_VISUAL_STATE)) {
                        return (T) getVisualState();
                    }
                    return null;
                case -1706331910:
                    if (!str.equals(Modules.Visual.METHOD_SHOW_PAIRING_CODE_INPUTDIALOG)) {
                        return null;
                    }
                    showPairingCodeInputDialog((Context) objArr[0]);
                    return null;
                case -746052307:
                    if (!str.equals(Modules.Visual.METHOD_SHOW_OPEN_VISUALIZED_AUTOTRACK_DIALOG)) {
                        return null;
                    }
                    VisualDialog.showOpenVisualizedAutoTrackDialog((Activity) objArr[0], (String) objArr[1], (String) objArr[2]);
                    return null;
                case -467015053:
                    if (!str.equals(Modules.Visual.METHOD_STOP_VISUAL_SERVICE)) {
                        return null;
                    }
                    VisualizedAutoTrackService.getInstance().stop();
                    return null;
                case -366380714:
                    if (!str.equals(Modules.Visual.METHOD_RESUME_HEATMAP_SERVICE)) {
                        return null;
                    }
                    HeatMapService.getInstance().resume();
                    return null;
                case -288956309:
                    if (!str.equals(Modules.Visual.METHOD_STOP_HEATMAP_SERVICE)) {
                        return null;
                    }
                    HeatMapService.getInstance().stop();
                    return null;
                case 561737425:
                    if (!str.equals(Modules.Visual.METHOD_REQUEST_VISUAL_CONFIG)) {
                        return null;
                    }
                    VisualPropertiesManager.getInstance().requestVisualConfig(this.mSAContextManager);
                    return null;
                case 834619917:
                    if (!str.equals(Modules.Visual.METHOD_SHOW_OPEN_HEATMAP_DIALOG)) {
                        return null;
                    }
                    VisualDialog.showOpenHeatMapDialog((Activity) objArr[0], (String) objArr[1], (String) objArr[2]);
                    return null;
                case 873596527:
                    if (!str.equals(Modules.Visual.METHOD_SEND_VISUALIZED_MESSAGE)) {
                        return null;
                    }
                    sendVisualizedMessage((String) objArr[0]);
                    return null;
                case 1417500907:
                    if (!str.equals(Modules.Visual.METHOD_MERGE_VISUAL_PROPERTIES)) {
                        return null;
                    }
                    mergeVisualProperties((JSONObject) objArr[0], (View) objArr[1]);
                    return null;
                case 1571660393:
                    if (str.equals(Modules.Visual.METHOD_FLUTTER_GET_APPVISUAL_CONFIG)) {
                        return (T) flutterGetAppVisualConfig();
                    }
                    return null;
                default:
                    return null;
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    public void sendVisualizedMessage(String str) {
        NodesProcess.getInstance().getFlutterNodesManager().handlerMessage(str);
    }
}
