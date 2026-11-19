package defpackage;

import android.graphics.Bitmap;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.session.MediaSessionService;
import androidx.media3.session.SizeLimitedBitmapLoader;
import com.google.common.base.Function;
import com.google.common.collect.Multimap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mw implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76373c;

    public /* synthetic */ mw(Object obj, int i2) {
        this.f76372b = i2;
        this.f76373c = obj;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        int i2 = this.f76372b;
        Object obj2 = this.f76373c;
        switch (i2) {
            case 0:
                AnalyticsCollector analyticsCollector = (AnalyticsCollector) obj2;
                int i3 = ExoPlayer.Builder.E;
                return analyticsCollector;
            case 1:
                MediaSessionService.a((MediaSessionService) obj2, (RuntimeException) obj);
                return null;
            case 2:
                return ((Multimap) obj2).get(obj);
            default:
                SizeLimitedBitmapLoader sizeLimitedBitmapLoader = (SizeLimitedBitmapLoader) obj2;
                Bitmap bitmapCreateScaledBitmap = (Bitmap) obj;
                int width = bitmapCreateScaledBitmap.getWidth();
                int i4 = sizeLimitedBitmapLoader.f17590b;
                if (width > i4 || bitmapCreateScaledBitmap.getHeight() > i4) {
                    float f2 = i4;
                    float width2 = bitmapCreateScaledBitmap.getWidth();
                    float height = bitmapCreateScaledBitmap.getHeight();
                    float fMin = Math.min(f2 / width2, f2 / height);
                    bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, (int) (width2 * fMin), (int) (height * fMin), true);
                }
                return sizeLimitedBitmapLoader.f17591c ? BitmapUtil.b(bitmapCreateScaledBitmap) : bitmapCreateScaledBitmap;
        }
    }
}
