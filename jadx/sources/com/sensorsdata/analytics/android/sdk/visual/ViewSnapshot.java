package com.sensorsdata.analytics.android.sdk.visual;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.LruCache;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import com.sensorsdata.analytics.android.sdk.util.DeviceUtils;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.SnapCache;
import com.sensorsdata.analytics.android.sdk.util.WebUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewUtil;
import com.sensorsdata.analytics.android.sdk.visual.model.CommonNode;
import com.sensorsdata.analytics.android.sdk.visual.model.FlutterNode;
import com.sensorsdata.analytics.android.sdk.visual.model.FlutterNodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.WebNode;
import com.sensorsdata.analytics.android.sdk.visual.model.WebNodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.snap.Caller;
import com.sensorsdata.analytics.android.sdk.visual.snap.PropertyDescription;
import com.sensorsdata.analytics.android.sdk.visual.snap.ResourceIds;
import com.sensorsdata.analytics.android.sdk.visual.snap.SoftWareCanvas;
import com.sensorsdata.analytics.android.sdk.visual.utils.AlertMessageUtils;
import com.sensorsdata.analytics.android.sdk.visual.utils.VisualUtil;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.fc;
import defpackage.n00;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import net.rtccloud.sdk.Call;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ViewSnapshot {
    private static final int JS_NOT_INTEGRATED_ALERT_TIME_OUT = 5000;
    private static final int MAX_CLASS_NAME_CACHE_SIZE = 255;
    private static final String TAG = "SA.ViewSnapshot";
    private final Handler mMainThreadHandler;
    private final List<PropertyDescription> mProperties;
    private final ResourceIds mResourceIds;
    private SnapInfo mSnapInfo = new SnapInfo();
    private final RootViewFinder mRootViewFinder = new RootViewFinder();
    private final ClassNameCache mClassnameCache = new ClassNameCache(255);

    public static class CachedBitmap {
        private String mImageHash = "";
        private final Paint mPaint = new Paint(2);
        private Bitmap mCached = null;

        private static byte[] concat(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getImageHash() {
            return this.mImageHash;
        }

        private String toHex(byte[] bArr) {
            String string = "";
            for (int i2 = 0; i2 < bArr.length; i2++) {
                StringBuilder sbT = n00.t(string);
                sbT.append("0123456789ABCDEF".charAt((bArr[i2] >> 4) & 15));
                StringBuilder sbT2 = n00.t(sbT.toString());
                sbT2.append("0123456789ABCDEF".charAt(bArr[i2] & 15));
                string = sbT2.toString();
            }
            return string;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0030 A[Catch: all -> 0x0016, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:20:0x002c, B:22:0x0030, B:23:0x003d, B:25:0x0061, B:27:0x0067, B:29:0x006a, B:32:0x0071, B:34:0x0083, B:36:0x0089, B:38:0x008c, B:39:0x0090, B:41:0x009e, B:43:0x00a4, B:45:0x00a7, B:46:0x00ab, B:48:0x00bc, B:17:0x0025, B:19:0x0029, B:16:0x0023, B:13:0x0019), top: B:57:0x0003, inners: #0, #1 }] */
        public synchronized void recreate(int i2, int i3, int i4, Bitmap bitmap) {
            byte[] byteArray;
            String lastThirdMsg;
            String lastThirdMsg2;
            String lastDebugInfo;
            byte[] bytes;
            byte[] bytes2;
            byte[] bytes3;
            Bitmap bitmap2 = this.mCached;
            if (bitmap2 == null || bitmap2.getWidth() != i2 || this.mCached.getHeight() != i3) {
                try {
                    this.mCached = Bitmap.createBitmap(i2, i3, Bitmap.Config.RGB_565);
                } catch (Throwable unused) {
                    this.mCached = null;
                }
                Bitmap bitmap3 = this.mCached;
                if (bitmap3 != null) {
                    bitmap3.setDensity(i4);
                }
                if (this.mCached != null) {
                    new Canvas(this.mCached).drawBitmap(bitmap, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.mPaint);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        this.mCached.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                        byteArray = byteArrayOutputStream.toByteArray();
                        lastThirdMsg = NodesProcess.getInstance().getWebNodesManager().getLastThirdMsg();
                        if (!TextUtils.isEmpty(lastThirdMsg) && (bytes3 = lastThirdMsg.getBytes()) != null && bytes3.length > 0) {
                            byteArray = concat(byteArray, bytes3);
                        }
                        lastThirdMsg2 = NodesProcess.getInstance().getFlutterNodesManager().getLastThirdMsg();
                        if (!TextUtils.isEmpty(lastThirdMsg2) && (bytes2 = lastThirdMsg2.getBytes()) != null && bytes2.length > 0) {
                            byteArray = concat(byteArray, bytes2);
                        }
                        lastDebugInfo = VisualizedAutoTrackService.getInstance().getLastDebugInfo();
                        if (!TextUtils.isEmpty(lastDebugInfo) && (bytes = lastDebugInfo.getBytes()) != null && bytes.length > 0) {
                            byteArray = concat(byteArray, bytes);
                        }
                        this.mImageHash = toHex(MessageDigest.getInstance("MD5").digest(byteArray));
                    } catch (Exception e2) {
                        SALog.i(ViewSnapshot.TAG, "CachedBitmap.recreate;Create image_hash error=" + e2);
                    }
                }
            } else if (this.mCached != null) {
                new Canvas(this.mCached).drawBitmap(bitmap, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.mPaint);
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                this.mCached.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                byteArray = byteArrayOutputStream2.toByteArray();
                lastThirdMsg = NodesProcess.getInstance().getWebNodesManager().getLastThirdMsg();
                if (!TextUtils.isEmpty(lastThirdMsg)) {
                    byteArray = concat(byteArray, bytes3);
                }
                lastThirdMsg2 = NodesProcess.getInstance().getFlutterNodesManager().getLastThirdMsg();
                if (!TextUtils.isEmpty(lastThirdMsg2)) {
                    byteArray = concat(byteArray, bytes2);
                }
                lastDebugInfo = VisualizedAutoTrackService.getInstance().getLastDebugInfo();
                if (!TextUtils.isEmpty(lastDebugInfo)) {
                    byteArray = concat(byteArray, bytes);
                }
                this.mImageHash = toHex(MessageDigest.getInstance("MD5").digest(byteArray));
            }
            throw th;
        }

        public synchronized void writeBitmapJSON(Bitmap.CompressFormat compressFormat, int i2, OutputStream outputStream) throws IOException {
            try {
                Bitmap bitmap = this.mCached;
                if (bitmap == null || bitmap.getWidth() == 0 || this.mCached.getHeight() == 0) {
                    outputStream.write("null".getBytes());
                } else {
                    outputStream.write(34);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    this.mCached.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    byteArrayOutputStream.flush();
                    outputStream.write(new String(Base64Coder.encode(byteArrayOutputStream.toByteArray())).getBytes());
                    outputStream.write(34);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static class RootViewFinder implements Callable<List<RootViewInfo>> {
        private final int mClientDensity = 160;
        private final List<RootViewInfo> mRootViews = new ArrayList();
        private final CachedBitmap mCachedBitmap = new CachedBitmap();

        private static Bitmap getFlutterBitmap(Activity activity) {
            try {
                Method declaredMethod = Class.forName("io.flutter.embedding.android.FlutterActivity").getDeclaredMethod("getFlutterEngine", null);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(activity, null);
                Method method = Class.forName("io.flutter.embedding.engine.FlutterEngine").getMethod("getRenderer", null);
                method.setAccessible(true);
                Object objInvoke2 = method.invoke(objInvoke, null);
                Method method2 = Class.forName("io.flutter.embedding.engine.renderer.FlutterRenderer").getMethod("getBitmap", null);
                method2.setAccessible(true);
                return (Bitmap) method2.invoke(objInvoke2, null);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
                return null;
            }
        }

        private void scaleBitmap(RootViewInfo rootViewInfo, Bitmap bitmap) {
            float f2 = 1.0f;
            if (bitmap != null) {
                int density = bitmap.getDensity();
                f2 = density != 0 ? 160.0f / density : 1.0f;
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int width2 = (int) (((double) (bitmap.getWidth() * f2)) + 0.5d);
                int height2 = (int) (((double) (bitmap.getHeight() * f2)) + 0.5d);
                if (width > 0 && height > 0 && width2 > 0 && height2 > 0) {
                    this.mCachedBitmap.recreate(width2, height2, 160, bitmap);
                }
            }
            rootViewInfo.scale = f2;
            rootViewInfo.screenshot = this.mCachedBitmap;
        }

        @Override // java.util.concurrent.Callable
        public List<RootViewInfo> call() throws Exception {
            FlutterNodeInfo flutterNodeInfo;
            this.mRootViews.clear();
            try {
                Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
                if (foregroundActivity != null) {
                    JSONObject activityPageInfo = SAPageInfoUtils.getActivityPageInfo(foregroundActivity);
                    JSONObject rNPageInfo = SAPageInfoUtils.getRNPageInfo();
                    if (activityPageInfo == null) {
                        activityPageInfo = new JSONObject();
                    }
                    JSONUtils.mergeDuplicateProperty(rNPageInfo, activityPageInfo);
                    String strOptString = activityPageInfo.optString("$screen_name");
                    String strOptString2 = activityPageInfo.optString("$title");
                    boolean zInstanceOfFlutterActivity = ViewUtil.instanceOfFlutterActivity(foregroundActivity);
                    if (zInstanceOfFlutterActivity && (flutterNodeInfo = (FlutterNodeInfo) NodesProcess.getInstance().getFlutterNodesManager().getPageInfo(SnapCache.getInstance().getCanonicalName(foregroundActivity.getClass()))) != null) {
                        String screen_name = flutterNodeInfo.getScreen_name();
                        String title = flutterNodeInfo.getTitle();
                        if (!TextUtils.isEmpty(strOptString)) {
                            strOptString = screen_name;
                        }
                        if (!TextUtils.isEmpty(title)) {
                            strOptString2 = title;
                        }
                    }
                    Window window = foregroundActivity.getWindow();
                    View rootView = (window == null || !window.isActive()) ? null : window.getDecorView().getRootView();
                    if (rootView == null) {
                        return this.mRootViews;
                    }
                    RootViewInfo rootViewInfo = new RootViewInfo(strOptString, strOptString2, rootView);
                    View[] sortedWindowViews = WindowHelper.getSortedWindowViews();
                    if (zInstanceOfFlutterActivity) {
                        scaleBitmap(rootViewInfo, getFlutterBitmap(foregroundActivity));
                        this.mRootViews.add(rootViewInfo);
                    } else if (sortedWindowViews != null && sortedWindowViews.length > 0) {
                        Bitmap bitmapMergeViewLayers = mergeViewLayers(sortedWindowViews, rootViewInfo);
                        for (View view : sortedWindowViews) {
                            if (view.getWindowVisibility() == 0 && view.getVisibility() == 0 && view.getWidth() != 0 && view.getHeight() != 0 && !TextUtils.equals(WindowHelper.getWindowPrefix(view), WindowHelper.getMainWindowPrefix()) && !WindowHelper.isCustomWindow(view)) {
                                RootViewInfo rootViewInfo2 = new RootViewInfo(strOptString, strOptString2, view.getRootView());
                                scaleBitmap(rootViewInfo2, bitmapMergeViewLayers);
                                this.mRootViews.add(rootViewInfo2);
                            }
                        }
                        if (this.mRootViews.size() == 0) {
                            scaleBitmap(rootViewInfo, bitmapMergeViewLayers);
                            this.mRootViews.add(rootViewInfo);
                        }
                    }
                }
            } catch (Throwable th) {
                SALog.d(ViewSnapshot.TAG, "" + th);
            }
            return this.mRootViews;
        }

        public Bitmap mergeViewLayers(View[] viewArr, RootViewInfo rootViewInfo) {
            int width = rootViewInfo.rootView.getWidth();
            int height = rootViewInfo.rootView.getHeight();
            if (width == 0 || height == 0) {
                int[] deviceSize = DeviceUtils.getDeviceSize(SensorsDataAPI.sharedInstance().getSAContextManager().getContext());
                int i2 = deviceSize[0];
                int i3 = deviceSize[1];
                if (i2 == 0 || i3 == 0) {
                    return null;
                }
                height = i3;
                width = i2;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            SoftWareCanvas softWareCanvas = new SoftWareCanvas(bitmapCreateBitmap);
            int[] iArr = new int[2];
            boolean z = ViewUtil.getMainWindowCount(viewArr) > 1;
            WindowHelper.init();
            ViewUtil.invalidateLayerTypeView(viewArr);
            boolean z2 = false;
            for (View view : viewArr) {
                if (view.getVisibility() == 0 && view.getWidth() != 0 && view.getHeight() != 0 && ViewUtil.isWindowNeedTraverse(view, WindowHelper.getWindowPrefix(view), z)) {
                    softWareCanvas.save();
                    if (!WindowHelper.isMainWindow(view)) {
                        view.getLocationOnScreen(iArr);
                        softWareCanvas.translate(iArr[0], iArr[1]);
                        if (WindowHelper.isDialogOrPopupWindow(view) && !z2) {
                            Paint paint = new Paint();
                            paint.setColor(-1610612736);
                            softWareCanvas.drawRect(-iArr[0], -iArr[1], softWareCanvas.getWidth(), softWareCanvas.getHeight(), paint);
                            z2 = true;
                        }
                    }
                    view.draw(softWareCanvas);
                    softWareCanvas.restoreToCount(1);
                }
            }
            softWareCanvas.destroy();
            return bitmapCreateBitmap;
        }
    }

    public static class RootViewInfo {
        final String activityTitle;
        final View rootView;
        final String screenName;
        CachedBitmap screenshot = null;
        float scale = 1.0f;

        public RootViewInfo(String str, String str2, View view) {
            this.screenName = str;
            this.activityTitle = str2;
            this.rootView = view;
        }
    }

    public ViewSnapshot(List<PropertyDescription> list, ResourceIds resourceIds, Handler handler) {
        this.mProperties = list;
        this.mResourceIds = resourceIds;
        this.mMainThreadHandler = handler;
    }

    private void addProperties(JSONObject jSONObject, View view) throws Exception {
        Caller caller;
        Object objApplyMethod;
        jSONObject.put("importantForAccessibility", true);
        Class<?> cls = view.getClass();
        for (PropertyDescription propertyDescription : this.mProperties) {
            if (propertyDescription.targetClass.isAssignableFrom(cls) && (caller = propertyDescription.accessor) != null && (objApplyMethod = caller.applyMethod(view)) != null) {
                if (objApplyMethod instanceof Number) {
                    jSONObject.put(propertyDescription.name, objApplyMethod);
                } else if (objApplyMethod instanceof Boolean) {
                    boolean zBooleanValue = ((Boolean) objApplyMethod).booleanValue();
                    if ("clickable".equals(propertyDescription.name)) {
                        if (VisualUtil.isSupportClick(view)) {
                            zBooleanValue = true;
                        } else if (VisualUtil.isForbiddenClick(view)) {
                            zBooleanValue = false;
                        }
                    }
                    jSONObject.put(propertyDescription.name, zBooleanValue);
                } else if (objApplyMethod instanceof ColorStateList) {
                    jSONObject.put(propertyDescription.name, Integer.valueOf(((ColorStateList) objApplyMethod).getDefaultColor()));
                } else if (objApplyMethod instanceof Drawable) {
                    Drawable drawable = (Drawable) objApplyMethod;
                    Rect bounds = drawable.getBounds();
                    JSONObject jSONObject2 = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    for (Class<?> superclass = drawable.getClass(); superclass != Object.class && superclass != null; superclass = superclass.getSuperclass()) {
                        jSONArray.put(SnapCache.getInstance().getCanonicalName(superclass));
                    }
                    jSONObject2.put("classes", jSONArray);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("left", bounds.left);
                    jSONObject3.put("right", bounds.right);
                    jSONObject3.put("top", bounds.top);
                    jSONObject3.put("bottom", bounds.bottom);
                    jSONObject2.put("dimensions", jSONObject3);
                    if (drawable instanceof ColorDrawable) {
                        jSONObject2.put("color", ((ColorDrawable) drawable).getColor());
                    }
                    jSONObject.put(propertyDescription.name, jSONObject2);
                } else {
                    jSONObject.put(propertyDescription.name, objApplyMethod.toString());
                }
            }
        }
    }

    private String getResName(View view) {
        int id = view.getId();
        if (-1 == id) {
            return null;
        }
        return this.mResourceIds.nameForId(id);
    }

    private void getVisibleRect(View view, Rect rect, boolean z) {
        if (z) {
            view.getGlobalVisibleRect(rect);
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        view.getLocalVisibleRect(rect);
        rect.offset(iArr[0], iArr[1]);
    }

    private boolean isSnapShotUpdated(String str, StringBuilder sb) {
        boolean z = !((str == null || sb == null) ? false : str.equals(sb.toString())) || NodesProcess.getInstance().getWebNodesManager().hasAlertInfo() || NodesProcess.getInstance().getFlutterNodesManager().hasAlertInfo();
        if (sb != null) {
            sb.delete(0, sb.length()).append(str);
        }
        return z;
    }

    private void mergeThirdViewNodes(JSONArray jSONArray, CommonNode commonNode, View view, float f2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("hashCode", commonNode.getId() + view.hashCode());
            jSONObject.put("index", 0);
            if (!TextUtils.isEmpty(commonNode.get$element_content())) {
                jSONObject.put("element_content", commonNode.get$element_content());
            }
            SnapInfo snapInfo = this.mSnapInfo;
            int i2 = snapInfo.elementLevel + 1;
            snapInfo.elementLevel = i2;
            jSONObject.put("element_level", i2);
            if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 = commonNode.getScale();
            }
            float top = commonNode.getTop() * f2;
            jSONObject.put("left", commonNode.getLeft() * f2);
            jSONObject.put("top", top);
            jSONObject.put("width", (int) (commonNode.getWidth() * f2));
            jSONObject.put("height", (int) (commonNode.getHeight() * f2));
            jSONObject.put("visibility", (commonNode.isVisibility() && (((commonNode.getOriginTop() * f2) > ((float) view.getHeight()) ? 1 : ((commonNode.getOriginTop() * f2) == ((float) view.getHeight()) ? 0 : -1)) <= 0 && ((commonNode.getOriginLeft() * f2) > ((float) view.getWidth()) ? 1 : ((commonNode.getOriginLeft() * f2) == ((float) view.getWidth()) ? 0 : -1)) <= 0)) ? 0 : 8);
            jSONObject.put("clickable", commonNode.isEnable_click());
            jSONObject.put("importantForAccessibility", true);
            jSONObject.put("is_list_view", commonNode.isIs_list_view());
            jSONObject.put("element_path", commonNode.get$element_path());
            if (!TextUtils.isEmpty(commonNode.get$element_position())) {
                jSONObject.put("element_position", commonNode.get$element_position());
            }
            this.mSnapInfo.webLibVersion = commonNode.getLib_version();
            jSONObject.put("scrollX", 0);
            jSONObject.put("scrollY", 0);
            if (commonNode instanceof WebNode) {
                WebNode webNode = (WebNode) commonNode;
                jSONObject.put("h5_title", webNode.get$title());
                jSONObject.put("tag_name", webNode.getTagName());
                jSONObject.put(ConfigurationName.DOWNLOAD_PLUGIN_URL, webNode.get$url());
                if (!TextUtils.isEmpty(webNode.get$element_selector())) {
                    jSONObject.put("element_selector", webNode.get$element_selector());
                }
                jSONObject.put("list_selector", webNode.getList_selector());
                jSONObject.put("is_h5", true);
                jSONObject.put("element_platform", "h5");
            }
            if (commonNode instanceof FlutterNode) {
                FlutterNode flutterNode = (FlutterNode) commonNode;
                jSONObject.put("title", flutterNode.getTitle());
                jSONObject.put("screen_name", flutterNode.getScreen_name());
                jSONObject.put("element_platform", "flutter");
            }
            JSONArray jSONArray2 = new JSONArray();
            if (commonNode instanceof WebNode) {
                jSONArray2.put(((WebNode) commonNode).getTagName());
            }
            Class<?> superclass = view.getClass();
            do {
                jSONArray2.put(SnapCache.getInstance().getCanonicalName(superclass));
                superclass = superclass.getSuperclass();
                if (superclass == Object.class) {
                    break;
                }
            } while (superclass != null);
            jSONObject.put("classes", jSONArray2);
            List<String> subelements = commonNode.getSubelements();
            JSONArray jSONArray3 = new JSONArray();
            if (subelements != null && subelements.size() > 0) {
                Iterator<String> it = subelements.iterator();
                while (it.hasNext()) {
                    jSONArray3.put(it.next() + view.hashCode());
                }
            }
            jSONObject.put("subviews", jSONArray3);
            jSONArray.put(jSONObject);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void reset() {
        this.mSnapInfo = new SnapInfo();
    }

    private void snapshotFlutterView(JSONArray jSONArray, View view, List<String> list, SnapInfo snapInfo) {
        String str = snapInfo.activityName;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        FlutterNodeInfo flutterNodeInfo = (FlutterNodeInfo) NodesProcess.getInstance().getFlutterNodesManager().getNodes(str);
        if (flutterNodeInfo == null) {
            Dispatcher.getInstance().postDelayed(new AlertMessageUtils.AlertRunnable(AlertMessageUtils.AlertRunnable.AlertType.FLUTTER, str), LiveTranslationEntity.DefaultSentenceTimeOut);
            return;
        }
        if (flutterNodeInfo.getStatus() != NodeInfo.Status.SUCCESS) {
            if (flutterNodeInfo.getStatus() == NodeInfo.Status.FAILURE) {
                this.mSnapInfo.flutter_alertInfos = flutterNodeInfo.getAlertInfos();
                return;
            }
            return;
        }
        List<? extends CommonNode> nodes = flutterNodeInfo.getNodes();
        if (nodes == null || nodes.size() <= 0) {
            return;
        }
        Iterator<? extends CommonNode> it = nodes.iterator();
        while (it.hasNext()) {
            FlutterNode flutterNode = (FlutterNode) it.next();
            mergeThirdViewNodes(jSONArray, flutterNode, view, SensorsDataAPI.sharedInstance().getSAContextManager().getContext().getResources().getDisplayMetrics().scaledDensity);
            if (flutterNode.isRootView()) {
                list.add(flutterNode.getId() + view.hashCode());
            }
        }
    }

    private void snapshotView(JSONArray jSONArray, final View view, int i2) throws Exception {
        Activity foregroundActivity;
        if (SAViewUtils.isViewSelfVisible(view)) {
            ArrayList arrayList = new ArrayList();
            int i3 = this.mSnapInfo.elementLevel;
            if (ViewUtil.instanceOfFlutterSurfaceView(view)) {
                SnapInfo snapInfo = this.mSnapInfo;
                snapInfo.isFlutter = true;
                if (TextUtils.isEmpty(snapInfo.activityName) && (foregroundActivity = AppStateTools.getInstance().getForegroundActivity()) != null) {
                    this.mSnapInfo.activityName = SnapCache.getInstance().getCanonicalName(foregroundActivity.getClass());
                }
                FlutterNodeInfo flutterNodeInfo = (FlutterNodeInfo) NodesProcess.getInstance().getFlutterNodesManager().getPageInfo(this.mSnapInfo.activityName);
                if (flutterNodeInfo != null) {
                    this.mSnapInfo.flutterLibVersion = flutterNodeInfo.getFlutter_lib_version();
                }
                snapshotFlutterView(jSONArray, view, arrayList, this.mSnapInfo);
            }
            if (ViewUtil.instanceOfWebView(view)) {
                this.mSnapInfo.isWebView = true;
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                try {
                    view.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.ViewSnapshot.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String str = (String) ReflectUtil.callMethod(view, "getUrl", new Object[0]);
                            if (TextUtils.isEmpty(str)) {
                                countDownLatch.countDown();
                                return;
                            }
                            ViewSnapshot.this.mSnapInfo.webViewUrl = str;
                            Float f2 = (Float) ReflectUtil.callMethod(view, "getScale", new Object[0]);
                            if (f2 != null) {
                                ViewSnapshot.this.mSnapInfo.webViewScale = f2.floatValue();
                            }
                            countDownLatch.countDown();
                            WebUtils.loadUrl(view, "javascript:window.sensorsdata_app_call_js('visualized')");
                        }
                    });
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
                try {
                    countDownLatch.await(500L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e3) {
                    SALog.printStackTrace(e3);
                }
                SALog.i(TAG, "WebView url: " + this.mSnapInfo.webViewUrl);
                if (!TextUtils.isEmpty(this.mSnapInfo.webViewUrl)) {
                    WebNodeInfo webNodeInfo = (WebNodeInfo) NodesProcess.getInstance().getWebNodesManager().getNodes(this.mSnapInfo.webViewUrl);
                    if (webNodeInfo == null) {
                        Dispatcher.getInstance().postDelayed(new AlertMessageUtils.AlertRunnable(AlertMessageUtils.AlertRunnable.AlertType.H5, this.mSnapInfo.webViewUrl), LiveTranslationEntity.DefaultSentenceTimeOut);
                    } else if (webNodeInfo.getStatus() == NodeInfo.Status.SUCCESS) {
                        List<? extends CommonNode> nodes = webNodeInfo.getNodes();
                        if (nodes != null && nodes.size() > 0) {
                            arrayList = new ArrayList();
                            for (CommonNode commonNode : nodes) {
                                mergeThirdViewNodes(jSONArray, commonNode, view, this.mSnapInfo.webViewScale);
                                if (commonNode.isRootView()) {
                                    arrayList.add(commonNode.getId() + view.hashCode());
                                }
                            }
                        }
                    } else if (webNodeInfo.getStatus() == NodeInfo.Status.FAILURE) {
                        this.mSnapInfo.alertInfos = webNodeInfo.getAlertInfos();
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("hashCode", view.hashCode());
            jSONObject.put(b.a.f24015b, view.getId());
            jSONObject.put("index", SAViewUtils.getChildIndex(view.getParent(), view));
            if (ViewUtil.instanceOfWebView(view) || ViewUtil.instanceOfFlutterSurfaceView(view)) {
                jSONObject.put("element_level", i3);
            } else {
                SnapInfo snapInfo2 = this.mSnapInfo;
                int i4 = snapInfo2.elementLevel + 1;
                snapInfo2.elementLevel = i4;
                jSONObject.put("element_level", i4);
            }
            jSONObject.put("element_selector", SAViewUtils.getElementSelector(view));
            JSONObject screenNameAndTitle = VisualUtil.getScreenNameAndTitle(view, this.mSnapInfo);
            if (screenNameAndTitle != null) {
                String strOptString = screenNameAndTitle.optString("$screen_name");
                String strOptString2 = screenNameAndTitle.optString("$title");
                if (!TextUtils.isEmpty(strOptString)) {
                    jSONObject.put("screen_name", strOptString);
                }
                if (!TextUtils.isEmpty(strOptString2)) {
                    jSONObject.put("title", strOptString2);
                }
            }
            ViewNode viewNode = ViewUtil.getViewNode(view, i2, true);
            if (viewNode != null) {
                if (!TextUtils.isEmpty(viewNode.getViewPath())) {
                    jSONObject.put("element_path", viewNode.getViewPath());
                }
                if (!TextUtils.isEmpty(viewNode.getViewPosition())) {
                    jSONObject.put("element_position", viewNode.getViewPosition());
                }
                if (!TextUtils.isEmpty(viewNode.getViewContent()) && VisualUtil.isSupportElementContent(view)) {
                    jSONObject.put("element_content", viewNode.getViewContent());
                }
                jSONObject.put("is_list_view", viewNode.isListView());
            }
            jSONObject.put("element_platform", ReferenceApiV3ConstKt.OS_NAME);
            jSONObject.put("sa_id_name", getResName(view));
            try {
                String str = (String) view.getTag(R.id.sensors_analytics_tag_view_id);
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("sa_id_name", str);
                }
            } catch (Exception e4) {
                SALog.printStackTrace(e4);
            }
            if (WindowHelper.isMainWindow(view.getRootView())) {
                jSONObject.put("top", view.getTop());
                jSONObject.put("left", view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
            } else if (WindowHelper.isDecorView(view.getClass())) {
                DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
                int i5 = displayMetrics.widthPixels;
                int i6 = displayMetrics.heightPixels;
                jSONObject.put("top", view.getTop());
                jSONObject.put("left", view.getLeft());
                jSONObject.put("width", i5);
                jSONObject.put("height", i6);
            } else {
                ViewParent parent = view.getParent();
                if (parent == null || !WindowHelper.isDecorView(parent.getClass())) {
                    jSONObject.put("top", view.getTop());
                    jSONObject.put("left", view.getLeft());
                    jSONObject.put("width", view.getWidth());
                    jSONObject.put("height", view.getHeight());
                } else {
                    Rect rect = new Rect();
                    getVisibleRect(view, rect, false);
                    jSONObject.put("top", rect.top);
                    jSONObject.put("left", rect.left);
                    jSONObject.put("width", rect.width());
                    jSONObject.put("height", rect.height());
                }
            }
            int scrollX = view.getScrollX();
            if ((view instanceof TextView) && ((TextView) view).getMaxLines() == 1) {
                scrollX = 0;
            }
            if (ViewUtil.instanceOfX5WebView(view)) {
                try {
                    jSONObject.put("scrollX", ReflectUtil.callMethod(view, "getWebScrollX", new Object[0]));
                    jSONObject.put("scrollY", ReflectUtil.callMethod(view, "getWebScrollY", new Object[0]));
                } catch (Exception e5) {
                    SALog.printStackTrace(e5);
                }
            } else {
                jSONObject.put("scrollX", scrollX);
                jSONObject.put("scrollY", view.getScrollY());
            }
            jSONObject.put("visibility", VisualUtil.getVisibility(view));
            float translationX = view.getTranslationX();
            float translationY = view.getTranslationY();
            jSONObject.put("translationX", translationX);
            jSONObject.put("translationY", translationY);
            JSONArray jSONArray2 = new JSONArray();
            Class<?> superclass = view.getClass();
            do {
                jSONArray2.put(this.mClassnameCache.get(superclass));
                superclass = superclass.getSuperclass();
                if (superclass == Object.class) {
                    break;
                }
            } while (superclass != null);
            jSONObject.put("classes", jSONArray2);
            addProperties(jSONObject, view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                int[] rules = ((RelativeLayout.LayoutParams) layoutParams).getRules();
                JSONArray jSONArray3 = new JSONArray();
                for (int i7 : rules) {
                    jSONArray3.put(i7);
                }
                jSONObject.put("layoutRules", jSONArray3);
            }
            JSONArray jSONArray4 = new JSONArray();
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray4.put((String) it.next());
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = viewGroup.getChildAt(i8);
                    if (childAt != null) {
                        jSONArray4.put(childAt.hashCode());
                    }
                }
            }
            jSONObject.put("subviews", jSONArray4);
            jSONArray.put(jSONObject);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            int childCount2 = viewGroup2.getChildCount();
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt2 = viewGroup2.getChildAt(i9);
                if (childAt2 != null) {
                    snapshotView(jSONArray, childAt2, i9);
                }
            }
        }
    }

    private void snapshotViewHierarchy(JSONArray jSONArray, View view) throws Exception {
        reset();
        snapshotView(jSONArray, view, 0);
        NodesProcess.getInstance().getWebNodesManager().setHasThirdView(this.mSnapInfo.isWebView);
        NodesProcess.getInstance().getFlutterNodesManager().setHasThirdView(this.mSnapInfo.isFlutter);
    }

    public SnapInfo snapshots(OutputStream outputStream, StringBuilder sb) throws IOException {
        long j2;
        CachedBitmap cachedBitmap;
        long jCurrentTimeMillis = System.currentTimeMillis();
        FutureTask futureTask = new FutureTask(this.mRootViewFinder);
        this.mMainThreadHandler.post(futureTask);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        List list = Collections.EMPTY_LIST;
        bufferedOutputStream.write("[".getBytes());
        try {
            try {
                try {
                    try {
                        try {
                            List list2 = (List) futureTask.get(2L, TimeUnit.SECONDS);
                            futureTask.cancel(true);
                            this.mMainThreadHandler.removeCallbacks(futureTask);
                            list = list2;
                        } catch (Throwable th) {
                            futureTask.cancel(true);
                            this.mMainThreadHandler.removeCallbacks(futureTask);
                            throw th;
                        }
                    } catch (InterruptedException e2) {
                        SALog.i(TAG, "Screenshot interrupted, no screenshot will be sent.", e2);
                        futureTask.cancel(true);
                        this.mMainThreadHandler.removeCallbacks(futureTask);
                    }
                } catch (ExecutionException e3) {
                    SALog.i(TAG, "Exception thrown during screenshot attempt", e3);
                    futureTask.cancel(true);
                    this.mMainThreadHandler.removeCallbacks(futureTask);
                }
            } catch (TimeoutException e4) {
                SALog.i(TAG, "Screenshot took more than 2 second to be scheduled and executed. No screenshot will be sent.", e4);
                futureTask.cancel(true);
                this.mMainThreadHandler.removeCallbacks(futureTask);
            }
        } catch (Throwable th2) {
            SALog.i(TAG, "Throwable thrown during screenshot attempt", th2);
            futureTask.cancel(true);
            this.mMainThreadHandler.removeCallbacks(futureTask);
        }
        int size = list.size();
        StringBuilder sbQ = fc.q(size, "infoCount:", ",time:");
        sbQ.append(System.currentTimeMillis() - jCurrentTimeMillis);
        SALog.i(TAG, sbQ.toString());
        String str = null;
        int i2 = 0;
        String str2 = null;
        while (i2 < size) {
            RootViewInfo rootViewInfo = (RootViewInfo) list.get(i2);
            if (i2 > 0) {
                bufferedOutputStream.write(",".getBytes());
            }
            if (rootViewInfo != null && (cachedBitmap = rootViewInfo.screenshot) != null) {
                if (isSnapShotUpdated(cachedBitmap.getImageHash(), sb) || i2 > 0) {
                    bufferedOutputStream.write("{".getBytes());
                    bufferedOutputStream.write("\"activity\":".getBytes());
                    String str3 = rootViewInfo.screenName;
                    String str4 = rootViewInfo.activityTitle;
                    bufferedOutputStream.write(JSONObject.quote(str3).getBytes());
                    bufferedOutputStream.write(",".getBytes());
                    bufferedOutputStream.write("\"scale\":".getBytes());
                    float f2 = rootViewInfo.scale;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(f2);
                    bufferedOutputStream.write(sb2.toString().getBytes());
                    bufferedOutputStream.write(",".getBytes());
                    bufferedOutputStream.write("\"serialized_objects\":".getBytes());
                    try {
                        JSONObject jSONObject = new JSONObject();
                        j2 = jCurrentTimeMillis;
                        try {
                            jSONObject.put("rootObject", rootViewInfo.rootView.hashCode());
                            JSONArray jSONArray = new JSONArray();
                            snapshotViewHierarchy(jSONArray, rootViewInfo.rootView);
                            jSONObject.put("objects", jSONArray);
                            bufferedOutputStream.write(jSONObject.toString().getBytes());
                            SALog.i(TAG, "snapshotViewHierarchy:" + (System.currentTimeMillis() - j2));
                        } catch (Exception e5) {
                            e = e5;
                            SALog.printStackTrace(e);
                        }
                    } catch (Exception e6) {
                        e = e6;
                        j2 = jCurrentTimeMillis;
                    }
                    bufferedOutputStream.write(",".getBytes());
                    bufferedOutputStream.write("\"image_hash\":".getBytes());
                    bufferedOutputStream.write(JSONObject.quote(rootViewInfo.screenshot.getImageHash()).getBytes());
                    bufferedOutputStream.write(",".getBytes());
                    bufferedOutputStream.write("\"screenshot\":".getBytes());
                    bufferedOutputStream.flush();
                    rootViewInfo.screenshot.writeBitmapJSON(Bitmap.CompressFormat.PNG, 70, outputStream);
                    bufferedOutputStream.write("}".getBytes());
                    str = str3;
                    str2 = str4;
                }
                i2++;
                jCurrentTimeMillis = j2;
            }
            j2 = jCurrentTimeMillis;
            bufferedOutputStream.write("{}".getBytes());
            i2++;
            jCurrentTimeMillis = j2;
        }
        bufferedOutputStream.write("]".getBytes());
        bufferedOutputStream.flush();
        SnapInfo snapInfo = this.mSnapInfo;
        snapInfo.screenName = str;
        snapInfo.activityTitle = str2;
        Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
        if (foregroundActivity != null) {
            this.mSnapInfo.isFlutter = ViewUtil.instanceOfFlutterActivity(foregroundActivity);
            this.mSnapInfo.activityName = SnapCache.getInstance().getCanonicalName(foregroundActivity.getClass());
        }
        return this.mSnapInfo;
    }

    public static class ClassNameCache extends LruCache<Class<?>, String> {
        public ClassNameCache(int i2) {
            super(i2);
        }

        @Override // android.util.LruCache
        public String create(Class<?> cls) {
            return cls.getCanonicalName();
        }
    }
}
