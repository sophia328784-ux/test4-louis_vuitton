package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Trace;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatApi29Impl;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
abstract class FontRequestWorker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LruCache f12099a = new LruCache(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f12100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f12101c;
    public static final SimpleArrayMap d;

    static {
        RequestExecutor$DefaultThreadFactory requestExecutor$DefaultThreadFactory = new RequestExecutor$DefaultThreadFactory();
        requestExecutor$DefaultThreadFactory.f12113b = "fonts-androidx";
        requestExecutor$DefaultThreadFactory.f12114c = 10;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), requestExecutor$DefaultThreadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f12100b = threadPoolExecutor;
        f12101c = new Object();
        d = new SimpleArrayMap();
    }

    public static String a(int i2, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < list.size(); i3++) {
            sb.append(((FontRequest) list.get(i3)).f12098h);
            sb.append("-");
            sb.append(i2);
            if (i3 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public static TypefaceResult b(String str, Context context, List list, int i2) {
        int i3;
        Typeface typefaceA;
        LruCache lruCache = f12099a;
        Trace.beginSection(androidx.tracing.Trace.b("getFontSync"));
        try {
            Typeface typeface = (Typeface) lruCache.b(str);
            if (typeface != null) {
                TypefaceResult typefaceResult = new TypefaceResult(typeface);
                Trace.endSection();
                return typefaceResult;
            }
            try {
                FontsContractCompat.FontFamilyResult fontFamilyResultA = FontProvider.a(context, list);
                List list2 = fontFamilyResultA.f12107b;
                int i4 = fontFamilyResultA.f12106a;
                if (i4 == 0) {
                    FontsContractCompat.FontInfo[] fontInfoArr = (FontsContractCompat.FontInfo[]) list2.get(0);
                    if (fontInfoArr == null || fontInfoArr.length == 0) {
                        i3 = 1;
                    } else {
                        int length = fontInfoArr.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                i3 = 0;
                                break;
                            }
                            int i6 = fontInfoArr[i5].f12112f;
                            if (i6 != 0) {
                                if (i6 >= 0) {
                                    i3 = i6;
                                    break;
                                }
                                i3 = -3;
                                break;
                            }
                            i5++;
                        }
                    }
                } else {
                    if (i4 != 1) {
                        i3 = -3;
                        break;
                    }
                    i3 = -2;
                }
                if (i3 != 0) {
                    TypefaceResult typefaceResult2 = new TypefaceResult(i3);
                    Trace.endSection();
                    return typefaceResult2;
                }
                if (list2.size() > 1) {
                    TypefaceCompatApi29Impl typefaceCompatApi29Impl = TypefaceCompat.f12060a;
                    Trace.beginSection(androidx.tracing.Trace.b("TypefaceCompat.createFromFontInfoWithFallback"));
                    try {
                        typefaceA = TypefaceCompat.f12060a.a(i2, context, list2);
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } else {
                    typefaceA = TypefaceCompat.a(context, (FontsContractCompat.FontInfo[]) list2.get(0), i2);
                }
                if (typefaceA == null) {
                    TypefaceResult typefaceResult3 = new TypefaceResult(-3);
                    Trace.endSection();
                    return typefaceResult3;
                }
                lruCache.c(str, typefaceA);
                TypefaceResult typefaceResult4 = new TypefaceResult(typefaceA);
                Trace.endSection();
                return typefaceResult4;
            } catch (PackageManager.NameNotFoundException unused) {
                TypefaceResult typefaceResult5 = new TypefaceResult(-1);
                Trace.endSection();
                return typefaceResult5;
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    public static final class TypefaceResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Typeface f12104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12105b;

        public TypefaceResult(int i2) {
            this.f12104a = null;
            this.f12105b = i2;
        }

        public TypefaceResult(Typeface typeface) {
            this.f12104a = typeface;
            this.f12105b = 0;
        }
    }
}
