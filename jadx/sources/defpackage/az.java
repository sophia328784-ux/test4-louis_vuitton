package defpackage;

import android.app.ApplicationExitInfo;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.UnsupportedSchemeException;
import android.os.Build;
import android.util.Log;
import androidx.media3.exoplayer.drm.DummyExoMediaDrm;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import androidx.media3.exoplayer.drm.FrameworkMediaDrm;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.flac.FlacExtractor;
import androidx.media3.extractor.flv.FlvExtractor;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapFactory;
import com.bumptech.glide.util.GlideSuppliers;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.mac.HmacKey;
import com.google.crypto.tink.mac.internal.ChunkedHmacImpl;
import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.sightcall.universal.media.offline.FileUtils;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.util.UUID;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class az implements LibraryVersionComponent.VersionExtractor, OnFailureListener, ComponentFactory, FirebaseAppLifecycleListener, ExtractorsFactory, ExoMediaDrm.Provider, GlideSuppliers.GlideSupplier, Function, PrimitiveConstructor.PrimitiveConstructionFunction, Id3Decoder.FramePredicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20663b;

    public /* synthetic */ az(int i2) {
        this.f20663b = i2;
    }

    public static /* bridge */ /* synthetic */ ApplicationExitInfo l(Object obj) {
        return (ApplicationExitInfo) obj;
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void n(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void o(String str) throws IOException {
        throw new IOException(str);
    }

    public static /* synthetic */ void p(String str, double d) {
        throw new IllegalArgumentException(str + d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void q(String str, int i2, Object obj) {
        throw new IllegalArgumentException((str + obj + ((char) i2)).toString());
    }

    public static /* synthetic */ void r(String str, Object obj, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    public static /* synthetic */ void s(String str, Throwable th) {
        throw new IllegalStateException(str, th);
    }

    public static /* synthetic */ void t(StringBuilder sb, Object obj, int i2, Object obj2, int i3) {
        sb.append(obj);
        sb.append(i2);
        sb.append(obj2);
        sb.append(i3);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void u(Object obj, String str) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException(str + obj);
    }

    public static /* synthetic */ void v(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static /* synthetic */ void w(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void x(String str) throws InvalidCipherTextException {
        throw new InvalidCipherTextException(str);
    }

    public static /* synthetic */ void y(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        VtoSetting vtoSetting = (VtoSetting) obj;
        switch (this.f20663b) {
            case 21:
                break;
        }
        return Boolean.valueOf(a.f(vtoSetting.f40014a));
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object c(ComponentContainer componentContainer) {
        switch (this.f20663b) {
            case 3:
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(componentContainer);
            case 4:
            default:
                return FirebaseSessionsRegistrar.getComponents$lambda$1(componentContainer);
            case 5:
                return FirebaseSessionsRegistrar.getComponents$lambda$0(componentContainer);
        }
    }

    @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
    public Object d(Key key) {
        return new ChunkedHmacImpl((HmacKey) key);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
    public boolean g(int i2, int i3, int i4, int i5, int i6) {
        return false;
    }

    @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
    public Object get() {
        GlideSuppliers.GlideSupplier glideSupplier = GlideBitmapFactory.GainmapDecoderWorkaroundStateCalculator.f24787a;
        boolean z = false;
        if (Build.VERSION.SDK_INT == 34) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
            Bitmap bitmapCopy = bitmapCreateBitmap.copy(Bitmap.Config.HARDWARE, false);
            bitmapCreateBitmap.recycle();
            z = bitmapCopy == null;
            Log.isLoggable("GainmapWorkaroundCalc", 2);
            if (bitmapCopy != null) {
                bitmapCopy.recycle();
            }
        }
        return Boolean.valueOf(z);
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String h(Context context) {
        switch (this.f20663b) {
            case 0:
                if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
                    return "tv";
                }
                if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                    return "watch";
                }
                if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                    return "auto";
                }
                return context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") ? "embedded" : "";
            default:
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                return installerPackageName != null ? FirebaseCommonRegistrar.a(installerPackageName) : "";
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm.Provider
    public ExoMediaDrm i(UUID uuid) {
        try {
            try {
                return new FrameworkMediaDrm(uuid);
            } catch (UnsupportedDrmException unused) {
                androidx.media3.common.util.Log.d("Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + FileUtils.HIDDEN_PREFIX);
                return new DummyExoMediaDrm();
            }
        } catch (UnsupportedSchemeException e2) {
            throw new UnsupportedDrmException(1, e2);
        } catch (Exception e3) {
            throw new UnsupportedDrmException(2, e3);
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        switch (this.f20663b) {
            case 7:
                return new Extractor[]{new FlacExtractor()};
            default:
                return new Extractor[]{new FlvExtractor()};
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        Logger.f34483b.b();
    }
}
