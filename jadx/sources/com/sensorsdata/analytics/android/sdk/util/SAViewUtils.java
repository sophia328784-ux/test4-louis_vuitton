package com.sensorsdata.analytics.android.sdk.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import net.rtccloud.sdk.Call;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SAViewUtils {
    private static final String TAG = "SA.SAViewUtils";
    private static List<String> sOSViewPackage = new LinkedList<String>() { // from class: com.sensorsdata.analytics.android.sdk.util.SAViewUtils.1
        {
            add("android##widget");
            add("android##support##v7##widget");
            add("android##support##design##widget");
            add("android##support##text##emoji##widget");
            add("androidx##appcompat##widget");
            add("androidx##emoji##widget");
            add("androidx##cardview##widget");
            add("com##google##android##material");
        }
    };

    public static JSONObject buildTitleAndScreenName(Activity activity) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$screen_name", activity.getClass().getCanonicalName());
            String activityTitle = SensorsDataUtils.getActivityTitle(activity);
            if (!TextUtils.isEmpty(activityTitle)) {
                jSONObject.put("$title", activityTitle);
            }
            return jSONObject;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return new JSONObject();
        }
    }

    private static void exceptionCollect(View view) {
        if (view != null) {
            try {
                SALog.i(TAG, "viewClass:" + view.getClass());
                SALog.i(TAG, "viewId:" + view.getId());
                Object parent = view.getParent();
                if (parent != null) {
                    if (parent instanceof View) {
                        SALog.i(TAG, "viewParentClass->ID:" + ((View) parent).getId());
                        return;
                    }
                    return;
                }
                if (!(view instanceof ViewGroup) || ((ViewGroup) view).getChildCount() <= 0) {
                    return;
                }
                SALog.i(TAG, "childView->ID:" + ((ViewGroup) view).getChildAt(0).getId());
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public static Activity getActivityOfView(Context context, View view) {
        Activity activity;
        Object tag;
        Activity activity2 = null;
        if (context != null) {
            try {
                if (!(context instanceof Activity)) {
                    if (context instanceof ContextWrapper) {
                        while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                        if (context instanceof Activity) {
                            activity = (Activity) context;
                        }
                    }
                    return (activity2 == null || view == null || (tag = view.getTag(R.id.sensors_analytics_tag_view_activity)) == null || !(tag instanceof Activity)) ? activity2 : (Activity) tag;
                }
                activity = (Activity) context;
                activity2 = activity;
                if (activity2 == null) {
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
        return activity2;
    }

    public static int getChildIndex(ViewParent viewParent, View view) {
        try {
            if (!(viewParent instanceof ViewGroup)) {
                return -1;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            String viewId = getViewId(view);
            String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                View childAt = viewGroup.getChildAt(i3);
                if (Pathfinder.hasClassName(childAt, canonicalName)) {
                    String viewId2 = getViewId(childAt);
                    if ((viewId == null || viewId.equals(viewId2)) && childAt == view) {
                        return i2;
                    }
                    i2++;
                }
            }
            return -1;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return -1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String getElementSelector(View view) {
        String elementSelectorOrigin;
        String selectPath = SnapCache.getInstance().getSelectPath(view);
        if (selectPath != null) {
            return selectPath;
        }
        ViewParent parent = view.getParent();
        View view2 = parent instanceof ViewGroup ? (View) parent : null;
        String selectPath2 = view2 != null ? SnapCache.getInstance().getSelectPath(view2) : null;
        String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
        if (view2 != null) {
            if (selectPath2 == null) {
                selectPath2 = getElementSelectorOrigin(view2);
                SnapCache.getInstance().setSelectPath(view2, selectPath2);
            }
            StringBuilder sb = new StringBuilder();
            if (selectPath2 != null && !selectPath2.equals("")) {
                sb.append(selectPath2);
                sb.append("/");
            }
            int childIndex = getChildIndex(parent, view);
            sb.append(canonicalName);
            sb.append("[");
            sb.append(childIndex);
            sb.append("]");
            elementSelectorOrigin = sb.toString();
        } else {
            elementSelectorOrigin = getElementSelectorOrigin(view);
        }
        SnapCache.getInstance().setSelectPath(view, elementSelectorOrigin);
        return elementSelectorOrigin;
    }

    private static String getElementSelectorOrigin(View view) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        do {
            ViewParent parent = view.getParent();
            linkedList.add(view.getClass().getCanonicalName() + "[" + getChildIndex(parent, view) + "]");
            z = parent instanceof ViewGroup;
            if (z) {
                view = (ViewGroup) parent;
            }
        } while (z);
        Collections.reverse(linkedList);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 1; i2 < linkedList.size(); i2++) {
            sb.append((String) linkedList.get(i2));
            if (i2 != linkedList.size() - 1) {
                sb.append("/");
            }
        }
        return sb.toString();
    }

    public static Object getMenuItemData(View view) {
        try {
            return view.getClass().getMethod("getItemData", null).invoke(view, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static JSONObject getScreenNameAndTitle(View view) {
        if (view == null) {
            return null;
        }
        Activity activityOfView = getActivityOfView(view.getContext(), view);
        if (activityOfView == null) {
            activityOfView = AppStateTools.getInstance().getForegroundActivity();
        }
        if (activityOfView == null || activityOfView.getWindow() == null || !activityOfView.getWindow().isActive()) {
            return null;
        }
        Object fragmentFromView = SAFragmentUtils.getFragmentFromView(view, activityOfView);
        if (fragmentFromView != null) {
            return SAPageInfoUtils.getFragmentPageInfo(activityOfView, fragmentFromView);
        }
        JSONObject activityPageInfo = SAPageInfoUtils.getActivityPageInfo(activityOfView);
        JSONUtils.mergeDuplicateProperty(SAPageInfoUtils.getRNPageInfo(), activityPageInfo);
        return activityPageInfo;
    }

    private static String getTabLayoutContent(Object obj) {
        String string = null;
        try {
            Class<?> currentClass = ReflectUtil.getCurrentClass(new String[]{"android.support.design.widget.TabLayout$Tab", "com.google.android.material.tabs.TabLayout$Tab"});
            if (currentClass != null) {
                Object objCallMethod = ReflectUtil.callMethod(obj, "getText", new Object[0]);
                string = objCallMethod != null ? objCallMethod.toString() : null;
                View view = (View) ReflectUtil.findField(currentClass, obj, "mCustomView", "customView");
                if (view != null) {
                    StringBuilder sb = new StringBuilder();
                    if (!(view instanceof ViewGroup)) {
                        return getViewContent(view);
                    }
                    String strTraverseView = traverseView(sb, (ViewGroup) view);
                    return !TextUtils.isEmpty(strTraverseView) ? strTraverseView.substring(0, strTraverseView.length() - 1) : strTraverseView;
                }
            }
        } catch (Exception unused) {
        }
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01c7 A[PHI: r2
      0x01c7: PHI (r2v12 java.lang.String) = 
      (r2v2 java.lang.String)
      (r2v2 java.lang.String)
      (r2v2 java.lang.String)
      (r2v2 java.lang.String)
      (r2v2 java.lang.String)
      (r2v7 java.lang.String)
      (r2v2 java.lang.String)
      (r2v2 java.lang.String)
      (r2v2 java.lang.String)
     binds: [B:91:0x0192, B:78:0x015c, B:132:0x01c7, B:80:0x0168, B:82:0x017a, B:83:0x017c, B:57:0x00eb, B:59:0x00f1, B:52:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v100 */
    /* JADX WARN: Type inference failed for: r1v101 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v39, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v40, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v43, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v44, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v50, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v53, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v57, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v61, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v65, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v66 */
    /* JADX WARN: Type inference failed for: r1v69, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v72, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v75, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v78, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v79, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v82, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v83, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v84, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v85 */
    /* JADX WARN: Type inference failed for: r1v93, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v95 */
    /* JADX WARN: Type inference failed for: r1v96 */
    /* JADX WARN: Type inference failed for: r1v97 */
    /* JADX WARN: Type inference failed for: r1v98 */
    /* JADX WARN: Type inference failed for: r1v99 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    public static String getViewContent(View view, boolean z) {
        Class<?> classByName;
        ?? text;
        ?? r2;
        Editable text2;
        try {
            if (view == null) {
                SALog.i(TAG, "getViewContent view is null");
                return "";
            }
            String viewType = SnapCache.getInstance().getViewType(view);
            String viewText = SnapCache.getInstance().getViewText(view);
            if (viewType == null || viewText == null) {
                r2 = viewText;
                if (view instanceof CheckBox) {
                    text = ((CheckBox) view).getText();
                } else if (view instanceof RadioButton) {
                    text = ((RadioButton) view).getText();
                } else if (view instanceof ToggleButton) {
                    ToggleButton toggleButton = (ToggleButton) view;
                    text = toggleButton.isChecked() ? toggleButton.getTextOn() : toggleButton.getTextOff();
                } else {
                    String str = null;
                    if (view instanceof CompoundButton) {
                        try {
                            classByName = ReflectUtil.getClassByName("android.support.v7.widget.SwitchCompat");
                        } catch (Exception unused) {
                            classByName = null;
                        }
                        if (classByName == null) {
                            try {
                                classByName = ReflectUtil.getClassByName("androidx.appcompat.widget.SwitchCompat");
                            } catch (Exception unused2) {
                            }
                        }
                        CompoundButton compoundButton = (CompoundButton) view;
                        if ((classByName == null || !classByName.isInstance(view)) && !(view instanceof Switch)) {
                            text = compoundButton.getText();
                        } else {
                            text = (String) (compoundButton.isChecked() ? view.getClass().getMethod("getTextOn", null) : view.getClass().getMethod("getTextOff", null)).invoke(view, null);
                        }
                    } else if (view instanceof Button) {
                        text = ((Button) view).getText();
                    } else if (view instanceof CheckedTextView) {
                        text = ((CheckedTextView) view).getText();
                    } else if (view instanceof TextView) {
                        TextView textView = (TextView) view;
                        if (ReflectUtil.findField(new String[]{"androidx.appcompat.widget.AppCompatTextView"}, textView, "mPrecomputedTextFuture") == null) {
                            text = textView.getText();
                        } else {
                            text = str;
                        }
                    } else if (view instanceof ImageView) {
                        ImageView imageView = (ImageView) view;
                        if (TextUtils.isEmpty(imageView.getContentDescription()) || isWeexView(view)) {
                            text = str;
                        } else {
                            text = imageView.getContentDescription().toString();
                        }
                    } else if (view instanceof RatingBar) {
                        text = String.valueOf(((RatingBar) view).getRating());
                    } else if (view instanceof SeekBar) {
                        text = String.valueOf(((SeekBar) view).getProgress());
                    } else if (view instanceof Spinner) {
                        text = traverseView(new StringBuilder(), (ViewGroup) view);
                        if (!TextUtils.isEmpty(text)) {
                            text = text.toString().substring(0, text.length() - 1);
                        }
                    } else {
                        Object objInstanceOfTabView = instanceOfTabView(view);
                        if (objInstanceOfTabView != null) {
                            text = getTabLayoutContent(objInstanceOfTabView);
                        } else {
                            if (instanceOfBottomNavigationItemView(view)) {
                                Object menuItemData = getMenuItemData(view);
                                if (menuItemData != null) {
                                    try {
                                        Class<?> currentClass = ReflectUtil.getCurrentClass(new String[]{"androidx.appcompat.view.menu.MenuItemImpl"});
                                        if (currentClass != null) {
                                            String str2 = (String) ReflectUtil.findField(currentClass, menuItemData, "mTitle");
                                            if (!TextUtils.isEmpty(str2)) {
                                                str = str2;
                                            }
                                        }
                                    } catch (Exception unused3) {
                                    }
                                }
                            } else if (instanceOfNavigationView(view)) {
                                text = isViewSelfVisible(view) ? "Open" : "Close";
                            } else if (view instanceof ViewGroup) {
                                text = !isWeexView(view) ? view.getContentDescription() : 0;
                                if (TextUtils.isEmpty(text)) {
                                    try {
                                        text = traverseView(new StringBuilder(), (ViewGroup) view);
                                        if (!TextUtils.isEmpty(text)) {
                                            text = text.toString().substring(0, text.length() - 1);
                                        }
                                    } catch (Exception unused4) {
                                    }
                                }
                            }
                            text = str;
                        }
                    }
                }
                boolean zIsEmpty = TextUtils.isEmpty(text);
                ?? hint = text;
                if (zIsEmpty && (view instanceof TextView)) {
                    hint = text;
                    hint = ((TextView) view).getHint();
                }
                hint = text;
                boolean zIsEmpty2 = TextUtils.isEmpty(hint);
                ?? contentDescription = hint;
                if (zIsEmpty2 && (!isWeexView(view) || isWeexTextView(view))) {
                    contentDescription = hint;
                    contentDescription = view.getContentDescription();
                }
                ?? r3 = contentDescription == 0 ? "" : contentDescription;
                SnapCache.getInstance().setViewText(view, r3.toString());
                r2 = r3;
            }
            ?? r4 = r2;
            if (view instanceof EditText) {
                if (z) {
                    text2 = ((EditText) view).getText();
                } else {
                    r4 = "";
                }
            }
            if (r4 == 0) {
                r4 = text2;
                r4 = "";
            }
            r4 = text2;
            return r4.toString();
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }

    public static String getViewGroupTypeByReflect(View view) {
        String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
        Class<?> classByName = ReflectUtil.getClassByName("android.support.v7.widget.CardView");
        if (classByName != null && classByName.isInstance(view)) {
            return getViewType(canonicalName, "CardView");
        }
        Class<?> classByName2 = ReflectUtil.getClassByName("androidx.cardview.widget.CardView");
        if (classByName2 != null && classByName2.isInstance(view)) {
            return getViewType(canonicalName, "CardView");
        }
        Class<?> classByName3 = ReflectUtil.getClassByName("android.support.design.widget.NavigationView");
        if (classByName3 != null && classByName3.isInstance(view)) {
            return getViewType(canonicalName, "NavigationView");
        }
        Class<?> classByName4 = ReflectUtil.getClassByName("com.google.android.material.navigation.NavigationView");
        return (classByName4 == null || !classByName4.isInstance(view)) ? canonicalName : getViewType(canonicalName, "NavigationView");
    }

    public static String getViewId(View view) {
        String resourceEntryName = null;
        try {
            String str = (String) view.getTag(R.id.sensors_analytics_tag_view_id);
            try {
                if (!TextUtils.isEmpty(str) || !isValid(view.getId())) {
                    return str;
                }
                String viewId = SnapCache.getInstance().getViewId(view);
                if (viewId != null) {
                    return viewId;
                }
                resourceEntryName = view.getContext().getResources().getResourceEntryName(view.getId());
                SnapCache.getInstance().setViewId(view, resourceEntryName);
                return resourceEntryName;
                if (SALog.isLogEnabled()) {
                    exceptionCollect(view);
                }
                return resourceEntryName;
            } catch (Exception unused) {
                resourceEntryName = str;
            }
        } catch (Exception unused2) {
        }
    }

    public static String getViewType(View view) {
        String viewType = SnapCache.getInstance().getViewType(view);
        if (viewType == null) {
            viewType = SnapCache.getInstance().getCanonicalName(view.getClass());
            if (view instanceof CheckBox) {
                viewType = getViewType(viewType, "CheckBox");
            } else if (view instanceof RadioButton) {
                viewType = getViewType(viewType, "RadioButton");
            } else if (view instanceof ToggleButton) {
                viewType = getViewType(viewType, "ToggleButton");
            } else if (view instanceof CompoundButton) {
                viewType = getViewTypeByReflect(view);
            } else if (view instanceof Button) {
                viewType = getViewType(viewType, "Button");
            } else if (view instanceof CheckedTextView) {
                viewType = getViewType(viewType, "CheckedTextView");
            } else if (view instanceof TextView) {
                viewType = getViewType(viewType, "TextView");
            } else if (view instanceof ImageView) {
                viewType = getViewType(viewType, "ImageView");
            } else if (view instanceof RatingBar) {
                viewType = getViewType(viewType, "RatingBar");
            } else if (view instanceof SeekBar) {
                viewType = getViewType(viewType, "SeekBar");
            } else if (view instanceof Spinner) {
                viewType = getViewType(viewType, "Spinner");
            } else if (instanceOfTabView(view) != null) {
                viewType = getViewType(viewType, "TabLayout");
            } else if (instanceOfNavigationView(view)) {
                viewType = getViewType(viewType, "NavigationView");
            } else if (view instanceof ViewGroup) {
                viewType = getViewGroupTypeByReflect(view);
            }
            SnapCache.getInstance().setViewType(view, viewType);
        }
        return viewType;
    }

    public static String getViewTypeByReflect(View view) {
        String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
        Class<?> classByName = ReflectUtil.getClassByName("android.widget.Switch");
        if (classByName != null && classByName.isInstance(view)) {
            return getViewType(canonicalName, "Switch");
        }
        Class<?> classByName2 = ReflectUtil.getClassByName("android.support.v7.widget.SwitchCompat");
        if (classByName2 != null && classByName2.isInstance(view)) {
            return getViewType(canonicalName, "SwitchCompat");
        }
        Class<?> classByName3 = ReflectUtil.getClassByName("androidx.appcompat.widget.SwitchCompat");
        return (classByName3 == null || !classByName3.isInstance(view)) ? canonicalName : getViewType(canonicalName, "SwitchCompat");
    }

    public static boolean instanceOfActionMenuItem(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.view.menu.ActionMenuItem");
    }

    public static boolean instanceOfAndroidXListMenuItemView(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.view.menu.ListMenuItemView");
    }

    public static boolean instanceOfBottomNavigationItemView(Object obj) {
        return ReflectUtil.isInstance(obj, "com.google.android.material.bottomnavigation.BottomNavigationItemView", "android.support.design.internal.NavigationMenuItemView");
    }

    public static boolean instanceOfNavigationView(Object obj) {
        return ReflectUtil.isInstance(obj, "android.support.design.widget.NavigationView", "com.google.android.material.navigation.NavigationView");
    }

    public static boolean instanceOfSupportListMenuItemView(Object obj) {
        return ReflectUtil.isInstance(obj, "android.support.v7.view.menu.ListMenuItemView");
    }

    private static Object instanceOfTabView(View view) {
        if (view == null) {
            return null;
        }
        try {
            Class<?> currentClass = ReflectUtil.getCurrentClass(new String[]{"android.support.design.widget.TabLayout$TabView", "com.google.android.material.tabs.TabLayout$TabView"});
            if (currentClass != null && currentClass.isAssignableFrom(view.getClass())) {
                return ReflectUtil.findField(currentClass, view, "mTab", "tab");
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        return null;
    }

    public static boolean instanceOfToolbar(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.widget.Toolbar", "android.support.v7.widget.Toolbar", "android.widget.Toolbar");
    }

    private static boolean isOSViewByPackage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strReplace = str.replace(com.sightcall.universal.media.offline.FileUtils.HIDDEN_PREFIX, "##");
        Iterator<String> it = sOSViewPackage.iterator();
        while (it.hasNext()) {
            if (strReplace.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    private static boolean isValid(int i2) {
        return (i2 == -1 || ((-16777216) & i2) == 0 || (i2 & 16711680) == 0) ? false : true;
    }

    public static boolean isViewIgnored(View view) {
        if (view == null) {
            return true;
        }
        try {
            List<Class<?>> ignoredViewTypeList = SensorsDataAPI.sharedInstance().getIgnoredViewTypeList();
            if (ignoredViewTypeList != null) {
                Iterator<Class<?>> it = ignoredViewTypeList.iterator();
                while (it.hasNext()) {
                    if (it.next().isAssignableFrom(view.getClass())) {
                        return true;
                    }
                }
            }
            return "1".equals(view.getTag(R.id.sensors_analytics_tag_view_ignored));
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return true;
        }
    }

    public static boolean isViewSelfVisible(View view) {
        if (view != null && view.getWindowVisibility() != 8) {
            if (WindowHelper.isDecorView(view.getClass())) {
                return true;
            }
            boolean localVisibleRect = view.getLocalVisibleRect(new Rect());
            if (view.getWidth() > 0 && view.getHeight() > 0 && view.getAlpha() > Call.Parameters.DEFAULT_CAMERA_ZOOM && localVisibleRect) {
                return !(view.getVisibility() == 0 || view.getAnimation() == null || !view.getAnimation().getFillAfter()) || view.getVisibility() == 0;
            }
        }
        return false;
    }

    public static boolean isWeexTextView(View view) {
        if (view == null) {
            return false;
        }
        String name = view.getClass().getName();
        return name.equals("com.taobao.weex.ui.view.WXTextView") || name.equals("org.apache.weex.ui.view.WXTextView");
    }

    public static boolean isWeexView(View view) {
        if (view == null) {
            return false;
        }
        String name = view.getClass().getName();
        return name.startsWith("com.taobao.weex.ui.view") || name.startsWith("org.apache.weex.ui.view");
    }

    public static String traverseView(StringBuilder sb, ViewGroup viewGroup) {
        if (sb == null) {
            try {
                sb = new StringBuilder();
            } catch (Throwable th) {
                SALog.i(TAG, th.getMessage());
                return sb != null ? sb.toString() : "";
            }
        }
        if (viewGroup == null) {
            return sb.toString();
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt != null && childAt.getVisibility() == 0) {
                if (childAt instanceof ViewGroup) {
                    traverseView(sb, (ViewGroup) childAt);
                } else if (!isViewIgnored(childAt)) {
                    String viewContent = getViewContent(childAt);
                    if (!TextUtils.isEmpty(viewContent)) {
                        sb.append(viewContent);
                        sb.append("-");
                    }
                }
            }
        }
        return sb.toString();
    }

    public static boolean isViewIgnored(Class<?> cls) {
        if (cls == null) {
            return true;
        }
        try {
            List<Class<?>> ignoredViewTypeList = SensorsDataAPI.sharedInstance().getIgnoredViewTypeList();
            if (ignoredViewTypeList.isEmpty()) {
                return false;
            }
            Iterator<Class<?>> it = ignoredViewTypeList.iterator();
            while (it.hasNext()) {
                if (it.next().isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    private static String getViewType(String str, String str2) {
        return (TextUtils.isEmpty(str) || isOSViewByPackage(str)) ? str2 : str;
    }

    public static String getViewContent(View view) {
        return getViewContent(view, false);
    }
}
