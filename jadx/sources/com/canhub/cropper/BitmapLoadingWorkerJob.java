package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.DisplayMetrics;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/canhub/cropper/BitmapLoadingWorkerJob;", "Lkotlinx/coroutines/CoroutineScope;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/canhub/cropper/CropImageView;", "cropImageView", "Landroid/net/Uri;", "uri", "<init>", "(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V", "Result", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BitmapLoadingWorkerJob implements CoroutineScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f25024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f25025c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f25026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WeakReference f25027f;
    public JobSupport g;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u000e\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;", "", "Landroid/net/Uri;", "uri", "Landroid/graphics/Bitmap;", "bitmap", "", "loadSampleSize", "degreesRotated", "", "flipHorizontally", "flipVertically", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "<init>", "(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZLjava/lang/Exception;)V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Result {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f25028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bitmap f25029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25030c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f25031e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f25032f;
        public final Exception g;

        public Result(Uri uri, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, Exception exc) {
            uri.getClass();
            this.f25028a = uri;
            this.f25029b = bitmap;
            this.f25030c = i2;
            this.d = i3;
            this.f25031e = z;
            this.f25032f = z2;
            this.g = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Result)) {
                return false;
            }
            Result result = (Result) obj;
            return Intrinsics.c(this.f25028a, result.f25028a) && Intrinsics.c(this.f25029b, result.f25029b) && this.f25030c == result.f25030c && this.d == result.d && this.f25031e == result.f25031e && this.f25032f == result.f25032f && Intrinsics.c(this.g, result.g);
        }

        public final int hashCode() {
            int iHashCode = this.f25028a.hashCode() * 31;
            Bitmap bitmap = this.f25029b;
            int iB = o60.b(o60.b(tr.b(this.d, tr.b(this.f25030c, (iHashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31, 31), 31), 31, this.f25031e), 31, this.f25032f);
            Exception exc = this.g;
            return iB + (exc != null ? exc.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Result(uri=");
            sb.append(this.f25028a);
            sb.append(", bitmap=");
            sb.append(this.f25029b);
            sb.append(", loadSampleSize=");
            fc.x(this.f25030c, this.d, ", degreesRotated=", ", flipHorizontally=", sb);
            fc.y(sb, this.f25031e, ", flipVertically=", this.f25032f, ", error=");
            sb.append(this.g);
            sb.append(")");
            return sb.toString();
        }
    }

    public BitmapLoadingWorkerJob(Context context, CropImageView cropImageView, Uri uri) {
        context.getClass();
        cropImageView.getClass();
        uri.getClass();
        this.f25024b = context;
        this.f25025c = uri;
        this.f25027f = new WeakReference(cropImageView);
        this.g = JobKt.a();
        DisplayMetrics displayMetrics = cropImageView.getResources().getDisplayMetrics();
        float f2 = displayMetrics.density;
        double d = f2 > 1.0f ? 1.0d / ((double) f2) : 1.0d;
        this.d = (int) (((double) displayMetrics.widthPixels) * d);
        this.f25026e = (int) (((double) displayMetrics.heightPixels) * d);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getF8068c() {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return MainDispatcherLoader.f75131a.plus(this.g);
    }
}
