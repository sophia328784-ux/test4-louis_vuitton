package com.networkbench.agent.impl.instrumentation;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.TypedValue;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.type.MetricCategory;
import com.networkbench.agent.impl.util.ak;
import defpackage.o60;
import java.io.FileDescriptor;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class NBSBitmapFactoryInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList("category", MetricCategory.class.getName(), "IMAGE"));

    public static Bitmap decodeByteArray(byte[] bArr, int i2, int i3, BitmapFactory.Options options) {
        NBSTraceEngine.enterMethod(o60.p("BitmapFactory#decodeByteArray", new StringBuilder()), categoryParams);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, i2, i3, options);
        NBSTraceEngine.exitMethod();
        return bitmapDecodeByteArray;
    }

    public static Bitmap decodeFile(String str, BitmapFactory.Options options) {
        try {
            NBSTraceEngine.enterMethod(ak.b() + "BitmapFactory#decodeFile", categoryParams);
        } catch (Throwable th) {
            g.b("decodeFile has an error : ", th);
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        try {
            NBSTraceEngine.exitMethod();
        } catch (Throwable th2) {
            g.b("decodeFile has an error : ", th2);
        }
        return bitmapDecodeFile;
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, BitmapFactory.Options options) {
        NBSTraceEngine.enterMethod(o60.p("BitmapFactory#decodeFileDescriptor", new StringBuilder()), categoryParams);
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, rect, options);
        NBSTraceEngine.exitMethod();
        return bitmapDecodeFileDescriptor;
    }

    public static Bitmap decodeResource(Resources resources, int i2, BitmapFactory.Options options) {
        try {
            NBSTraceEngine.enterMethod(ak.b() + "BitmapFactory#decodeResource", categoryParams);
        } catch (Throwable th) {
            g.b("decodeResource has an error : ", th);
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i2, options);
        try {
            NBSTraceEngine.exitMethod();
        } catch (Throwable th2) {
            g.b("decodeResource has an error : ", th2);
        }
        return bitmapDecodeResource;
    }

    public static Bitmap decodeResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        try {
            NBSTraceEngine.enterMethod(ak.b() + "BitmapFactory#decodeResourceStream", categoryParams);
        } catch (Throwable th) {
            g.b("decodeResourceStream has an error : ", th);
        }
        Bitmap bitmapDecodeResourceStream = BitmapFactory.decodeResourceStream(resources, typedValue, inputStream, rect, options);
        try {
            NBSTraceEngine.exitMethod();
        } catch (Throwable th2) {
            g.b("decodeResourceStream has an error : ", th2);
        }
        return bitmapDecodeResourceStream;
    }

    public static Bitmap decodeStream(InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        NBSTraceEngine.enterMethod(o60.p("BitmapFactory#decodeStream", new StringBuilder()), categoryParams);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, rect, options);
        NBSTraceEngine.exitMethod();
        return bitmapDecodeStream;
    }

    @Deprecated
    public void a() {
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i2, int i3) {
        NBSTraceEngine.enterMethod(o60.p("BitmapFactory#decodeByteArray", new StringBuilder()), categoryParams);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, i2, i3);
        NBSTraceEngine.exitMethod();
        return bitmapDecodeByteArray;
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        NBSTraceEngine.enterMethod(o60.p("BitmapFactory#decodeFileDescriptor", new StringBuilder()), categoryParams);
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor);
        NBSTraceEngine.exitMethod();
        return bitmapDecodeFileDescriptor;
    }

    public static Bitmap decodeStream(InputStream inputStream) {
        NBSTraceEngine.enterMethod(o60.p("BitmapFactory#decodeStream", new StringBuilder()), categoryParams);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
        NBSTraceEngine.exitMethod();
        return bitmapDecodeStream;
    }

    public static Bitmap decodeFile(String str) {
        try {
            NBSTraceEngine.enterMethod(ak.b() + "BitmapFactory#decodeFile", categoryParams);
        } catch (Throwable th) {
            g.b("decodeFile has an error : ", th);
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        try {
            NBSTraceEngine.exitMethod();
        } catch (Throwable th2) {
            g.b("decodeFile has an error : ", th2);
        }
        return bitmapDecodeFile;
    }

    public static Bitmap decodeResource(Resources resources, int i2) {
        try {
            NBSTraceEngine.enterMethod(ak.b() + "BitmapFactory#decodeResource", categoryParams);
        } catch (Throwable th) {
            g.b("decodeResource has an error : ", th);
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i2);
        try {
            NBSTraceEngine.exitMethod();
        } catch (Throwable th2) {
            g.b("decodeResource has an error : ", th2);
        }
        return bitmapDecodeResource;
    }
}
