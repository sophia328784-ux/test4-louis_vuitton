package com.networkbench.agent.impl.floatbtnmanager;

import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.opengl.GLSurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.y;
import defpackage.z81;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f37125a = com.networkbench.agent.impl.c.f.a();

    private o() {
    }

    public static Bitmap a(View[] viewArr) {
        n nVar;
        List<n> listA = f.a();
        Bitmap bitmapCreateBitmap = null;
        if (listA.size() == 0) {
            return null;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= listA.size()) {
                nVar = null;
                break;
            }
            nVar = listA.get(i2);
            if (a(nVar.a().getClass().getName())) {
                if (i2 == 0) {
                    break;
                }
                n nVar2 = listA.get(0);
                listA.set(0, nVar);
                listA.set(i2, nVar2);
                break;
            }
            i2++;
        }
        if (nVar == null) {
            return null;
        }
        try {
            View decorView = ((Window) a(nVar.a())).getDecorView();
            if (decorView.getWidth() > 0 && decorView.getHeight() > 0 && decorView.getWidth() > 0 && decorView.getHeight() > 0) {
                bitmapCreateBitmap = ((long) ((decorView.getWidth() * decorView.getHeight()) * 4)) < a() ? Bitmap.createBitmap(decorView.getWidth(), decorView.getHeight(), Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(decorView.getWidth(), decorView.getHeight(), Bitmap.Config.RGB_565);
                a(listA, bitmapCreateBitmap, viewArr);
                return bitmapCreateBitmap;
            }
            return null;
        } catch (IllegalArgumentException unused) {
        } catch (Throwable th) {
            th.printStackTrace();
            f37125a.a("create bitmap error:", th);
        }
    }

    private static boolean a(String str) {
        return str.equals("android.widget.PopupWindow$PopupDecorView") || str.equals("com.android.internal.policy.DecorView");
    }

    public static Object a(View view) throws Exception {
        if (!view.getClass().getName().equals("com.android.internal.policy.DecorView")) {
            return ad.a(view, "this$0");
        }
        return ad.a(view, "mWindow");
    }

    public static long a() {
        try {
            ActivityManager activityManager = (ActivityManager) ak.e().getSystemService(ActionFloatingViewItem.f37018a);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private static void a(List<n> list, Bitmap bitmap, View[] viewArr) {
        Iterator<n> it = list.iterator();
        while (it.hasNext()) {
            a(it.next(), bitmap, viewArr);
        }
    }

    private static void a(n nVar, Bitmap bitmap, View[] viewArr) {
        if ((nVar.d().flags & 2) == 2) {
            new Canvas(bitmap).drawARGB((int) (nVar.d().dimAmount * 255.0f), 0, 0, 0);
        }
        Canvas canvas = new Canvas(bitmap);
        canvas.translate(nVar.c(), nVar.b());
        int[] iArr = viewArr != null ? new int[viewArr.length] : null;
        if (viewArr != null) {
            for (int i2 = 0; i2 < viewArr.length; i2++) {
                View view = viewArr[i2];
                if (view != null) {
                    iArr[i2] = view.getVisibility();
                    viewArr[i2].setVisibility(4);
                }
            }
        }
        nVar.a().draw(canvas);
        a(nVar.a(), canvas);
        if (viewArr != null) {
            for (int i3 = 0; i3 < viewArr.length; i3++) {
                View view2 = viewArr[i3];
                if (view2 != null) {
                    view2.setVisibility(iArr[i3]);
                }
            }
        }
    }

    private static ArrayList<View> a(View view, Canvas canvas) {
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
            arrayList3.addAll(a(childAt, canvas));
            if (childAt instanceof TextureView) {
                a((TextureView) childAt, canvas);
            }
            if (childAt instanceof GLSurfaceView) {
                a((GLSurfaceView) childAt, canvas);
            }
            arrayList2.addAll(arrayList3);
        }
        return arrayList2;
    }

    private static void a(GLSurfaceView gLSurfaceView, Canvas canvas) {
        com.networkbench.agent.impl.util.e.c("Drawing GLSurfaceView");
        if (gLSurfaceView.getWindowToken() != null) {
            int[] iArr = new int[2];
            gLSurfaceView.getLocationOnScreen(iArr);
            final int width = gLSurfaceView.getWidth();
            final int height = gLSurfaceView.getHeight();
            int[] iArr2 = new int[width * height];
            final IntBuffer intBufferWrap = IntBuffer.wrap(iArr2);
            intBufferWrap.position(0);
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            gLSurfaceView.queueEvent(new y() { // from class: com.networkbench.agent.impl.floatbtnmanager.o.1
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
                        z81.k(new StringBuilder(" drawGLSurfaceView run  has an error : "), th);
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

    private static void a(TextureView textureView, Canvas canvas) {
        com.networkbench.agent.impl.util.e.c("Drawing TextureView");
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
}
