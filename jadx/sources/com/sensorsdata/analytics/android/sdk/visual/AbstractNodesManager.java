package com.sensorsdata.analytics.android.sdk.visual;

import android.text.TextUtils;
import android.util.LruCache;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.autotrack.core.beans.AutoTrackConstants;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import com.sensorsdata.analytics.android.sdk.visual.constant.VisualConstants;
import com.sensorsdata.analytics.android.sdk.visual.model.CommonNode;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.rtccloud.sdk.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractNodesManager {
    protected static final String CALL_TYPE_PAGE_INFO = "page_info";
    protected static final String CALL_TYPE_VISUALIZED_TRACK = "visualized_track";
    protected static final int LRU_CACHE_MAX_SIZE = 10;
    private static final String TAG = "SA.Visual.AbstractNodesManager";
    protected static LruCache<String, NodeInfo> sNodesCache;
    protected static LruCache<String, NodeInfo> sPageInfoCache;
    protected boolean mHasAlertInfo;
    private boolean mHasWebView;
    protected String mLastThirdNodeMsg = null;

    public static class NodeRect {
        public float left;
        public float top;

        public NodeRect(float f2, float f3) {
            this.top = f2;
            this.left = f3;
        }
    }

    private void findWebNodes(JSONArray jSONArray, List<CommonNode> list, Map<String, NodeRect> map) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                        CommonNode extraNodesInfo = parseExtraNodesInfo(jSONObjectOptJSONObject);
                        extraNodesInfo.setId(jSONObjectOptJSONObject.optString(b.a.f24015b));
                        extraNodesInfo.set$element_content(jSONObjectOptJSONObject.optString(AutoTrackConstants.ELEMENT_CONTENT));
                        extraNodesInfo.setTop((float) jSONObjectOptJSONObject.optDouble("top"));
                        extraNodesInfo.setLeft((float) jSONObjectOptJSONObject.optDouble("left"));
                        extraNodesInfo.setScrollX((float) jSONObjectOptJSONObject.optDouble("scrollX"));
                        extraNodesInfo.setScrollY((float) jSONObjectOptJSONObject.optDouble("scrollY"));
                        extraNodesInfo.setWidth((float) jSONObjectOptJSONObject.optDouble("width"));
                        extraNodesInfo.setHeight((float) jSONObjectOptJSONObject.optDouble("height"));
                        extraNodesInfo.setLevel(jSONObjectOptJSONObject.optInt("level"));
                        extraNodesInfo.set$element_path(jSONObjectOptJSONObject.optString(VisualConstants.ELEMENT_PATH));
                        extraNodesInfo.set$element_position(jSONObjectOptJSONObject.optString(VisualConstants.ELEMENT_POSITION));
                        extraNodesInfo.setEnable_click(jSONObjectOptJSONObject.optBoolean("enable_click", true));
                        extraNodesInfo.setIs_list_view(jSONObjectOptJSONObject.optBoolean("is_list_view"));
                        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("subelements");
                        ArrayList arrayList = new ArrayList();
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                String strOptString = jSONArrayOptJSONArray.optString(i3);
                                if (!TextUtils.isEmpty(strOptString)) {
                                    arrayList.add(strOptString);
                                    if (!map.containsKey(strOptString)) {
                                        map.put(strOptString, new NodeRect(extraNodesInfo.getTop(), extraNodesInfo.getLeft()));
                                    }
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            extraNodesInfo.setSubelements(arrayList);
                        }
                        list.add(extraNodesInfo);
                    }
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    private void modifyWebNodes(List<? extends CommonNode> list, Map<String, NodeRect> map) {
        if (list == null || list.size() == 0) {
            return;
        }
        synchronized (this) {
            try {
                for (CommonNode commonNode : list) {
                    commonNode.setOriginLeft(commonNode.getLeft());
                    commonNode.setOriginTop(commonNode.getTop());
                    if (map.containsKey(commonNode.getId())) {
                        NodeRect nodeRect = map.get(commonNode.getId());
                        if (nodeRect != null) {
                            commonNode.setTop(commonNode.getTop() - nodeRect.top);
                            commonNode.setLeft(commonNode.getLeft() - nodeRect.left);
                        }
                    } else {
                        commonNode.setRootView(true);
                        boolean zIsNaN = Float.isNaN(commonNode.getScrollY());
                        float scrollX = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float scrollY = !zIsNaN ? commonNode.getScrollY() : 0.0f;
                        if (!Float.isNaN(commonNode.getScrollX())) {
                            scrollX = commonNode.getScrollX();
                        }
                        commonNode.setTop(commonNode.getTop() + scrollY);
                        commonNode.setLeft(commonNode.getLeft() + scrollX);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private List<NodeInfo.AlertInfo> parseAlertResult(String str) {
        ArrayList arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray(DbParams.KEY_DATA);
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i2);
                    if (jSONObject != null) {
                        arrayList2.add(new NodeInfo.AlertInfo(jSONObject.optString("title"), jSONObject.optString("message"), jSONObject.optString("link_text"), jSONObject.optString("link_url")));
                    }
                } catch (JSONException e2) {
                    e = e2;
                    arrayList = arrayList2;
                } catch (Exception e3) {
                    e = e3;
                    arrayList = arrayList2;
                    SALog.printStackTrace(e);
                    return arrayList;
                }
            }
            return arrayList2;
        } catch (JSONException e4) {
            e = e4;
        } catch (Exception e5) {
            e = e5;
        }
        SALog.printStackTrace(e);
        return arrayList;
    }

    private List<CommonNode> parseResult(String str) {
        JSONArray jSONArrayOptJSONArray = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<CommonNode> arrayList = new ArrayList<>();
        Map<String, NodeRect> map = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(DbParams.KEY_DATA);
            try {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("extra_elements");
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
            if (jSONArrayOptJSONArray2 != null) {
                findWebNodes(jSONArrayOptJSONArray2, arrayList, map);
            }
            if (jSONArrayOptJSONArray != null) {
                findWebNodes(jSONArrayOptJSONArray, arrayList, map);
            }
            modifyWebNodes(arrayList, map);
            try {
                Collections.sort(arrayList, new Comparator<CommonNode>() { // from class: com.sensorsdata.analytics.android.sdk.visual.AbstractNodesManager.1
                    @Override // java.util.Comparator
                    public int compare(CommonNode commonNode, CommonNode commonNode2) {
                        return commonNode.getLevel() - commonNode2.getLevel();
                    }
                });
            } catch (Exception e3) {
                SALog.printStackTrace(e3);
            }
        } catch (JSONException e4) {
            SALog.printStackTrace(e4);
        } catch (Exception e5) {
            SALog.printStackTrace(e5);
        }
        return arrayList;
    }

    public void clear() {
        this.mLastThirdNodeMsg = null;
        this.mHasAlertInfo = false;
    }

    public String getLastThirdMsg() {
        return this.mLastThirdNodeMsg;
    }

    public NodeInfo getNodes(String str) {
        if (!VisualizedAutoTrackService.getInstance().isServiceRunning() && !HeatMapService.getInstance().isServiceRunning()) {
            return null;
        }
        if (sNodesCache == null) {
            sNodesCache = new LruCache<>(10);
        }
        return sNodesCache.get(str);
    }

    public NodeInfo getPageInfo(String str) {
        if (!VisualizedAutoTrackService.getInstance().isServiceRunning() && !HeatMapService.getInstance().isServiceRunning()) {
            return null;
        }
        if (sPageInfoCache == null) {
            sPageInfoCache = new LruCache<>(10);
        }
        return sPageInfoCache.get(str);
    }

    public void handlerFailure(String str, String str2) {
        try {
            Dispatcher.getInstance().removeCallbacksAndMessages();
            if ((VisualizedAutoTrackService.getInstance().isServiceRunning() || HeatMapService.getInstance().isServiceRunning()) && !TextUtils.isEmpty(str2)) {
                SALog.i(TAG, "handlerFailure url " + str + ",msg: " + str2);
                this.mHasAlertInfo = true;
                this.mLastThirdNodeMsg = String.valueOf(System.currentTimeMillis());
                List<NodeInfo.AlertInfo> alertResult = parseAlertResult(str2);
                if (alertResult == null || alertResult.size() <= 0) {
                    return;
                }
                if (sNodesCache == null) {
                    sNodesCache = new LruCache<>(10);
                }
                handlerVisualizedFailure(str, alertResult);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void handlerMessage(String str) {
        List<CommonNode> result;
        Dispatcher.getInstance().removeCallbacksAndMessages();
        if ((VisualizedAutoTrackService.getInstance().isServiceRunning() || HeatMapService.getInstance().isServiceRunning()) && !TextUtils.isEmpty(str)) {
            this.mLastThirdNodeMsg = String.valueOf(System.currentTimeMillis());
            this.mHasAlertInfo = false;
            try {
                String strOptString = new JSONObject(str).optString("callType");
                int iHashCode = strOptString.hashCode();
                if (iHashCode != 817885468) {
                    if (iHashCode == 883555422 && strOptString.equals(CALL_TYPE_PAGE_INFO)) {
                        handlerVisualizedPageInfo(str);
                        return;
                    }
                    return;
                }
                if (!strOptString.equals(CALL_TYPE_VISUALIZED_TRACK) || (result = parseResult(str)) == null || result.size() <= 0) {
                    return;
                }
                if (sNodesCache == null) {
                    sNodesCache = new LruCache<>(10);
                }
                handlerVisualizedTrack(result);
            } catch (JSONException e2) {
                SALog.printStackTrace(e2);
            } catch (Exception e3) {
                SALog.printStackTrace(e3);
            }
        }
    }

    public abstract void handlerVisualizedFailure(String str, List<NodeInfo.AlertInfo> list);

    public abstract void handlerVisualizedPageInfo(String str);

    public abstract void handlerVisualizedTrack(List<? extends CommonNode> list);

    public boolean hasAlertInfo() {
        return this.mHasAlertInfo;
    }

    public boolean hasThirdView() {
        return this.mHasWebView;
    }

    public abstract CommonNode parseExtraNodesInfo(JSONObject jSONObject);

    public void setHasThirdView(boolean z) {
        this.mHasWebView = z;
    }
}
