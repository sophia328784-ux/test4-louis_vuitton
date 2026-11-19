package com.networkbench.agent.impl.session.screen;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.PixelCopy;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.batch.android.q0.b;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.networkbench.agent.impl.floatbtnmanager.e;
import com.networkbench.agent.impl.floatbtnmanager.n;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.c.c;
import com.networkbench.agent.impl.util.d;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import defpackage.z81;
import java.io.File;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class NBSScreenRecordingUtil {
    private static final String TAG = "NBSScreenRecordingUtil";
    private static float scaleValue = 1.0f;
    static Rect hideRect = new Rect();
    private static NBSPaint mPaint = new NBSPaint();
    static Handler handler = new Handler(Looper.getMainLooper());

    private static void attachContentView(String str, Context context, Canvas canvas, Rect rect) {
        TextPaint textPaint = new TextPaint();
        textPaint.setColor(b.v);
        textPaint.setTextSize(80.0f);
        Vector<String> textLinesVector = getTextLinesVector(textPaint, str, rect.height(), rect.width());
        StaticLayout staticLayout = new StaticLayout(vectorToString(textLinesVector), textPaint, rect.width(), Layout.Alignment.ALIGN_NORMAL, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, true);
        canvas.save();
        textPaint.setTextAlign(Paint.Align.CENTER);
        canvas.translate((rect.width() / 2.0f) + rect.left, ((rect.height() - (getFontHeight(textPaint) * textLinesVector.size())) / 2.0f) + rect.top);
        staticLayout.draw(canvas);
    }

    private static List<NBSMaskViewRect> calcIgnoredRects(View view, int i2, int i3) {
        ArrayList<NBSMaskViewRect> arrayList = new ArrayList();
        if (NBSScreenRecordControl.getInstance().isActivityInIgnore()) {
            if (i2 > 0 && i3 > 0) {
                arrayList.add(NBSScreenRecordControl.getInstance().getCurrentActivityMaskRect(i2, i3));
            }
            return arrayList;
        }
        if (NBSScreenRecordControl.getInstance().getIgnoreFragmentRect().size() > 0) {
            arrayList.addAll(NBSScreenRecordControl.getInstance().getIgnoreFragmentRect());
        }
        ArrayList<NBSMaskViewRect> ignoredRects = NBSScreenRecordControl.getInstance().getIgnoredRects();
        ignoredRects.addAll(NBSScreenRecordControl.getInstance().getIgnoreViewsRectFromRoot(view));
        if (arrayList.size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            for (NBSMaskViewRect nBSMaskViewRect : ignoredRects) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((NBSMaskViewRect) it.next()).isContainViewRect(nBSMaskViewRect.getRect())) {
                        arrayList2.add(nBSMaskViewRect);
                        break;
                    }
                }
            }
            ignoredRects.removeAll(arrayList2);
            arrayList.addAll(ignoredRects);
        } else {
            arrayList.addAll(ignoredRects);
        }
        ArrayList arrayList3 = new ArrayList();
        for (NBSMaskViewRect nBSMaskViewRect2 : arrayList) {
            if (nBSMaskViewRect2.isRectOutofScreen(i2, i3)) {
                arrayList3.add(nBSMaskViewRect2);
            }
        }
        arrayList.removeAll(arrayList3);
        return arrayList;
    }

    public static int calcuCaptureHeight(double d, int i2) {
        return (int) (d * ((double) i2));
    }

    private static synchronized void captureViewOverO(List<n> list, Window window, final NBSBitmapBean nBSBitmapBean, int i2, int i3) {
        try {
            Logger.debug(TAG, "captureViewOverO rootSize:" + list.size());
            View rootView = window.getDecorView().getRootView();
            int[] iArr = new int[2];
            rootView.getLocationInWindow(iArr);
            final List<NBSMaskViewRect> listCalcIgnoredRects = calcIgnoredRects(rootView, i2, i3);
            int i4 = iArr[0];
            PixelCopy.request(window, new Rect(i4, iArr[1], rootView.getWidth() + i4, iArr[1] + rootView.getHeight()), nBSBitmapBean.image_data, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.networkbench.agent.impl.session.screen.NBSScreenRecordingUtil.1
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public void onPixelCopyFinished(int i5) {
                    if (i5 == 0) {
                        try {
                            c.a().a(new y() { // from class: com.networkbench.agent.impl.session.screen.NBSScreenRecordingUtil.1.1
                                @Override // com.networkbench.agent.impl.util.y
                                public void tryCatchRun() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    NBSScreenRecordingUtil.extracted(nBSBitmapBean, listCalcIgnoredRects);
                                }
                            });
                        } catch (Throwable th) {
                            Logger.error(NBSScreenRecordingUtil.TAG, " PixelCopy request  drawRootToBitmap error :", th);
                        }
                    }
                }
            }, new Handler(Looper.getMainLooper()));
        } catch (Throwable th) {
            Logger.error(TAG, " PixelCopy request error :", th);
        }
    }

    private static void draw(Rect rect, Canvas canvas, NBSBitmapBean nBSBitmapBean) {
        canvas.scale(nBSBitmapBean.frame_width / nBSBitmapBean.width, nBSBitmapBean.frame_height / nBSBitmapBean.height);
        canvas.rotate(Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.width() / 2.0f, rect.height() / 2.0f);
        canvas.translate(rect.left, rect.top);
    }

    private static void drawGLSurfaceView(GLSurfaceView gLSurfaceView, Canvas canvas) {
        g.w("Drawing GLSurfaceView");
        if (gLSurfaceView.getWindowToken() != null) {
            int[] iArr = new int[2];
            gLSurfaceView.getLocationOnScreen(iArr);
            final int width = gLSurfaceView.getWidth();
            final int height = gLSurfaceView.getHeight();
            int[] iArr2 = new int[width * height];
            final IntBuffer intBufferWrap = IntBuffer.wrap(iArr2);
            intBufferWrap.position(0);
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            gLSurfaceView.queueEvent(new y() { // from class: com.networkbench.agent.impl.session.screen.NBSScreenRecordingUtil.2
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    try {
                        EGL10 egl10 = (EGL10) EGLContext.getEGL();
                        egl10.eglWaitGL();
                        GL10 gl10 = (GL10) egl10.eglGetCurrentContext().getGL();
                        gl10.glFinish();
                        try {
                            Thread.sleep(200L);
                        } catch (InterruptedException unused) {
                        }
                        gl10.glReadPixels(0, 0, width, height, 6408, 5121, intBufferWrap);
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        z81.k(new StringBuilder("surfaceView queueEvent has an error : "), th);
                    }
                }
            });
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
            int[] iArr3 = new int[width * height];
            int i2 = 0;
            int i3 = 0;
            while (i2 < height) {
                for (int i4 = 0; i4 < width; i4++) {
                    int i5 = iArr2[(i2 * width) + i4];
                    iArr3[(((height - i3) - 1) * width) + i4] = (i5 & (-16711936)) | ((i5 << 16) & 16711680) | ((i5 >> 16) & 255);
                }
                i2++;
                i3++;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr3, width, height, Bitmap.Config.ARGB_8888);
            Paint paint = new Paint();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
            canvas.drawBitmap(bitmapCreateBitmap, iArr[0], iArr[1], paint);
            bitmapCreateBitmap.recycle();
        }
    }

    private static void drawHideRects(Canvas canvas, List<NBSMaskViewRect> list, NBSBitmapBean nBSBitmapBean) {
        Iterator<NBSMaskViewRect> it;
        Logger.debug(TAG, "drawHideRects begin");
        if (list == null || list.size() <= 0) {
            return;
        }
        Logger.debug(TAG, "drawHideRects size:" + list.size());
        try {
            Iterator<NBSMaskViewRect> it2 = list.iterator();
            while (it2.hasNext()) {
                NBSMaskViewRect next = it2.next();
                Rect rect = next.getRect();
                if (rect.width() != 0 && rect.height() != 0) {
                    int iSave = canvas.save();
                    draw(rect, canvas, nBSBitmapBean);
                    hideRect.set(0, 0, rect.width(), rect.height());
                    int color = Color.parseColor("#C8C9CC");
                    NBSMaskViewType viewType = next.getViewType();
                    NBSMaskViewType nBSMaskViewType = NBSMaskViewType.WEB_VIEW;
                    if (viewType == nBSMaskViewType || next.getViewType() == NBSMaskViewType.ACTIVITY || next.getViewType() == NBSMaskViewType.FRAGMENT) {
                        it = it2;
                        Paint paint = new Paint();
                        paint.setColor(color);
                        canvas.drawRect(hideRect, paint);
                        if (!ab.c(next.getClassName())) {
                            attachContentView(next.getClassName(), r.u().J(), canvas, hideRect);
                        }
                        if (next.getViewType() == nBSMaskViewType) {
                            nBSBitmapBean.addWebViewItem(new NBSWebViewItem(next.getViewId(), (int) (next.getRect().width() * scaleValue), (int) (next.getRect().height() * scaleValue), (int) (next.getRect().left * scaleValue), (int) (next.getRect().top * scaleValue)));
                        }
                    } else if (next.getViewType() == NBSMaskViewType.IMAGE) {
                        Paint paint2 = new Paint();
                        paint2.setColor(Color.parseColor("#FAFAFA"));
                        canvas.drawRect(hideRect, paint2);
                        Paint paint3 = new Paint(1);
                        paint3.setAntiAlias(true);
                        paint3.setStyle(Paint.Style.STROKE);
                        paint3.setColor(color);
                        paint3.setStrokeWidth(2.0f);
                        Rect rect2 = hideRect;
                        int i2 = rect2.left;
                        int i3 = rect2.top;
                        int i4 = rect2.right;
                        it = it2;
                        int i5 = rect2.bottom;
                        canvas.drawLines(new float[]{i2, i3, i4, i3, i2, i3, i2, i5, i2, i5, i4, i5, i4, i3, i4, i5, i2, i3, i4, i5, i2, i5, i4, i3}, paint3);
                    } else {
                        it = it2;
                        Paint paint4 = new Paint();
                        paint4.setColor(color);
                        canvas.drawRect(hideRect, paint4);
                    }
                    canvas.restoreToCount(iSave);
                    it2 = it;
                }
                Logger.debug(TAG, "maskViewRect rect is wrong");
                return;
            }
        } catch (Throwable unused) {
        }
    }

    private static void drawRootToBitmap(n nVar, NBSBitmapBean nBSBitmapBean) throws d {
        Canvas canvas = new Canvas(nBSBitmapBean.image_data);
        if ((nVar.d().flags & 2) == 2) {
            canvas.drawARGB((int) (nVar.d().dimAmount * 255.0f), 0, 0, 0);
        }
        canvas.translate(nVar.c(), nVar.b());
        Logger.debug(TAG, "canvas scale:" + scaleValue);
        float f2 = scaleValue;
        canvas.scale(f2, f2);
        nVar.a().draw(canvas);
        drawUnDrawableViews(nVar.a(), canvas);
    }

    private static void drawRootToBitmapHigh(List<n> list, NBSBitmapBean nBSBitmapBean, int i2, int i3) throws d {
        if ((list.get(0).d().flags & 2) == 2) {
            new Canvas(nBSBitmapBean.image_data).drawARGB((int) (list.get(0).d().dimAmount * 255.0f), 0, 0, 0);
        }
        Logger.debug(TAG, "Build.VERSION.SDK_INT >= Build.VERSION_CODES.O");
        if (com.networkbench.agent.impl.floatbtnmanager.c.a().f() == null || com.networkbench.agent.impl.floatbtnmanager.c.a().f().get() == null) {
            throw new d("current activity is not get");
        }
        Logger.debug(TAG, "begin captureViewOverO");
        captureViewOverO(list, com.networkbench.agent.impl.floatbtnmanager.c.a().f().get().getWindow(), nBSBitmapBean, i2, i3);
    }

    private static void drawRootsToBitmap(List<n> list, NBSBitmapBean nBSBitmapBean, int i2, int i3) throws d {
        if (list.size() <= 0) {
            return;
        }
        try {
            drawRootToBitmapHigh(list, nBSBitmapBean, i2, i3);
        } catch (d unused) {
        }
        nBSBitmapBean.drawPath = true;
    }

    private static void drawTextureView(TextureView textureView, Canvas canvas) {
        Logger.debug(TAG, "Drawing TextureView");
        int[] iArr = new int[2];
        textureView.getLocationOnScreen(iArr);
        Bitmap bitmap = textureView.getBitmap();
        if (bitmap != null) {
            Paint paint = new Paint();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
            canvas.drawBitmap(bitmap, iArr[0], iArr[1], paint);
            bitmap.recycle();
        }
    }

    private static ArrayList<View> drawUnDrawableViews(View view, Canvas canvas) {
        if (!(view instanceof ViewGroup)) {
            ArrayList<View> arrayList = new ArrayList<>();
            arrayList.add(view);
            return arrayList;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(view);
            arrayList3.addAll(drawUnDrawableViews(childAt, canvas));
            if (childAt instanceof TextureView) {
                drawTextureView((TextureView) childAt, canvas);
            }
            if (childAt instanceof GLSurfaceView) {
                drawGLSurfaceView((GLSurfaceView) childAt, canvas);
            }
            arrayList2.addAll(arrayList3);
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void extracted(NBSBitmapBean nBSBitmapBean, List<NBSMaskViewRect> list) {
        try {
            if (nBSBitmapBean.image_data == null) {
                return;
            }
            drawHideRects(new Canvas(nBSBitmapBean.image_data), list, nBSBitmapBean);
            if (nBSBitmapBean.getImage_data() != null && nBSBitmapBean.getImage_data().getByteCount() > 0) {
                StringBuilder sb = new StringBuilder();
                String str = File.separator;
                sb.append(str);
                sb.append("tingyunScreen");
                sb.append(str);
                sb.append(NBSBitmapBeansControl.getInstance().getSessionId());
                String str2 = e.a(r.u().J()) + sb.toString();
                e.a(str2, nBSBitmapBean);
                Logger.debug(TAG, "NBSScreenRecordTimer  bitmap path : ".concat(str2));
                return;
            }
            nBSBitmapBean.firstBean = false;
            Logger.error(TAG, "screenRecordBitmap is null : " + nBSBitmapBean.sessionId);
        } catch (Throwable th) {
            Logger.error(TAG, "NBSScreenRecordTimer  extracted error : ", th);
        }
    }

    public static long getAvailableMemory() {
        try {
            ActivityManager activityManager = (ActivityManager) ak.e().getSystemService(ActionFloatingViewItem.f37018a);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private static float getFontHeight(TextPaint textPaint) {
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        return fontMetrics.bottom - fontMetrics.top;
    }

    public static void getScreenRecordBitmap(NBSBitmapBean nBSBitmapBean) {
        Bitmap bitmapCreateBitmap;
        n nVar;
        int i2;
        List<n> rootViews = NBSViewHelper.getRootViews();
        if (rootViews.size() == 0) {
            return;
        }
        int height = 0;
        int i3 = 0;
        while (true) {
            bitmapCreateBitmap = null;
            if (i3 >= rootViews.size()) {
                nVar = null;
                break;
            }
            nVar = rootViews.get(i3);
            if (isDecorViewClass(nVar.a().getClass().getName())) {
                if (i3 == 0) {
                    break;
                }
                n nVar2 = rootViews.get(0);
                rootViews.set(0, nVar);
                rootViews.set(i3, nVar2);
                break;
            }
            i3++;
        }
        if (nVar == null) {
            return;
        }
        try {
            try {
                View decorView = ((Window) getWindowByRootview(nVar.a())).getDecorView();
                Logger.debug(TAG, "create bitmap, width:" + decorView.getWidth() + ", height:" + decorView.getHeight());
                if (decorView.getWidth() > 0 && decorView.getHeight() > 0) {
                    int width = decorView.getWidth();
                    try {
                        height = decorView.getHeight();
                        nBSBitmapBean.setWidthAndHeight(decorView.getWidth(), decorView.getHeight());
                        double replay = NBSSessionConfig.getInstance().getReplay();
                        scaleValue = (float) replay;
                        int iCalcuCaptureHeight = calcuCaptureHeight(replay, decorView.getWidth());
                        int iCalcuCaptureHeight2 = calcuCaptureHeight(replay, decorView.getHeight());
                        nBSBitmapBean.frame_width = iCalcuCaptureHeight;
                        nBSBitmapBean.frame_height = iCalcuCaptureHeight2;
                        if (decorView.getWidth() * decorView.getHeight() * 4 >= getAvailableMemory()) {
                            return;
                        }
                        Logger.debug(TAG, "Bitmap.createBitmap width:" + replay + ", height:" + iCalcuCaptureHeight2);
                        bitmapCreateBitmap = Bitmap.createBitmap(iCalcuCaptureHeight, iCalcuCaptureHeight2, Bitmap.Config.ARGB_8888);
                    } catch (Throwable th) {
                        th = th;
                        i2 = height;
                        height = width;
                        Logger.error(TAG, "create bitmap error:" + th.getMessage());
                        width = height;
                        height = i2;
                    }
                    if (bitmapCreateBitmap == null) {
                        Logger.error(TAG, "bitmap == null, skip");
                        return;
                    }
                    nBSBitmapBean.image_data = bitmapCreateBitmap;
                    try {
                        drawRootsToBitmap(rootViews, nBSBitmapBean, width, height);
                        return;
                    } catch (d e2) {
                        Logger.error(TAG, "CustomException happened, please check", e2);
                        return;
                    }
                }
                Logger.debug(TAG, "decorView width or height is small zero, skip");
            } catch (IllegalArgumentException e3) {
                Logger.error(TAG, "IllegalArgumentException createBmp", e3);
            }
        } catch (Throwable th2) {
            th = th2;
            i2 = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062 A[LOOP:0: B:3:0x0014->B:16:0x0062, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0064 A[EDGE_INSN: B:19:0x0064->B:17:0x0064 BREAK  A[LOOP:0: B:3:0x0014->B:16:0x0062], SYNTHETIC] */
    public static Vector<String> getTextLinesVector(TextPaint textPaint, String str, float f2, float f3) {
        Vector<String> vector = new Vector<>();
        int fontHeight = (int) (f2 / getFontHeight(textPaint));
        int length = str.length();
        int i2 = 0;
        int iCeil = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            float[] fArr = new float[1];
            textPaint.getTextWidths(String.valueOf(cCharAt), fArr);
            if (cCharAt == '\n') {
                i3++;
                vector.addElement(str.substring(i4, i2));
                i4 = i2 + 1;
            } else {
                iCeil += (int) Math.ceil(fArr[0]);
                if (iCeil > f3) {
                    i3++;
                    vector.addElement(str.substring(i4, i2));
                    i4 = i2;
                    i2--;
                } else if (i2 == length - 1) {
                    i3++;
                    vector.addElement(str.substring(i4, length));
                }
                if (i3 == fontHeight) {
                    break;
                }
                i2++;
            }
            iCeil = 0;
            if (i3 == fontHeight) {
                break;
                break;
            }
            i2++;
        }
        return vector;
    }

    public static Object getWindowByRootview(View view) throws Exception {
        return !view.getClass().getName().equals("com.android.internal.policy.DecorView") ? ad.a(view, "this$0") : ad.a(view, "mWindow");
    }

    public static boolean isDecorViewClass(String str) {
        return str.equals("android.widget.PopupWindow$PopupDecorView") || str.equals("com.android.internal.policy.DecorView");
    }

    private static String vectorToString(Vector<String> vector) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = vector.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next() + "\n");
        }
        return stringBuffer.toString();
    }
}
