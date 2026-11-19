package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.Okio;
import okio.RealBufferedSource;
import okio.RealBufferedSource$inputStream$1;

/* JADX INFO: loaded from: classes.dex */
public abstract class LottieCompositionFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f21755a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashSet f21756b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f21757c = {80, 75, 3, 4};
    public static final byte[] d = {31, -117, 8};

    public static LottieTask a(final String str, Callable callable, Runnable runnable) {
        LottieComposition lottieCompositionA = str == null ? null : LottieCompositionCache.f22082b.a(str);
        LottieTask lottieTask = lottieCompositionA != null ? new LottieTask(lottieCompositionA) : null;
        HashMap map = f21755a;
        if (str != null && map.containsKey(str)) {
            lottieTask = (LottieTask) map.get(str);
        }
        if (lottieTask != null) {
            if (runnable != null) {
                runnable.run();
            }
            return lottieTask;
        }
        LottieTask lottieTask2 = new LottieTask(callable);
        if (str != null) {
            final int i2 = 0;
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            lottieTask2.b(new LottieListener() { // from class: xa0
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    int i3 = i2;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    String str2 = str;
                    switch (i3) {
                        case 0:
                            HashMap map2 = LottieCompositionFactory.f21755a;
                            map2.remove(str2);
                            atomicBoolean2.set(true);
                            if (map2.size() == 0) {
                                LottieCompositionFactory.j(true);
                            }
                            break;
                        default:
                            HashMap map3 = LottieCompositionFactory.f21755a;
                            map3.remove(str2);
                            atomicBoolean2.set(true);
                            if (map3.size() == 0) {
                                LottieCompositionFactory.j(true);
                            }
                            break;
                    }
                }
            });
            final int i3 = 1;
            lottieTask2.a(new LottieListener() { // from class: xa0
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    int i4 = i3;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    String str2 = str;
                    switch (i4) {
                        case 0:
                            HashMap map2 = LottieCompositionFactory.f21755a;
                            map2.remove(str2);
                            atomicBoolean2.set(true);
                            if (map2.size() == 0) {
                                LottieCompositionFactory.j(true);
                            }
                            break;
                        default:
                            HashMap map3 = LottieCompositionFactory.f21755a;
                            map3.remove(str2);
                            atomicBoolean2.set(true);
                            if (map3.size() == 0) {
                                LottieCompositionFactory.j(true);
                            }
                            break;
                    }
                }
            });
            if (!atomicBoolean.get()) {
                map.put(str, lottieTask2);
                if (map.size() == 1) {
                    j(false);
                }
            }
        }
        return lottieTask2;
    }

    public static LottieResult b(Context context, String str, String str2) {
        LottieComposition lottieCompositionA = str2 == null ? null : LottieCompositionCache.f22082b.a(str2);
        if (lottieCompositionA != null) {
            return new LottieResult(lottieCompositionA);
        }
        try {
            return c(context, context.getAssets().open(str), str2);
        } catch (IOException e2) {
            return new LottieResult((Throwable) e2);
        }
    }

    public static LottieResult c(Context context, InputStream inputStream, String str) {
        LottieComposition lottieCompositionA = str == null ? null : LottieCompositionCache.f22082b.a(str);
        if (lottieCompositionA != null) {
            return new LottieResult(lottieCompositionA);
        }
        try {
            RealBufferedSource realBufferedSource = new RealBufferedSource(Okio.f(inputStream));
            if (i(realBufferedSource, f21757c).booleanValue()) {
                return g(context, new ZipInputStream(new RealBufferedSource$inputStream$1(realBufferedSource)), str);
            }
            return i(realBufferedSource, d).booleanValue() ? d(new GZIPInputStream(new RealBufferedSource$inputStream$1(realBufferedSource)), str) : e(JsonReader.u(realBufferedSource), str, true);
        } catch (IOException e2) {
            return new LottieResult((Throwable) e2);
        }
    }

    public static LottieResult d(InputStream inputStream, String str) {
        return e(JsonReader.u(new RealBufferedSource(Okio.f(inputStream))), str, true);
    }

    public static LottieResult e(JsonReader jsonReader, String str, boolean z) {
        try {
            LottieComposition lottieCompositionA = str == null ? null : LottieCompositionCache.f22082b.a(str);
            if (lottieCompositionA != null) {
                return new LottieResult(lottieCompositionA);
            }
            LottieComposition lottieCompositionA2 = LottieCompositionMoshiParser.a(jsonReader);
            if (str != null) {
                LottieCompositionCache.f22082b.f22083a.c(str, lottieCompositionA2);
            }
            return new LottieResult(lottieCompositionA2);
        } catch (Exception e2) {
            return new LottieResult((Throwable) e2);
        } finally {
            if (z) {
                Utils.b(jsonReader);
            }
        }
    }

    public static LottieTask f(Context context, final int i2, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return a(str, new Callable() { // from class: wa0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult lottieResult;
                int i3 = i2;
                HashMap map = LottieCompositionFactory.f21755a;
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    context2 = applicationContext;
                }
                String str2 = str;
                LottieComposition lottieCompositionA = str2 == null ? null : LottieCompositionCache.f22082b.a(str2);
                if (lottieCompositionA != null) {
                    return new LottieResult(lottieCompositionA);
                }
                try {
                    RealBufferedSource realBufferedSource = new RealBufferedSource(Okio.f(context2.getResources().openRawResource(i3)));
                    if (LottieCompositionFactory.i(realBufferedSource, LottieCompositionFactory.f21757c).booleanValue()) {
                        return LottieCompositionFactory.g(context2, new ZipInputStream(new RealBufferedSource$inputStream$1(realBufferedSource)), str2);
                    }
                    if (!LottieCompositionFactory.i(realBufferedSource, LottieCompositionFactory.d).booleanValue()) {
                        return LottieCompositionFactory.e(JsonReader.u(realBufferedSource), str2, true);
                    }
                    try {
                        return LottieCompositionFactory.d(new GZIPInputStream(new RealBufferedSource$inputStream$1(realBufferedSource)), str2);
                    } catch (IOException e2) {
                        lottieResult = new LottieResult((Throwable) e2);
                    }
                } catch (Resources.NotFoundException e3) {
                    lottieResult = new LottieResult((Throwable) e3);
                }
                return lottieResult;
            }
        }, null);
    }

    public static LottieResult g(Context context, ZipInputStream zipInputStream, String str) {
        try {
            return h(context, zipInputStream, str);
        } finally {
            Utils.b(zipInputStream);
        }
    }

    public static LottieResult h(Context context, ZipInputStream zipInputStream, String str) {
        LottieComposition lottieCompositionA;
        LottieImageAsset lottieImageAsset;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        if (str == null) {
            lottieCompositionA = null;
        } else {
            try {
                lottieCompositionA = LottieCompositionCache.f22082b.a(str);
            } catch (IOException e2) {
                return new LottieResult((Throwable) e2);
            }
        }
        if (lottieCompositionA != null) {
            return new LottieResult(lottieCompositionA);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        LottieComposition lottieComposition = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                lottieComposition = (LottieComposition) e(JsonReader.u(new RealBufferedSource(Okio.f(zipInputStream))), null, false).f21781a;
            } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                String[] strArrSplit = name.split("/");
                map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
            } else if (name.contains(".ttf") || name.contains(".otf")) {
                String[] strArrSplit2 = name.split("/");
                String str2 = strArrSplit2[strArrSplit2.length - 1];
                String str3 = str2.split("\\.")[0];
                if (context == null) {
                    return new LottieResult((Throwable) new IllegalStateException("Unable to extract font " + str3 + " please pass a non-null Context parameter"));
                }
                File file = new File(context.getCacheDir(), str2);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i2 = zipInputStream.read(bArr);
                                if (i2 == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i2);
                            }
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                } catch (Throwable th5) {
                    Logger.b("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th5);
                }
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                if (!file.delete()) {
                    Logger.a("Failed to delete temp font file " + file.getAbsolutePath() + FileUtils.HIDDEN_PREFIX);
                }
                map2.put(str3, typefaceCreateFromFile);
            } else {
                zipInputStream.closeEntry();
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (lottieComposition == null) {
            return new LottieResult((Throwable) new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : map.entrySet()) {
            String str4 = (String) entry.getKey();
            Iterator it = ((HashMap) lottieComposition.c()).values().iterator();
            do {
                if (!it.hasNext()) {
                    lottieImageAsset = null;
                    break;
                }
                lottieImageAsset = (LottieImageAsset) it.next();
            } while (!lottieImageAsset.d.equals(str4));
            if (lottieImageAsset != null) {
                lottieImageAsset.f21771f = Utils.d((Bitmap) entry.getValue(), lottieImageAsset.f21767a, lottieImageAsset.f21768b);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            boolean z = false;
            for (Font font : lottieComposition.f21750f.values()) {
                if (font.f22072a.equals(entry2.getKey())) {
                    font.d = (Typeface) entry2.getValue();
                    z = true;
                }
            }
            if (!z) {
                Logger.a("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (map.isEmpty()) {
            Iterator it2 = ((HashMap) lottieComposition.c()).entrySet().iterator();
            while (it2.hasNext()) {
                LottieImageAsset lottieImageAsset2 = (LottieImageAsset) ((Map.Entry) it2.next()).getValue();
                if (lottieImageAsset2 == null) {
                    return null;
                }
                String str5 = lottieImageAsset2.d;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (str5.startsWith("data:") && str5.indexOf("base64,") > 0) {
                    try {
                        byte[] bArrDecode = Base64.decode(str5.substring(str5.indexOf(44) + 1), 0);
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                        if (bitmapDecodeByteArray != null) {
                            lottieImageAsset2.f21771f = Utils.d(bitmapDecodeByteArray, lottieImageAsset2.f21767a, lottieImageAsset2.f21768b);
                        }
                    } catch (IllegalArgumentException e3) {
                        Logger.b("data URL did not have correct base64 format.", e3);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            LottieCompositionCache.f22082b.f22083a.c(str, lottieComposition);
        }
        return new LottieResult(lottieComposition);
    }

    public static Boolean i(RealBufferedSource realBufferedSource, byte[] bArr) {
        try {
            RealBufferedSource realBufferedSourcePeek = realBufferedSource.peek();
            for (byte b2 : bArr) {
                if (realBufferedSourcePeek.readByte() != b2) {
                    return Boolean.FALSE;
                }
            }
            realBufferedSourcePeek.close();
            return Boolean.TRUE;
        } catch (Exception unused) {
            Logger.f22287a.getClass();
            AsyncUpdates asyncUpdates = L.f21740a;
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused2) {
            return Boolean.FALSE;
        }
    }

    public static void j(boolean z) {
        ArrayList arrayList = new ArrayList(f21756b);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((LottieTaskIdleListener) arrayList.get(i2)).a();
        }
    }

    public static String k(int i2, Context context) {
        return d21.f(i2, (context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_", new StringBuilder("rawRes"));
    }
}
