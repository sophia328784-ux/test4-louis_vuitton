package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.exoplayer.image.ImageRenderer;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionRenderer;
import com.google.common.base.Preconditions;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.lc0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DefaultRenderersFactory implements RenderersFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DefaultMediaCodecAdapterFactory f14627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14628c = LiveTranslationEntity.DefaultSentenceTimeOut;
    public final lc0 d = MediaCodecSelector.f0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14629e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f14630f = 15000;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ExtensionRendererMode {
    }

    public DefaultRenderersFactory(Context context) {
        this.f14626a = context;
        this.f14627b = new DefaultMediaCodecAdapterFactory(context);
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public final Renderer[] a(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        ArrayList arrayList = new ArrayList();
        Context context = this.f14626a;
        MediaCodecVideoRenderer.Builder builder = new MediaCodecVideoRenderer.Builder(context);
        builder.d = this.f14627b;
        lc0 lc0Var = this.d;
        builder.f15896c = lc0Var;
        builder.f15897e = this.f14628c;
        builder.f15898f = false;
        builder.g = handler;
        builder.f15899h = videoRendererEventListener;
        builder.f15900i = 50;
        builder.l = this.f14629e;
        builder.m = this.f14630f;
        Preconditions.q(!builder.f15895b);
        Handler handler2 = builder.g;
        Preconditions.q((handler2 == null && builder.f15899h == null) || !(handler2 == null || builder.f15899h == null));
        builder.f15895b = true;
        arrayList.add(new MediaCodecVideoRenderer(builder));
        arrayList.add(new MediaCodecAudioRenderer(this.f14626a, this.f14627b, lc0Var, false, handler, audioRendererEventListener, new DefaultAudioSink.Builder(context).a()));
        arrayList.add(new TextRenderer(textOutput, handler.getLooper()));
        Looper looper = handler.getLooper();
        for (int i2 = 0; i2 < 4; i2++) {
            arrayList.add(new MetadataRenderer(metadataOutput, looper));
        }
        arrayList.add(new CameraMotionRenderer());
        arrayList.add(new ImageRenderer(new BitmapFactoryImageDecoder.Factory(context), null));
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public final void b(Renderer renderer) {
        renderer.getClass();
    }
}
