package com.sensorsdata.analytics.android.autotrack.core.autotrack;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.GridView;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TabHost;
import androidx.appcompat.app.AlertDialog;
import com.sensorsdata.analytics.android.autotrack.core.beans.AutoTrackConstants;
import com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext;
import com.sensorsdata.analytics.android.autotrack.utils.AopUtil;
import com.sensorsdata.analytics.android.autotrack.utils.AutoTrackViewUtils;
import com.sensorsdata.analytics.android.autotrack.utils.KeyboardViewUtil;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsAdapterViewItemTrackProperties;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsExpandableListViewItemTrackProperties;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AppClickTrackImpl {
    private static final String TAG = "AppClickTrackImpl";
    private static final HashMap<Integer, Long> eventTimestamp = new HashMap<>();

    public static JSONObject buildPageProperty(Activity activity, Object obj) {
        JSONObject jSONObject = new JSONObject();
        if (obj != null) {
            JSONUtils.mergeJSONObject(SAPageInfoUtils.getFragmentPageInfo(activity, obj), jSONObject);
            return jSONObject;
        }
        if (activity != null) {
            JSONUtils.mergeJSONObject(SAPageInfoUtils.getActivityPageInfo(activity), jSONObject);
        }
        return jSONObject;
    }

    private static ViewContext getAppClickViewContext(Object obj, View view, Class<?> cls) {
        if (SAViewUtils.isViewIgnored(cls)) {
            return null;
        }
        Context context = obj instanceof Context ? (Context) obj : null;
        if (view != null) {
            if (SAViewUtils.isViewIgnored(view)) {
                return null;
            }
            if (context == null && (context = view.getContext()) == null) {
                return null;
            }
        }
        Activity activityOfView = SAViewUtils.getActivityOfView(context, view);
        if (activityOfView != null && SensorsDataAPI.sharedInstance().isActivityAutoTrackAppClickIgnored(activityOfView.getClass())) {
            return null;
        }
        Object fragmentFromView = SAFragmentUtils.getFragmentFromView(view, activityOfView);
        if (fragmentFromView == null || !SensorsDataAPI.sharedInstance().isActivityAutoTrackAppClickIgnored(fragmentFromView.getClass())) {
            return new ViewContext(activityOfView, fragmentFromView, view);
        }
        return null;
    }

    private static JSONObject getExpandListViewExtendProperty(ExpandableListView expandableListView, int i2, int i3) {
        try {
            ExpandableListAdapter expandableListAdapter = expandableListView.getExpandableListAdapter();
            if (!(expandableListAdapter instanceof SensorsExpandableListViewItemTrackProperties)) {
                return null;
            }
            SensorsExpandableListViewItemTrackProperties sensorsExpandableListViewItemTrackProperties = (SensorsExpandableListViewItemTrackProperties) expandableListAdapter;
            return i3 == -1 ? sensorsExpandableListViewItemTrackProperties.getSensorsGroupItemTrackProperties(i2) : sensorsExpandableListViewItemTrackProperties.getSensorsChildItemTrackProperties(i2, i3);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    private static boolean isAppClickIgnore(SensorsDataAPI sensorsDataAPI) {
        return !sensorsDataAPI.isAutoTrackEnabled() || sensorsDataAPI.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_CLICK);
    }

    private static boolean isDeBounceTrack(Object obj) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashMap<Integer, Long> map = eventTimestamp;
        Long l = map.get(Integer.valueOf(obj.hashCode()));
        if (l != null && jElapsedRealtime - l.longValue() < 500) {
            return true;
        }
        map.put(Integer.valueOf(obj.hashCode()), Long.valueOf(jElapsedRealtime));
        return false;
    }

    public static void track(final SensorsDataAPI sensorsDataAPI, final String str, String str2) {
        final JSONObject jSONObject;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (TextUtils.isEmpty(str2)) {
                jSONObject = null;
            } else {
                try {
                    jSONObject = new JSONObject(str2);
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                    jSONObject = null;
                }
            }
            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.AppClickTrackImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    sensorsDataAPI.getSAContextManager().trackEvent(new InputData().setEventName(str).setProperties(jSONObject).setEventType(EventType.TRACK));
                }
            });
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    private static void trackAutoEvent(final SensorsDataAPI sensorsDataAPI, final JSONObject jSONObject, final View view) {
        final JSONObject jSONObjectAppendLibMethodAutoTrack = SADataHelper.appendLibMethodAutoTrack(jSONObject);
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.AppClickTrackImpl.2
            @Override // java.lang.Runnable
            public void run() {
                if (view != null) {
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_MERGE_VISUAL_PROPERTIES, jSONObject, view);
                }
                sensorsDataAPI.getSAContextManager().trackEvent(new InputData().setEventName("$AppClick").setEventType(EventType.TRACK).setProperties(jSONObjectAppendLibMethodAutoTrack));
            }
        });
    }

    public static void trackDialog(SensorsDataAPI sensorsDataAPI, DialogInterface dialogInterface, int i2) {
        Class cls;
        Button button;
        try {
            if (!isAppClickIgnore(sensorsDataAPI) && !SAViewUtils.isViewIgnored((Class<?>) Dialog.class)) {
                JSONObject jSONObject = new JSONObject();
                View childAt = null;
                Dialog dialog = dialogInterface instanceof Dialog ? (Dialog) dialogInterface : null;
                if (dialog != null && !isDeBounceTrack(dialog)) {
                    Activity activityOfView = SAViewUtils.getActivityOfView(dialog.getContext(), null);
                    if (activityOfView == null) {
                        activityOfView = dialog.getOwnerActivity();
                    }
                    if (activityOfView != null && !sensorsDataAPI.isActivityAutoTrackAppClickIgnored(activityOfView.getClass())) {
                        JSONUtils.mergeJSONObject(SAPageInfoUtils.getActivityPageInfo(activityOfView), jSONObject);
                        try {
                            Window window = dialog.getWindow();
                            if (window != null && window.isActive()) {
                                String str = (String) dialog.getWindow().getDecorView().getTag(R.id.sensors_analytics_tag_view_id);
                                if (!TextUtils.isEmpty(str)) {
                                    jSONObject.put(AutoTrackConstants.ELEMENT_ID, str);
                                }
                            }
                        } catch (Exception e2) {
                            SALog.printStackTrace(e2);
                        }
                        JSONUtils.mergeDuplicateProperty(SAPageInfoUtils.getRNPageInfo(), jSONObject);
                        jSONObject.put(AutoTrackConstants.ELEMENT_TYPE, "Dialog");
                        try {
                            try {
                                cls = Class.forName("android.support.v7.app.AlertDialog");
                            } catch (Exception unused) {
                                cls = AlertDialog.class;
                                int i3 = AlertDialog.f809c;
                            }
                        } catch (Exception unused2) {
                            cls = null;
                        }
                        if (cls == null) {
                            return;
                        }
                        if (dialog instanceof android.app.AlertDialog) {
                            android.app.AlertDialog alertDialog = (android.app.AlertDialog) dialog;
                            button = alertDialog.getButton(i2);
                            if (button != null) {
                                if (!TextUtils.isEmpty(button.getText())) {
                                    jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, button.getText());
                                }
                                childAt = button;
                            } else {
                                ListView listView = alertDialog.getListView();
                                if (listView != null) {
                                    Object item = listView.getAdapter().getItem(i2);
                                    if (item != null && (item instanceof String)) {
                                        jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, item);
                                    }
                                    childAt = listView.getChildAt(i2);
                                }
                            }
                        } else if (cls.isInstance(dialog)) {
                            try {
                                button = (Button) dialog.getClass().getMethod("getButton", Integer.TYPE).invoke(dialog, Integer.valueOf(i2));
                            } catch (Exception unused3) {
                                button = null;
                            }
                            if (button != null) {
                                if (!TextUtils.isEmpty(button.getText())) {
                                    jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, button.getText());
                                }
                                childAt = button;
                            } else {
                                try {
                                    ListView listView2 = (ListView) dialog.getClass().getMethod("getListView", null).invoke(dialog, null);
                                    if (listView2 != null) {
                                        Object item2 = listView2.getAdapter().getItem(i2);
                                        if (item2 != null && (item2 instanceof String)) {
                                            jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, item2);
                                        }
                                        childAt = listView2.getChildAt(i2);
                                    }
                                } catch (Exception unused4) {
                                }
                            }
                        }
                        trackAutoEvent(sensorsDataAPI, jSONObject, childAt);
                    }
                }
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    public static void trackDrawerClosed(SensorsDataAPI sensorsDataAPI, View view) {
        if (view == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, "Close");
            sensorsDataAPI.setViewProperties(view, jSONObject);
            trackViewOnClick(sensorsDataAPI, view, view.isPressed());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void trackDrawerOpened(SensorsDataAPI sensorsDataAPI, View view) {
        if (view == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, "Open");
            sensorsDataAPI.setViewProperties(view, jSONObject);
            trackViewOnClick(sensorsDataAPI, view, view.isPressed());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void trackExpandableListViewOnChildClick(SensorsDataAPI sensorsDataAPI, ExpandableListView expandableListView, View view, int i2, int i3) {
        ViewContext appClickViewContext;
        String viewContent;
        if (expandableListView == null || view == null) {
            return;
        }
        try {
            if (!SAViewUtils.isViewIgnored(view) && !isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(expandableListView, ExpandableListView.class)) != null) {
                JSONObject jSONObjectBuildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                String viewId = SAViewUtils.getViewId(expandableListView);
                if (!TextUtils.isEmpty(viewId)) {
                    jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                }
                jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "ExpandableListView");
                if (view instanceof ViewGroup) {
                    viewContent = null;
                    try {
                        viewContent = SAViewUtils.traverseView(new StringBuilder(), (ViewGroup) view);
                        if (!TextUtils.isEmpty(viewContent)) {
                            viewContent = viewContent.substring(0, viewContent.length() - 1);
                        }
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                } else {
                    viewContent = SAViewUtils.getViewContent(view);
                }
                if (!TextUtils.isEmpty(viewContent)) {
                    jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, viewContent);
                }
                JSONUtils.mergeJSONObject(getExpandListViewExtendProperty(expandableListView, i2, i3), jSONObjectBuildPageProperty);
                JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), jSONObjectBuildPageProperty);
                trackAutoEvent(sensorsDataAPI, jSONObjectBuildPageProperty, view);
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    public static void trackExpandableListViewOnGroupClick(SensorsDataAPI sensorsDataAPI, ExpandableListView expandableListView, View view, int i2) {
        ViewContext appClickViewContext;
        String viewContent;
        if (expandableListView == null || view == null) {
            return;
        }
        try {
            if (!isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(expandableListView, ExpandableListView.class)) != null) {
                JSONObject jSONObjectBuildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                String viewId = SAViewUtils.getViewId(expandableListView);
                if (!TextUtils.isEmpty(viewId)) {
                    jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                }
                jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "ExpandableListView");
                if (view instanceof ViewGroup) {
                    viewContent = null;
                    try {
                        viewContent = SAViewUtils.traverseView(new StringBuilder(), (ViewGroup) view);
                        if (!TextUtils.isEmpty(viewContent)) {
                            viewContent = viewContent.substring(0, viewContent.length() - 1);
                        }
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                } else {
                    viewContent = SAViewUtils.getViewContent(view);
                }
                if (!TextUtils.isEmpty(viewContent)) {
                    jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, viewContent);
                }
                JSONUtils.mergeJSONObject(getExpandListViewExtendProperty(expandableListView, i2, -1), jSONObjectBuildPageProperty);
                JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), jSONObjectBuildPageProperty);
                trackAutoEvent(sensorsDataAPI, jSONObjectBuildPageProperty, view);
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    public static void trackListView(SensorsDataAPI sensorsDataAPI, AdapterView<?> adapterView, View view, int i2) {
        String str;
        Class cls;
        if (view != null) {
            try {
                if (!isAppClickIgnore(sensorsDataAPI) && !SAViewUtils.isViewIgnored(adapterView) && !KeyboardViewUtil.isKeyboardView(view)) {
                    if (adapterView instanceof ListView) {
                        cls = ListView.class;
                        str = "ListView";
                    } else if (adapterView instanceof GridView) {
                        cls = GridView.class;
                        str = "GridView";
                    } else if (adapterView instanceof Spinner) {
                        cls = Spinner.class;
                        str = "Spinner";
                    } else {
                        str = "";
                        cls = null;
                    }
                    ViewContext appClickViewContext = getAppClickViewContext(adapterView, view, cls);
                    if (appClickViewContext == null) {
                        return;
                    }
                    JSONObject jSONObjectBuildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, str);
                    }
                    String viewId = SAViewUtils.getViewId(adapterView);
                    if (!TextUtils.isEmpty(viewId)) {
                        jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                    }
                    Object adapter = adapterView.getAdapter();
                    if (adapter instanceof HeaderViewListAdapter) {
                        adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
                    }
                    if (adapter instanceof SensorsAdapterViewItemTrackProperties) {
                        try {
                            JSONUtils.mergeJSONObject(((SensorsAdapterViewItemTrackProperties) adapter).getSensorsItemTrackProperties(i2), jSONObjectBuildPageProperty);
                        } catch (JSONException e2) {
                            SALog.printStackTrace(e2);
                        }
                    }
                    String viewContent = SAViewUtils.getViewContent(view);
                    if (!TextUtils.isEmpty(viewContent)) {
                        jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, viewContent);
                    }
                    JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), jSONObjectBuildPageProperty);
                    trackAutoEvent(sensorsDataAPI, jSONObjectBuildPageProperty, view);
                }
            } catch (Exception e3) {
                SALog.printStackTrace(e3);
            }
        }
    }

    public static void trackMenuItem(SensorsDataAPI sensorsDataAPI, Object obj, MenuItem menuItem) {
        ViewContext appClickViewContext;
        if (menuItem != null) {
            try {
                if (!isDeBounceTrack(menuItem) && !isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(obj, WindowHelper.getClickView(menuItem), MenuItem.class)) != null) {
                    JSONObject jSONObjectBuildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    try {
                        Activity activity = appClickViewContext.activity;
                        if (activity != null) {
                            String resourceEntryName = activity.getResources().getResourceEntryName(menuItem.getItemId());
                            if (!TextUtils.isEmpty(resourceEntryName)) {
                                jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_ID, resourceEntryName);
                            }
                        }
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                    if (menuItem.getTitle() != null) {
                        String string = menuItem.getTitle().toString();
                        if (appClickViewContext.view != null && TextUtils.isEmpty(string)) {
                            string = SAViewUtils.getViewContent(appClickViewContext.view);
                        }
                        jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, string);
                    }
                    jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "MenuItem");
                    trackAutoEvent(sensorsDataAPI, jSONObjectBuildPageProperty, appClickViewContext.view);
                }
            } catch (Exception e3) {
                SALog.printStackTrace(e3);
            }
        }
    }

    public static void trackRadioGroup(SensorsDataAPI sensorsDataAPI, RadioGroup radioGroup, int i2) {
        View viewFindViewById;
        ViewContext appClickViewContext;
        RadioButton radioButton;
        Exception e2;
        if (radioGroup != null) {
            try {
                if (!isAppClickIgnore(sensorsDataAPI) && (viewFindViewById = radioGroup.findViewById(i2)) != null && viewFindViewById.isPressed() && (appClickViewContext = getAppClickViewContext(radioGroup, RadioGroup.class)) != null) {
                    JSONObject jSONObjectBuildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    String viewId = SAViewUtils.getViewId(radioGroup);
                    if (!TextUtils.isEmpty(viewId)) {
                        jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                    }
                    jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, SAViewUtils.getViewType(viewFindViewById));
                    RadioButton radioButton2 = null;
                    try {
                        Activity activity = appClickViewContext.activity;
                        if (activity != null) {
                            radioButton = (RadioButton) activity.findViewById(radioGroup.getCheckedRadioButtonId());
                            if (radioButton != null) {
                                try {
                                    if (!TextUtils.isEmpty(radioButton.getText())) {
                                        jSONObjectBuildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, radioButton.getText().toString());
                                    }
                                } catch (Exception e3) {
                                    e2 = e3;
                                    SALog.printStackTrace(e2);
                                }
                            }
                            radioButton2 = radioButton;
                        }
                    } catch (Exception e4) {
                        radioButton = null;
                        e2 = e4;
                    }
                    JSONUtils.mergeJSONObject((JSONObject) radioGroup.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), jSONObjectBuildPageProperty);
                    trackAutoEvent(sensorsDataAPI, jSONObjectBuildPageProperty, radioButton2);
                }
            } catch (Exception e5) {
                SALog.printStackTrace(e5);
            }
        }
    }

    public static void trackTabHost(SensorsDataAPI sensorsDataAPI, String str) {
        ViewContext appClickViewContext;
        try {
            if (isAppClickIgnore(sensorsDataAPI) || (appClickViewContext = getAppClickViewContext(AutoTrackViewUtils.getTabView(str), TabHost.class)) == null) {
                return;
            }
            JSONObject jSONObject = null;
            try {
                jSONObject = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                String viewContent = SAViewUtils.getViewContent(appClickViewContext.view);
                if (!TextUtils.isEmpty(viewContent)) {
                    str = viewContent;
                }
                jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, str);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            jSONObject.put(AutoTrackConstants.ELEMENT_TYPE, "TabHost");
            trackAutoEvent(sensorsDataAPI, jSONObject, appClickViewContext.view);
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:96)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:62)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:422)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:57)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:50)
        */
    public static void trackTabLayoutSelected(com.sensorsdata.analytics.android.sdk.SensorsDataAPI r6, java.lang.Object r7, java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.autotrack.core.autotrack.AppClickTrackImpl.trackTabLayoutSelected(com.sensorsdata.analytics.android.sdk.SensorsDataAPI, java.lang.Object, java.lang.Object):void");
    }

    public static void trackViewOnClick(SensorsDataAPI sensorsDataAPI, View view, boolean z) {
        ViewContext appClickViewContext;
        JSONObject jSONObjectInjectClickInfo;
        if (view != null) {
            try {
                if (isAppClickIgnore(sensorsDataAPI) || isDeBounceTrack(view) || KeyboardViewUtil.isKeyboardView(view) || (appClickViewContext = getAppClickViewContext(view, view.getClass())) == null || (jSONObjectInjectClickInfo = AopUtil.injectClickInfo(appClickViewContext, new JSONObject(), z)) == null) {
                    return;
                }
                trackAutoEvent(sensorsDataAPI, jSONObjectInjectClickInfo, view);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    private static ViewContext getAppClickViewContext(View view, Class<?> cls) {
        return getAppClickViewContext(null, view, cls);
    }
}
