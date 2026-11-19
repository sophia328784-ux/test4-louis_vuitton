package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Trace;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import defpackage.n00;
import defpackage.r81;
import defpackage.to;
import defpackage.v7;
import java.nio.MappedByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    public static final FontProviderHelper d = new FontProviderHelper();

    public static class FontProviderHelper {
    }

    public static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f13101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FontRequest f13102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FontProviderHelper f13103c;
        public final Object d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Handler f13104e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ThreadPoolExecutor f13105f;
        public ThreadPoolExecutor g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public EmojiCompat.MetadataRepoLoaderCallback f13106h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ContentObserver f13107i;

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
            Preconditions.e(context, "Context cannot be null");
            Preconditions.e(fontRequest, "FontRequest cannot be null");
            this.f13101a = context.getApplicationContext();
            this.f13102b = fontRequest;
            this.f13103c = fontProviderHelper;
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void a(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            synchronized (this.d) {
                this.f13106h = metadataRepoLoaderCallback;
            }
            synchronized (this.d) {
                try {
                    if (this.f13106h == null) {
                        return;
                    }
                    if (this.f13105f == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new to("emojiCompat", 0));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.g = threadPoolExecutor;
                        this.f13105f = threadPoolExecutor;
                    }
                    this.f13105f.execute(new Runnable() { // from class: androidx.emoji2.text.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = this.f13126b;
                            synchronized (fontRequestMetadataLoader.d) {
                                try {
                                    if (fontRequestMetadataLoader.f13106h == null) {
                                        return;
                                    }
                                    try {
                                        FontsContractCompat.FontInfo fontInfoC = fontRequestMetadataLoader.c();
                                        int i2 = fontInfoC.f12112f;
                                        if (i2 == 2) {
                                            synchronized (fontRequestMetadataLoader.d) {
                                            }
                                        }
                                        if (i2 != 0) {
                                            throw new RuntimeException("fetchFonts result is not OK. (" + i2 + ")");
                                        }
                                        try {
                                            Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                            FontRequestEmojiCompatConfig.FontProviderHelper fontProviderHelper = fontRequestMetadataLoader.f13103c;
                                            Context context = fontRequestMetadataLoader.f13101a;
                                            fontProviderHelper.getClass();
                                            Typeface typefaceA = TypefaceCompat.a(context, new FontsContractCompat.FontInfo[]{fontInfoC}, 0);
                                            MappedByteBuffer mappedByteBufferA = TypefaceCompatUtil.a(fontRequestMetadataLoader.f13101a, fontInfoC.f12108a);
                                            if (mappedByteBufferA == null || typefaceA == null) {
                                                throw new RuntimeException("Unable to open file.");
                                            }
                                            try {
                                                Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                                MetadataRepo metadataRepo = new MetadataRepo(typefaceA, MetadataListReader.a(mappedByteBufferA));
                                                Trace.endSection();
                                                Trace.endSection();
                                                synchronized (fontRequestMetadataLoader.d) {
                                                    try {
                                                        EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = fontRequestMetadataLoader.f13106h;
                                                        if (metadataRepoLoaderCallback2 != null) {
                                                            metadataRepoLoaderCallback2.b(metadataRepo);
                                                        }
                                                    } catch (Throwable th) {
                                                        throw th;
                                                    }
                                                }
                                                fontRequestMetadataLoader.b();
                                            } catch (Throwable th2) {
                                                Trace.endSection();
                                                throw th2;
                                            }
                                        } catch (Throwable th3) {
                                            Trace.endSection();
                                            throw th3;
                                        }
                                    } catch (Throwable th4) {
                                        synchronized (fontRequestMetadataLoader.d) {
                                            try {
                                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback3 = fontRequestMetadataLoader.f13106h;
                                                if (metadataRepoLoaderCallback3 != null) {
                                                    metadataRepoLoaderCallback3.a(th4);
                                                }
                                                fontRequestMetadataLoader.b();
                                            } catch (Throwable th5) {
                                                throw th5;
                                            }
                                        }
                                    }
                                } catch (Throwable th6) {
                                    throw th6;
                                }
                            }
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b() {
            synchronized (this.d) {
                try {
                    this.f13106h = null;
                    ContentObserver contentObserver = this.f13107i;
                    if (contentObserver != null) {
                        FontProviderHelper fontProviderHelper = this.f13103c;
                        Context context = this.f13101a;
                        fontProviderHelper.getClass();
                        context.getContentResolver().unregisterContentObserver(contentObserver);
                        this.f13107i = null;
                    }
                    Handler handler = this.f13104e;
                    if (handler != null) {
                        handler.removeCallbacks(null);
                    }
                    this.f13104e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f13105f = null;
                    this.g = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat.FontInfo c() {
            try {
                FontProviderHelper fontProviderHelper = this.f13103c;
                Context context = this.f13101a;
                FontRequest fontRequest = this.f13102b;
                fontProviderHelper.getClass();
                FontsContractCompat.FontFamilyResult fontFamilyResultA = FontsContractCompat.a(context, fontRequest);
                int i2 = fontFamilyResultA.f12106a;
                if (i2 != 0) {
                    v7.h(n00.m(i2, "fetchFonts failed (", ")"));
                    return null;
                }
                FontsContractCompat.FontInfo[] fontInfoArr = (FontsContractCompat.FontInfo[]) fontFamilyResultA.f12107b.get(0);
                if (fontInfoArr != null && fontInfoArr.length != 0) {
                    return fontInfoArr[0];
                }
                v7.h("fetchFonts failed (empty result)");
                return null;
            } catch (PackageManager.NameNotFoundException e2) {
                r81.g("provider not found", e2);
                return null;
            }
        }
    }

    public FontRequestEmojiCompatConfig(Context context, FontRequest fontRequest) {
        super(new FontRequestMetadataLoader(context, fontRequest, d));
    }

    public FontRequestEmojiCompatConfig(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
        super(new FontRequestMetadataLoader(context, fontRequest, fontProviderHelper));
    }
}
