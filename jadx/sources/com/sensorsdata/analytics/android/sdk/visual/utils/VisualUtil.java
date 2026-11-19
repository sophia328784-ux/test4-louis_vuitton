package com.sensorsdata.analytics.android.sdk.visual.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewTreeStatusObservable;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewUtil;
import com.sensorsdata.analytics.android.sdk.visual.constant.VisualConstants;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class VisualUtil {
    public static ViewNode addViewPathProperties(Activity activity, View view, JSONObject jSONObject) {
        if (view != null && activity != null) {
            if (jSONObject == null) {
                try {
                    jSONObject = new JSONObject();
                } catch (JSONException e2) {
                    SALog.printStackTrace(e2);
                }
            }
            ViewNode viewNode = ViewTreeStatusObservable.getInstance().getViewNode(view);
            if ((SensorsDataAPI.sharedInstance().isVisualizedAutoTrackEnabled() && SensorsDataAPI.sharedInstance().isVisualizedAutoTrackActivity(activity.getClass())) || (SensorsDataAPI.sharedInstance().isHeatMapEnabled() && SensorsDataAPI.sharedInstance().isHeatMapActivity(activity.getClass()))) {
                String elementSelector = SAViewUtils.getElementSelector(view);
                if (!TextUtils.isEmpty(elementSelector)) {
                    jSONObject.put(VisualConstants.ELEMENT_SELECTOR, elementSelector);
                }
                if (viewNode != null && !TextUtils.isEmpty(viewNode.getViewPath())) {
                    jSONObject.put(VisualConstants.ELEMENT_PATH, viewNode.getViewPath());
                }
            }
            if (viewNode != null && !TextUtils.isEmpty(viewNode.getViewPosition())) {
                jSONObject.put(VisualConstants.ELEMENT_POSITION, viewNode.getViewPosition());
            }
            return viewNode;
        }
        return null;
    }

    public static JSONObject getScreenNameAndTitle(View view, SnapInfo snapInfo) {
        JSONObject activityPageInfo;
        if (view == null) {
            return null;
        }
        Activity activityOfView = SAViewUtils.getActivityOfView(view.getContext(), view);
        if (activityOfView == null) {
            activityOfView = AppStateTools.getInstance().getForegroundActivity();
        }
        if (activityOfView == null || activityOfView.getWindow() == null || !activityOfView.getWindow().isActive()) {
            return null;
        }
        Object fragmentFromView = SAFragmentUtils.getFragmentFromView(view, activityOfView);
        if (fragmentFromView != null) {
            activityPageInfo = SAPageInfoUtils.getFragmentPageInfo(activityOfView, fragmentFromView);
            if (snapInfo != null && !snapInfo.hasFragment) {
                snapInfo.hasFragment = true;
            }
        } else {
            activityPageInfo = SAPageInfoUtils.getActivityPageInfo(activityOfView);
        }
        JSONUtils.mergeDuplicateProperty(SAPageInfoUtils.getRNPageInfo(), activityPageInfo);
        return activityPageInfo;
    }

    public static int getVisibility(View view) {
        return (!(view instanceof Spinner) && SAViewUtils.isViewSelfVisible(view) && view.isShown()) ? 0 : 8;
    }

    public static boolean isForbiddenClick(View view) {
        if (ViewUtil.instanceOfWebView(view) || (view instanceof AdapterView)) {
            return true;
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (textView.isTextSelectable() && !textView.hasOnClickListeners()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSupportClick(View view) {
        ViewParent parent = view.getParent();
        return (parent instanceof AdapterView) || ViewUtil.instanceOfRecyclerView(parent) || (view instanceof RatingBar) || (view instanceof SeekBar);
    }

    public static boolean isSupportElementContent(View view) {
        return ((view instanceof SeekBar) || (view instanceof RatingBar) || (view instanceof Switch)) ? false : true;
    }
}
