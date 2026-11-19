package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001!B«\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\r\u0012\u0006\u0010\u0016\u001a\u00020\r\u0012\u0006\u0010\u0017\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0011\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001d\u001a\u00020\r\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/canhub/cropper/BitmapCroppingWorkerJob;", "Lkotlinx/coroutines/CoroutineScope;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Ljava/lang/ref/WeakReference;", "Lcom/canhub/cropper/CropImageView;", "cropImageViewReference", "Landroid/net/Uri;", "uri", "Landroid/graphics/Bitmap;", "bitmap", "", "cropPoints", "", "degreesRotated", "orgWidth", "orgHeight", "", "fixAspectRatio", "aspectRatioX", "aspectRatioY", "reqWidth", "reqHeight", "flipHorizontally", "flipVertically", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "options", "Landroid/graphics/Bitmap$CompressFormat;", "saveCompressFormat", "saveCompressQuality", "customOutputUri", "<init>", "(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V", "Result", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BitmapCroppingWorkerJob implements CoroutineScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f25006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f25007c;
    public final Uri d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bitmap f25008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float[] f25009f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f25010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f25011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f25012j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f25013k;
    public final int l;
    public final int m;
    public final int n;
    public final boolean o;
    public final boolean p;
    public final CropImageView.RequestSizeOptions q;
    public final Bitmap.CompressFormat r;
    public final int s;
    public final Uri t;
    public JobSupport u;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B3\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;", "", "Landroid/graphics/Bitmap;", "bitmap", "Landroid/net/Uri;", "uri", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "", "sampleSize", "<init>", "(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Result {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f25014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f25015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Exception f25016c;
        public final int d;

        public Result(Bitmap bitmap, Uri uri, Exception exc, int i2) {
            this.f25014a = bitmap;
            this.f25015b = uri;
            this.f25016c = exc;
            this.d = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Result)) {
                return false;
            }
            Result result = (Result) obj;
            return Intrinsics.c(this.f25014a, result.f25014a) && Intrinsics.c(this.f25015b, result.f25015b) && Intrinsics.c(this.f25016c, result.f25016c) && this.d == result.d;
        }

        public final int hashCode() {
            Bitmap bitmap = this.f25014a;
            int iHashCode = (bitmap == null ? 0 : bitmap.hashCode()) * 31;
            Uri uri = this.f25015b;
            int iHashCode2 = (iHashCode + (uri == null ? 0 : uri.hashCode())) * 31;
            Exception exc = this.f25016c;
            return Integer.hashCode(this.d) + ((iHashCode2 + (exc != null ? exc.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "Result(bitmap=" + this.f25014a + ", uri=" + this.f25015b + ", error=" + this.f25016c + ", sampleSize=" + this.d + ")";
        }
    }

    public BitmapCroppingWorkerJob(Context context, WeakReference<CropImageView> weakReference, Uri uri, Bitmap bitmap, float[] fArr, int i2, int i3, int i4, boolean z, int i5, int i6, int i7, int i8, boolean z2, boolean z3, CropImageView.RequestSizeOptions requestSizeOptions, Bitmap.CompressFormat compressFormat, int i9, Uri uri2) {
        context.getClass();
        weakReference.getClass();
        fArr.getClass();
        requestSizeOptions.getClass();
        compressFormat.getClass();
        this.f25006b = context;
        this.f25007c = weakReference;
        this.d = uri;
        this.f25008e = bitmap;
        this.f25009f = fArr;
        this.g = i2;
        this.f25010h = i3;
        this.f25011i = i4;
        this.f25012j = z;
        this.f25013k = i5;
        this.l = i6;
        this.m = i7;
        this.n = i8;
        this.o = z2;
        this.p = z3;
        this.q = requestSizeOptions;
        this.r = compressFormat;
        this.s = i9;
        this.t = uri2;
        this.u = JobKt.a();
    }

    public static final Object a(BitmapCroppingWorkerJob bitmapCroppingWorkerJob, Result result, SuspendLambda suspendLambda) throws Throwable {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        Object objF = BuildersKt.f(MainDispatcherLoader.f75131a, new BitmapCroppingWorkerJob$onPostExecute$2(bitmapCroppingWorkerJob, result, null), suspendLambda);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getF8068c() {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return MainDispatcherLoader.f75131a.plus(this.u);
    }
}
