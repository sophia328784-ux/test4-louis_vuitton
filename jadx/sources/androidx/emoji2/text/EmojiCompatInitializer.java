package androidx.emoji2.text;

import android.content.Context;
import android.os.Looper;
import android.os.Trace;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import defpackage.to;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {

    public static class BackgroundDefaultConfig extends EmojiCompat.Config {
    }

    public static class BackgroundDefaultLoader implements EmojiCompat.MetadataRepoLoader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f13081a;

        public BackgroundDefaultLoader(Context context) {
            this.f13081a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void a(final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            to toVar = new to("EmojiCompatInitializer", 0);
            final ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), toVar);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.execute(new Runnable() { // from class: androidx.emoji2.text.a
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.BackgroundDefaultLoader backgroundDefaultLoader = this.f13124b;
                    final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = metadataRepoLoaderCallback;
                    final ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        FontRequestEmojiCompatConfig fontRequestEmojiCompatConfigA = DefaultEmojiCompatConfig.a(backgroundDefaultLoader.f13081a);
                        if (fontRequestEmojiCompatConfigA == null) {
                            throw new RuntimeException("EmojiCompat font provider not available on this device.");
                        }
                        FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = (FontRequestEmojiCompatConfig.FontRequestMetadataLoader) fontRequestEmojiCompatConfigA.f13077a;
                        synchronized (fontRequestMetadataLoader.d) {
                            fontRequestMetadataLoader.f13105f = threadPoolExecutor2;
                        }
                        fontRequestEmojiCompatConfigA.f13077a.a(new EmojiCompat.MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompatInitializer.BackgroundDefaultLoader.1
                            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                            public final void a(Throwable th) {
                                ThreadPoolExecutor threadPoolExecutor3 = threadPoolExecutor2;
                                try {
                                    metadataRepoLoaderCallback2.a(th);
                                } finally {
                                    threadPoolExecutor3.shutdown();
                                }
                            }

                            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                            public final void b(MetadataRepo metadataRepo) {
                                ThreadPoolExecutor threadPoolExecutor3 = threadPoolExecutor2;
                                try {
                                    metadataRepoLoaderCallback2.b(metadataRepo);
                                } finally {
                                    threadPoolExecutor3.shutdown();
                                }
                            }
                        });
                    } catch (Throwable th) {
                        metadataRepoLoaderCallback2.a(th);
                        threadPoolExecutor2.shutdown();
                    }
                }
            });
        }
    }

    public static class LoadEmojiCompatRunnable implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.g()) {
                    EmojiCompat.a().h();
                }
            } finally {
                Trace.endSection();
            }
        }
    }

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        Object objB;
        BackgroundDefaultConfig backgroundDefaultConfig = new BackgroundDefaultConfig(new BackgroundDefaultLoader(context));
        backgroundDefaultConfig.f13078b = 1;
        if (EmojiCompat.f13065k == null) {
            synchronized (EmojiCompat.f13064j) {
                try {
                    if (EmojiCompat.f13065k == null) {
                        EmojiCompat.f13065k = new EmojiCompat(backgroundDefaultConfig);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        AppInitializer appInitializerC = AppInitializer.c(context);
        appInitializerC.getClass();
        synchronized (AppInitializer.f19922e) {
            try {
                objB = appInitializerC.f19923a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = appInitializerC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        final Lifecycle f13561b = ((LifecycleOwner) objB).getF13561b();
        f13561b.a(new DefaultLifecycleObserver(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onResume(LifecycleOwner lifecycleOwner) {
                ConcurrencyHelpers$Handler28Impl.a(Looper.getMainLooper()).postDelayed(new LoadEmojiCompatRunnable(), 500L);
                f13561b.d(this);
            }
        });
        return Boolean.TRUE;
    }
}
