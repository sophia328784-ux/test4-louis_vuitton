package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.os.Build;
import android.os.HandlerThread;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f15360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f15361c;
    public final Supplier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15362e;

    public DefaultMediaCodecAdapterFactory(Context context, Supplier<HandlerThread> supplier, Supplier<HandlerThread> supplier2) {
        this.f15360b = context;
        this.f15362e = true;
        this.f15361c = supplier;
        this.d = supplier2;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
    public final MediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) {
        Supplier supplier;
        Context context;
        if (Build.VERSION.SDK_INT < 31 && ((context = this.f15360b) == null || !context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen"))) {
            return new SynchronousMediaCodecAdapter.Factory().a(configuration);
        }
        int i2 = MimeTypes.i(configuration.f15369c.o);
        Log.f("Creating an asynchronous MediaCodec adapter for track type ".concat(Util.F(i2)));
        Supplier supplier2 = this.f15361c;
        AsynchronousMediaCodecAdapter.Factory factory = (supplier2 == null || (supplier = this.d) == null) ? new AsynchronousMediaCodecAdapter.Factory(i2) : new AsynchronousMediaCodecAdapter.Factory(supplier2, supplier);
        factory.d = this.f15362e;
        return factory.a(configuration);
    }

    public DefaultMediaCodecAdapterFactory(Context context) {
        this(context, null, null);
    }

    @Deprecated
    public DefaultMediaCodecAdapterFactory() {
        this.f15360b = null;
        this.f15361c = null;
        this.d = null;
    }
}
