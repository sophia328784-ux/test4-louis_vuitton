package com.sensorsdata.analytics.android.sdk.util.visual;

import android.app.Activity;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import defpackage.n00;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ViewTreeStatusObservable {
    private static final String TAG = "SA.ViewTreeStatusObservable";
    public static volatile ViewTreeStatusObservable viewTreeStatusObservable;
    private SparseArray<ViewNode> mViewNodesWithHashCode = new SparseArray<>();
    private HashMap<String, ViewNode> mViewNodesHashMap = new HashMap<>();
    private HashMap<String, ViewNode> mWebViewHashMap = new HashMap<>();

    private String generateKey(String str, String str2, String str3) {
        StringBuilder sbT = n00.t(str);
        if (!TextUtils.isEmpty(str2)) {
            sbT.append(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            sbT.append(str3);
        }
        return sbT.toString();
    }

    private ViewNode getCacheViewPathAndPosition(View view, boolean z) {
        String viewPosition;
        ViewNode viewNode;
        View view2;
        int iLastIndexOf;
        ViewNode viewNode2 = this.mViewNodesWithHashCode.get(view.hashCode());
        if (viewNode2 != null) {
            return viewNode2;
        }
        Object parent = view.getParent();
        View view3 = parent instanceof ViewGroup ? (View) parent : null;
        if (view3 != null) {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            ViewNode viewPathAndPosition = this.mViewNodesWithHashCode.get(view3.hashCode());
            if (viewPathAndPosition == null) {
                viewPathAndPosition = ViewUtil.getViewPathAndPosition(view3, z);
                this.mViewNodesWithHashCode.put(view3.hashCode(), viewPathAndPosition);
            }
            if (viewPathAndPosition != null) {
                sb.append(viewPathAndPosition.getViewOriginalPath());
                sb2.append(viewPathAndPosition.getViewPath());
                viewPosition = viewPathAndPosition.getViewPosition();
            } else {
                viewPosition = "";
            }
            viewNode = ViewUtil.getViewNode(view, ((ViewGroup) view3).indexOfChild(view), z);
            if (viewNode != null && !TextUtils.isEmpty(viewNode.getViewPath()) && viewNode.getViewPath().contains("-") && !TextUtils.isEmpty(viewPosition) && (iLastIndexOf = sb2.lastIndexOf("-")) != -1) {
                sb2.replace(iLastIndexOf, iLastIndexOf + 1, String.valueOf(viewPosition));
            }
            if (viewNode != null) {
                sb.append(viewNode.getViewOriginalPath());
                sb2.append(viewNode.getViewPath());
                view2 = view;
                viewNode = new ViewNode(view2, viewNode.getViewPosition(), sb.toString(), sb2.toString(), viewNode.getViewContent());
            }
            this.mViewNodesWithHashCode.put(view2.hashCode(), viewNode);
            return viewNode;
        }
        viewNode = ViewUtil.getViewPathAndPosition(view, z);
        view2 = view;
        this.mViewNodesWithHashCode.put(view2.hashCode(), viewNode);
        return viewNode;
    }

    public static ViewTreeStatusObservable getInstance() {
        if (viewTreeStatusObservable == null) {
            synchronized (ViewTreeStatusObservable.class) {
                try {
                    if (viewTreeStatusObservable == null) {
                        viewTreeStatusObservable = new ViewTreeStatusObservable();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return viewTreeStatusObservable;
    }

    private ViewNode getSingleViewPathAndPosition(View view, boolean z) {
        String viewPosition;
        int iLastIndexOf;
        Object parent = view.getParent();
        View view2 = parent instanceof ViewGroup ? (View) parent : null;
        if (view2 == null) {
            return ViewUtil.getViewPathAndPosition(view, z);
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        ViewNode viewPathAndPosition = ViewUtil.getViewPathAndPosition(view2, z);
        if (viewPathAndPosition != null) {
            sb.append(viewPathAndPosition.getViewOriginalPath());
            sb2.append(viewPathAndPosition.getViewPath());
            viewPosition = viewPathAndPosition.getViewPosition();
        } else {
            viewPosition = "";
        }
        ViewNode viewNode = ViewUtil.getViewNode(view, ((ViewGroup) view2).indexOfChild(view), z);
        if (viewNode == null) {
            return viewNode;
        }
        if (!TextUtils.isEmpty(viewNode.getViewPath()) && viewNode.getViewPath().contains("-") && !TextUtils.isEmpty(viewPosition) && (iLastIndexOf = sb2.lastIndexOf("-")) != -1) {
            sb2.replace(iLastIndexOf, iLastIndexOf + 1, String.valueOf(viewPosition));
        }
        sb.append(viewNode.getViewOriginalPath());
        sb2.append(viewNode.getViewPath());
        return new ViewNode(view, viewNode.getViewPosition(), sb.toString(), sb2.toString(), viewNode.getViewContent());
    }

    private void traverseNode(View view, SparseArray<ViewNode> sparseArray, HashMap<String, ViewNode> map, HashMap<String, ViewNode> map2) {
        JSONObject screenNameAndTitle;
        if (view == null) {
            return;
        }
        try {
            ViewNode cacheViewPathAndPosition = getCacheViewPathAndPosition(view, true);
            if (cacheViewPathAndPosition != null) {
                sparseArray.put(view.hashCode(), cacheViewPathAndPosition);
                if (!TextUtils.isEmpty(cacheViewPathAndPosition.getViewPath()) && (screenNameAndTitle = SAViewUtils.getScreenNameAndTitle(view)) != null) {
                    String strOptString = screenNameAndTitle.optString("$screen_name");
                    if (!TextUtils.isEmpty(strOptString)) {
                        if (!TextUtils.isEmpty(cacheViewPathAndPosition.getViewContent())) {
                            map.put(generateKey(cacheViewPathAndPosition.getViewPath(), cacheViewPathAndPosition.getViewPosition(), strOptString), cacheViewPathAndPosition);
                        }
                        if (ViewUtil.instanceOfWebView(view)) {
                            map2.put(cacheViewPathAndPosition.getViewPath() + strOptString, cacheViewPathAndPosition);
                        }
                    }
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt != null) {
                        traverseNode(childAt, sparseArray, map, map2);
                    }
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void clearViewNodeCache() {
        this.mViewNodesWithHashCode.clear();
        this.mViewNodesHashMap.clear();
    }

    public void clearWebViewCache() {
        try {
            HashMap<String, ViewNode> map = this.mWebViewHashMap;
            if (map != null) {
                map.clear();
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public List<View> getCurrentWebView() {
        try {
            if (this.mWebViewHashMap.size() == 0) {
                traverseNode();
            }
            if (this.mWebViewHashMap.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<ViewNode> it = this.mWebViewHashMap.values().iterator();
            while (it.hasNext()) {
                WeakReference<View> view = it.next().getView();
                if (view != null && view.get() != null) {
                    arrayList.add(view.get());
                }
            }
            return arrayList;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    public ViewNode getViewNode(WeakReference<View> weakReference, String str, String str2, String str3) {
        Activity foregroundActivity;
        ViewNode viewNode = null;
        rootView = null;
        View rootView = null;
        try {
            ViewNode viewNode2 = this.mViewNodesHashMap.get(generateKey(str, str2, str3));
            if (viewNode2 != null) {
                return viewNode2;
            }
            if (weakReference != null) {
                try {
                    if (weakReference.get() != null) {
                        rootView = weakReference.get().getRootView();
                    }
                } catch (Exception e2) {
                    e = e2;
                    viewNode = viewNode2;
                    SALog.printStackTrace(e);
                    return viewNode;
                }
            }
            if (rootView == null && (foregroundActivity = AppStateTools.getInstance().getForegroundActivity()) != null && foregroundActivity.getWindow() != null && foregroundActivity.getWindow().isActive()) {
                rootView = foregroundActivity.getWindow().getDecorView();
            }
            if (rootView != null) {
                traverseNode(rootView);
            }
            return this.mViewNodesHashMap.get(generateKey(str, str2, str3));
        } catch (Exception e3) {
            e = e3;
        }
    }

    public ViewNode getViewPathAndPosition(View view) {
        return getSingleViewPathAndPosition(view, false);
    }

    public ViewNode getViewNode(View view) {
        try {
            return getViewPathAndPosition(view);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    public ViewNode getViewNode(String str) {
        ViewNode viewNode = null;
        decorView = null;
        decorView = null;
        View decorView = null;
        try {
            ViewNode viewNode2 = this.mWebViewHashMap.get(str);
            if (viewNode2 != null) {
                try {
                    if (viewNode2.getView() != null && viewNode2.getView().get() != null) {
                        return viewNode2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    viewNode = viewNode2;
                    SALog.printStackTrace(e);
                    return viewNode;
                }
            }
            Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
            if (foregroundActivity != null && foregroundActivity.getWindow() != null && foregroundActivity.getWindow().isActive()) {
                decorView = foregroundActivity.getWindow().getDecorView();
            }
            if (decorView != null) {
                traverseNode(decorView);
            }
            return this.mWebViewHashMap.get(str);
        } catch (Exception e3) {
            e = e3;
        }
    }

    private void traverseNode(View view) {
        try {
            this.mViewNodesHashMap.clear();
            this.mViewNodesWithHashCode.clear();
            this.mWebViewHashMap.clear();
            SparseArray<ViewNode> sparseArray = new SparseArray<>();
            HashMap<String, ViewNode> map = new HashMap<>();
            HashMap<String, ViewNode> map2 = new HashMap<>();
            if (view != null) {
                traverseNode(view, sparseArray, map, map2);
            } else {
                for (View view2 : WindowHelper.getSortedWindowViews()) {
                    traverseNode(view2, sparseArray, map, map2);
                }
            }
            this.mViewNodesHashMap = map;
            this.mViewNodesWithHashCode = sparseArray;
            this.mWebViewHashMap = map2;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void traverseNode() {
        traverseNode(null);
    }
}
