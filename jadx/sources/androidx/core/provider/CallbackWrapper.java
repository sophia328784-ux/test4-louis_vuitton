package androidx.core.provider;

import android.graphics.Typeface;
import androidx.core.graphics.TypefaceCompat;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class CallbackWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypefaceCompat.ResourcesCallbackAdapter f12085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f12086b;

    public CallbackWrapper(TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter, Executor executor) {
        this.f12085a = resourcesCallbackAdapter;
        this.f12086b = executor;
    }

    public final void a(FontRequestWorker.TypefaceResult typefaceResult) {
        final int i2 = typefaceResult.f12105b;
        Executor executor = this.f12086b;
        final TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter = this.f12085a;
        if (i2 != 0) {
            ((RequestExecutor$HandlerExecutor) executor).execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    resourcesCallbackAdapter.a(i2);
                }
            });
        } else {
            final Typeface typeface = typefaceResult.f12104a;
            ((RequestExecutor$HandlerExecutor) executor).execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    resourcesCallbackAdapter.b(typeface);
                }
            });
        }
    }
}
