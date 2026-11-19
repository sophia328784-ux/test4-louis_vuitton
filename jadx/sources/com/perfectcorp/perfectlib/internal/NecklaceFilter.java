package com.perfectcorp.perfectlib.internal;

import android.graphics.Bitmap;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import com.cyberlink.clgpuimage.CLNecklaceFilter;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.common.utility.Log;
import defpackage.pq0;
import java.nio.FloatBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class NecklaceFilter extends CLMakeupLivePluginFilter {
    public final Object p;

    public NecklaceFilter(int i2) {
        String strConcat;
        this.p = null;
        try {
            this.p = Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredConstructor(Integer.TYPE, Boolean.TYPE).newInstance(Integer.valueOf(i2), Boolean.FALSE);
        } catch (ClassNotFoundException unused) {
            strConcat = "[createNecklaceFilter] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[createNecklaceFilter] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[createNecklaceFilter] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    public void SetCameraRotation(int i2) {
        String strConcat;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod("SetCameraRotation", Integer.TYPE).invoke(this.p, Integer.valueOf(i2));
        } catch (ClassNotFoundException unused) {
            strConcat = "[SetCameraRotation] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[SetCameraRotation] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[SetCameraRotation] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    public void SetNecklaceMetadata(Object obj) {
        String strConcat;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod("SetNecklaceMetadata", CLNecklaceFilter.LiveNecklaceMetadata[].class).invoke(this.p, obj);
        } catch (ClassNotFoundException unused) {
            strConcat = "[SetNecklaceMetadata] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[SetNecklaceMetadata] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[SetNecklaceMetadata] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    public void SetNecklaceModels(List<CLShare3DRelatedClasses.LiveObject3DModel> list, Map<String, Bitmap> map, List<CLShare3DRelatedClasses.LiveObject3DModel> list2, Map<String, CLShare3DRelatedClasses.Live3DHDRTextureData> map2) {
        String strConcat;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod("SetNecklaceModels", List.class, Map.class, List.class, Map.class).invoke(this.p, list, map, list2, map2);
        } catch (ClassNotFoundException unused) {
            strConcat = "[SetNecklaceModels] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[SetNecklaceModels] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[SetNecklaceModels] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    public void SetSmoothEnablement(boolean z) {
        String strConcat;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod("SetSmoothEnablement", Boolean.TYPE).invoke(this.p, Boolean.valueOf(z));
        } catch (ClassNotFoundException unused) {
            strConcat = "[SetSmoothEnablement] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[SetSmoothEnablement] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[SetSmoothEnablement] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    public void SetSmoothIntensity(float f2) {
        String strConcat;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod("SetSmoothIntensity", Float.TYPE).invoke(this.p, Float.valueOf(f2));
        } catch (ClassNotFoundException unused) {
            strConcat = "[SetSmoothIntensity] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[SetSmoothIntensity] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[SetSmoothIntensity] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    public final void j(String str) {
        String string;
        StringBuilder sb;
        String str2;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod(str, null).invoke(this.p, null);
        } catch (ClassNotFoundException unused) {
            sb = new StringBuilder("[");
            sb.append(str);
            str2 = "] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            sb.append(str2);
            string = sb.toString();
            Log.d("NecklaceFilter", string);
        } catch (NoSuchMethodException unused2) {
            sb = new StringBuilder("[");
            sb.append(str);
            str2 = "] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            sb.append(str2);
            string = sb.toString();
            Log.d("NecklaceFilter", string);
        } catch (Throwable th) {
            StringBuilder sbR = pq0.r("[", str, "] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ");
            sbR.append(th.getClass().getSimpleName());
            string = sbR.toString();
            Log.d("NecklaceFilter", string);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onDestroy() {
        j("onDestroy");
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        String strConcat;
        try {
            Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter").getDeclaredMethod("onDraw", Integer.TYPE, FloatBuffer.class, FloatBuffer.class).invoke(this.p, Integer.valueOf(i2), floatBuffer, floatBuffer2);
        } catch (ClassNotFoundException unused) {
            strConcat = "[onDraw] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[onDraw] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[onDraw] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onInit() {
        j("onInit");
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public void onOutputSizeChanged(int i2, int i3) {
        String strConcat;
        try {
            Class<?> cls = Class.forName("com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter");
            Class cls2 = Integer.TYPE;
            cls.getDeclaredMethod("onOutputSizeChanged", cls2, cls2).invoke(this.p, Integer.valueOf(i2), Integer.valueOf(i3));
        } catch (ClassNotFoundException unused) {
            strConcat = "[onOutputSizeChanged] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found";
            Log.d("NecklaceFilter", strConcat);
        } catch (NoSuchMethodException unused2) {
            strConcat = "[onOutputSizeChanged] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter";
            Log.d("NecklaceFilter", strConcat);
        } catch (Throwable th) {
            strConcat = "[onOutputSizeChanged] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of ".concat(th.getClass().getSimpleName());
            Log.d("NecklaceFilter", strConcat);
        }
    }
}
