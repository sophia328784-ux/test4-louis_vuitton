package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.Extractor;
import androidx.media3.session.DefaultMediaNotificationProvider;
import com.google.common.base.Supplier;
import java.io.EOFException;
import java.lang.reflect.Constructor;
import kotlin.KotlinNothingValueException;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class os implements ListenerSet.Event, DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier, HlsPlaylistTracker.Factory, DefaultMediaNotificationProvider.NotificationIdProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78656b;

    private final void c() {
    }

    public static /* synthetic */ void d() {
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void e(Object obj, int i2, int i3, String str) throws EOFException {
        throw new EOFException(str + i2 + obj + i3);
    }

    public static /* synthetic */ void f(Object obj, String str) {
        throw new KotlinReflectionInternalError(str + obj);
    }

    @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
    public Constructor a() {
        switch (this.f78656b) {
            case 22:
                int[] iArr = DefaultExtractorsFactory.f16126h;
                if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                    return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(Extractor.class).getConstructor(Integer.TYPE);
                }
                return null;
            default:
                int[] iArr2 = DefaultExtractorsFactory.f16126h;
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(Extractor.class).getConstructor(null);
        }
    }

    @Override // androidx.media3.session.DefaultMediaNotificationProvider.NotificationIdProvider
    public void b() {
        switch (this.f78656b) {
            case 25:
                Supplier supplier = DefaultMediaNotificationProvider.f17285j;
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f78656b) {
            case 0:
                analyticsListener.getClass();
                break;
            case 1:
                analyticsListener.getClass();
                break;
            case 2:
                analyticsListener.getClass();
                break;
            case 3:
                analyticsListener.getClass();
                break;
            case 4:
                analyticsListener.getClass();
                break;
            case 5:
                analyticsListener.getClass();
                break;
            case 6:
                analyticsListener.getClass();
                break;
            case 7:
                analyticsListener.getClass();
                break;
            case 8:
                analyticsListener.getClass();
                break;
            case 9:
                analyticsListener.getClass();
                break;
            case 10:
                analyticsListener.getClass();
                break;
            case 11:
                analyticsListener.getClass();
                break;
            case 12:
                analyticsListener.getClass();
                break;
            case 13:
                analyticsListener.getClass();
                break;
            case 14:
                analyticsListener.getClass();
                break;
            case 15:
                analyticsListener.getClass();
                break;
            case 16:
                analyticsListener.getClass();
                break;
            case 17:
                analyticsListener.getClass();
                break;
            case 18:
                analyticsListener.getClass();
                break;
            case 19:
                analyticsListener.getClass();
                break;
            case 20:
                analyticsListener.getClass();
                break;
            default:
                analyticsListener.getClass();
                break;
        }
    }
}
