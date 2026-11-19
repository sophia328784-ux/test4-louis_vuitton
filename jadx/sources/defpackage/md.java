package defpackage;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.View;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.compose.runtime.CancellationHandle;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheKeyFactory;
import com.batch.android.Batch;
import com.batch.android.debug.BatchDebugActivity;
import com.batch.android.j1.a;
import com.batch.android.j1.b;
import com.batch.android.j1.c;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.core.infrastructure.perfectcorp.PfCamera;
import java.io.EOFException;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.util.List;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class md implements c, a, OnApplyWindowInsetsListener, ChunkExtractor.Factory, CacheKeyFactory, Function, androidx.arch.core.util.Function, PfCamera.AutoFocusCallback, Preview.SurfaceProvider, CancellationHandle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76234b;

    public /* synthetic */ md(int i2) {
        this.f76234b = i2;
    }

    public static /* synthetic */ void e() throws EOFException {
        throw new EOFException();
    }

    public static /* synthetic */ void f(int i2, int i3) {
        throw new CryptoServiceConstraintsException("service does not provide " + i2 + ((Object) " bits of security only ") + i3);
    }

    public static /* synthetic */ void g(int i2, String str) {
        throw new IllegalArgumentException(str + i2);
    }

    public static /* synthetic */ void h(Object obj) {
        throw new AssertionError(obj);
    }

    public static /* synthetic */ void i(Object obj, int i2, int i3, String str) throws IOException {
        throw new IOException(str + i2 + obj + i3);
    }

    public static /* synthetic */ void j(Object obj, String str) {
        throw new RuntimeException(str + obj);
    }

    public static /* synthetic */ void k(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void l(String str, Exception exc) throws CMSException {
        throw new CMSException(str, exc);
    }

    public static /* synthetic */ void m(AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("can't handle parameter " + ((Object) algorithmParameters.toString()));
    }

    public static /* synthetic */ void n(String str) {
        throw new IllegalArgumentException(str);
    }

    @Override // androidx.camera.core.Preview.SurfaceProvider
    public void a(SurfaceRequest surfaceRequest) {
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(surfaceRequest.f1974b.getWidth(), surfaceRequest.f1974b.getHeight());
        surfaceTexture.detachFromGLContext();
        Surface surface = new Surface(surfaceTexture);
        surfaceRequest.a(surface, CameraXExecutors.a(), new aj(surface, surfaceTexture, 0));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f76234b) {
            case 15:
                Log.e("CacheStrategyContentUpdater", "[updateCacheFirstThenUpdateContent] failed.", (Throwable) obj);
                return g.f42660b;
            case 16:
            default:
                return Boolean.FALSE;
            case 17:
                return Boolean.TRUE;
            case 18:
                return null;
            case 19:
                return Boolean.valueOf(((List) obj).contains(Boolean.TRUE));
        }
    }

    @Override // androidx.media3.datasource.cache.CacheKeyFactory
    public String b(DataSpec dataSpec) {
        String str = dataSpec.f14395h;
        return str != null ? str : dataSpec.f14390a.toString();
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
    }

    public void o(boolean z) {
        int i2 = CameraController.f62313i;
        Timber.Forest forest = Timber.f80066a;
        forest.g("CameraController");
        forest.a("[AutoFocus] success=" + z, new Object[0]);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return BatchDebugActivity.a(view, windowInsetsCompat);
    }

    @Override // com.batch.android.j1.c
    public void a(b bVar) {
        Batch.a(bVar);
    }

    @Override // com.batch.android.j1.a
    public com.batch.android.j1.g a(com.batch.android.j1.g gVar, b bVar) {
        return Batch.a(gVar, bVar);
    }
}
