package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Consumer;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class FontsContractCompat {

    public static class FontRequestCallback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface FontRequestFailReason {
        }

        public void a(int i2) {
        }

        public void b(Typeface typeface) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TypefaceStyle {
    }

    public static FontFamilyResult a(Context context, FontRequest fontRequest) {
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return FontProvider.a(context, Collections.unmodifiableList(arrayList));
    }

    public static Typeface b(final Context context, final List list, final int i2, boolean z, int i3, Handler handler, TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter) {
        final CallbackWrapper callbackWrapper = new CallbackWrapper(resourcesCallbackAdapter, new RequestExecutor$HandlerExecutor(handler));
        if (!z) {
            final String strA = FontRequestWorker.a(i2, list);
            Typeface typeface = (Typeface) FontRequestWorker.f12099a.b(strA);
            if (typeface != null) {
                callbackWrapper.a(new FontRequestWorker.TypefaceResult(typeface));
                return typeface;
            }
            Consumer<FontRequestWorker.TypefaceResult> consumer = new Consumer<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    TypefaceResult typefaceResult = (TypefaceResult) obj;
                    if (typefaceResult == null) {
                        typefaceResult = new TypefaceResult(-3);
                    }
                    callbackWrapper.a(typefaceResult);
                }
            };
            synchronized (FontRequestWorker.f12101c) {
                try {
                    SimpleArrayMap simpleArrayMap = FontRequestWorker.d;
                    ArrayList arrayList = (ArrayList) simpleArrayMap.get(strA);
                    if (arrayList != null) {
                        arrayList.add(consumer);
                        return null;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(consumer);
                    simpleArrayMap.put(strA, arrayList2);
                    final Callable<FontRequestWorker.TypefaceResult> callable = new Callable<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.3
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.concurrent.Callable
                        public TypefaceResult call() {
                            try {
                                return FontRequestWorker.b(strA, context, list, i2);
                            } catch (Throwable unused) {
                                return new TypefaceResult(-3);
                            }
                        }
                    };
                    ThreadPoolExecutor threadPoolExecutor = FontRequestWorker.f12100b;
                    final Consumer<FontRequestWorker.TypefaceResult> consumer2 = new Consumer<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            TypefaceResult typefaceResult = (TypefaceResult) obj;
                            synchronized (FontRequestWorker.f12101c) {
                                try {
                                    SimpleArrayMap simpleArrayMap2 = FontRequestWorker.d;
                                    ArrayList arrayList3 = (ArrayList) simpleArrayMap2.get(strA);
                                    if (arrayList3 == null) {
                                        return;
                                    }
                                    simpleArrayMap2.remove(strA);
                                    for (int i4 = 0; i4 < arrayList3.size(); i4++) {
                                        ((Consumer) arrayList3.get(i4)).accept(typefaceResult);
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    };
                    final Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                    threadPoolExecutor.execute(new Runnable(handler2, callable, consumer2) { // from class: androidx.core.provider.RequestExecutor$ReplyRunnable
                        private Callable<T> mCallable;
                        private Consumer<T> mConsumer;
                        private Handler mHandler;

                        {
                            this.mCallable = callable;
                            this.mConsumer = consumer2;
                            this.mHandler = handler2;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            final T tCall;
                            try {
                                tCall = this.mCallable.call();
                            } catch (Exception unused) {
                                tCall = null;
                            }
                            final Consumer<T> consumer3 = this.mConsumer;
                            this.mHandler.post(new Runnable() { // from class: androidx.core.provider.RequestExecutor$ReplyRunnable.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    consumer3.accept(tCall);
                                }
                            });
                        }
                    });
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (list.size() > 1) {
            md.n("Fallbacks with blocking fetches are not supported for performance reasons");
            return null;
        }
        final FontRequest fontRequest = (FontRequest) list.get(0);
        LruCache lruCache = FontRequestWorker.f12099a;
        ArrayList arrayList3 = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList3.add(obj);
        final String strA2 = FontRequestWorker.a(i2, Collections.unmodifiableList(arrayList3));
        Typeface typeface2 = (Typeface) FontRequestWorker.f12099a.b(strA2);
        if (typeface2 != null) {
            callbackWrapper.a(new FontRequestWorker.TypefaceResult(typeface2));
            return typeface2;
        }
        if (i3 == -1) {
            ArrayList arrayList4 = new ArrayList(1);
            Object obj2 = new Object[]{fontRequest}[0];
            Objects.requireNonNull(obj2);
            arrayList4.add(obj2);
            FontRequestWorker.TypefaceResult typefaceResultB = FontRequestWorker.b(strA2, context, Collections.unmodifiableList(arrayList4), i2);
            callbackWrapper.a(typefaceResultB);
            return typefaceResultB.f12104a;
        }
        try {
            try {
                FontRequestWorker.TypefaceResult typefaceResult = (FontRequestWorker.TypefaceResult) FontRequestWorker.f12100b.submit(new Callable<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.concurrent.Callable
                    public TypefaceResult call() {
                        String str = strA2;
                        Context context2 = context;
                        Object[] objArr = {fontRequest};
                        ArrayList arrayList5 = new ArrayList(1);
                        Object obj3 = objArr[0];
                        Objects.requireNonNull(obj3);
                        arrayList5.add(obj3);
                        return FontRequestWorker.b(str, context2, Collections.unmodifiableList(arrayList5), i2);
                    }
                }).get(i3, TimeUnit.MILLISECONDS);
                callbackWrapper.a(typefaceResult);
                return typefaceResult.f12104a;
            } catch (InterruptedException e2) {
                throw e2;
            } catch (ExecutionException e3) {
                throw new RuntimeException(e3);
            } catch (TimeoutException unused) {
                throw new InterruptedException("timeout");
            }
        } catch (InterruptedException unused2) {
            callbackWrapper.a(new FontRequestWorker.TypefaceResult(-3));
            return null;
        }
    }

    public static class FontFamilyResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12106a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f12107b;

        @Deprecated
        public FontFamilyResult(int i2, FontInfo[] fontInfoArr) {
            this.f12106a = i2;
            this.f12107b = Collections.singletonList(fontInfoArr);
        }

        public FontFamilyResult(ArrayList arrayList) {
            this.f12106a = 0;
            this.f12107b = arrayList;
        }
    }

    public static class FontInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f12108a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12110c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f12111e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f12112f;

        public FontInfo(String str, String str2) {
            this.f12108a = new Uri.Builder().scheme("systemfont").authority(str).build();
            this.f12109b = 0;
            this.f12110c = 400;
            this.d = false;
            this.f12111e = str2;
            this.f12112f = 0;
        }

        public FontInfo(Uri uri, int i2, int i3, boolean z, String str, int i4) {
            uri.getClass();
            this.f12108a = uri;
            this.f12109b = i2;
            this.f12110c = i3;
            this.d = z;
            this.f12111e = str;
            this.f12112f = i4;
        }

        @Deprecated
        public FontInfo(Uri uri, int i2, int i3, boolean z, int i4) {
            this(uri, i2, i3, z, null, i4);
        }
    }
}
