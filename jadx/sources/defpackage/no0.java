package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.OutputOptions;
import androidx.camera.video.internal.OutputStorage;
import androidx.camera.video.internal.OutputStorageImpl;
import androidx.camera.video.internal.encoder.EncoderConfig;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.view.impl.ZoomGestureDetector;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.ts.PsExtractor;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.c;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.d;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$j;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$k;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$l;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.bouncycastle.jce.provider.AnnotatedException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class no0 implements ZoomGestureDetector.OnZoomGestureListener, Function, com.perfectcorp.thirdparty.io.reactivex.functions.Function, BiConsumer, ExtractorsFactory, EncoderFactory, OutputStorage.Factory, Deferred.DeferredHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76581b;

    public /* synthetic */ no0(int i2) {
        this.f76581b = i2;
    }

    public static /* synthetic */ void i(int i2, String str) {
        throw new IllegalStateException((str + i2).toString());
    }

    public static /* synthetic */ void k(Object obj, int i2, int i3, String str) {
        throw new IllegalStateException(str + i2 + obj + i3);
    }

    public static /* synthetic */ void l(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    public static /* synthetic */ void n(Object obj, String str) throws GeneralSecurityException {
        throw new GeneralSecurityException(str + obj);
    }

    public static /* synthetic */ void o(String str) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException(str);
    }

    public static /* synthetic */ void p(String str, long j2, Object obj, long j3) throws IOException {
        throw new IOException(str + j2 + obj + j3);
    }

    public static /* synthetic */ void q(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void r(String str, Object obj, Object obj2, Object obj3, int i2) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + ((char) i2));
    }

    public static /* synthetic */ void s(StringBuilder sb, int i2) {
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static /* synthetic */ void t(Object obj, String str) {
        throw new AssertionError(str + obj);
    }

    public static /* synthetic */ void u(String str) throws InvalidParameterSpecException {
        throw new InvalidParameterSpecException(str);
    }

    public static /* synthetic */ void v(String str) throws AnnotatedException {
        throw new AnnotatedException(str);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f76581b) {
            case 9:
                c cVar = (c) obj2;
                ((HashMap) obj).put(cVar.f41286a, cVar);
                break;
            default:
                ((Set) obj).add((Boolean) obj2);
                break;
        }
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public Object mo0apply(Object obj) {
        switch (this.f76581b) {
            case 5:
                return ProcessCameraProvider.f2705c;
            case 6:
                String str = (String) obj;
                return new t(new c$j(str).c(), new t7(str, 13));
            case 7:
                String str2 = (String) obj;
                Log.g(3, "ProductMaskHelper", "[syncServer] query product list for featureType=" + str2);
                return new m(new c$l(str2).c(), new t7(str2, 15));
            case 8:
                return ((e.a) obj).a();
            case 9:
            case 13:
            default:
                return obj;
            case 10:
                return new c$k((List) obj).c();
            case 11:
                return ((d) obj).a();
            case 12:
                String str3 = (String) obj;
                Log.g(3, "ProductMaskHelper", "[checkNeedToUpdate] query product list for featureType=" + str3);
                return new t(new c$l(str3).c(), new t7(str3, 14));
            case 14:
                return Boolean.valueOf(((Set) obj).contains(Boolean.TRUE));
        }
    }

    @Override // androidx.camera.video.internal.encoder.EncoderFactory
    public EncoderImpl c(Executor executor, EncoderConfig encoderConfig, int i2) {
        return new EncoderImpl(executor, encoderConfig, i2);
    }

    @Override // androidx.camera.video.internal.OutputStorage.Factory
    public OutputStorageImpl d(OutputOptions outputOptions) {
        return new OutputStorageImpl(outputOptions);
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void g(Provider provider) {
        ((FirebaseRemoteConfigInterop) provider.get()).a();
        Logger.f34483b.a(3);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        return new Extractor[]{new PsExtractor()};
    }

    public /* synthetic */ no0(Object obj, int i2) {
        this.f76581b = i2;
    }
}
