package androidx.core.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import com.batch.android.q0.b;
import defpackage.a61;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IconCompat f11893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public IconCompat f11894f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11895h;

    public static class Api31Impl {
        public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigPicture(icon);
        }

        public static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
            bigPictureStyle.setContentDescription(charSequence);
        }

        public static void c(Notification.BigPictureStyle bigPictureStyle, boolean z) {
            bigPictureStyle.showBigPictureWhenCollapsed(z);
        }
    }

    public NotificationCompat$BigPictureStyle(NotificationCompat$Builder notificationCompat$Builder) {
        g(notificationCompat$Builder);
    }

    public static IconCompat h(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        if (parcelable instanceof Icon) {
            return IconCompat.b((Icon) parcelable);
        }
        if (parcelable instanceof Bitmap) {
            return IconCompat.d((Bitmap) parcelable);
        }
        return null;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        Bitmap bitmap;
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b).setBigContentTitle(this.f11945b);
        IconCompat iconCompat = this.f11893e;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                Api31Impl.a(bigContentTitle, iconCompat.h(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11947a));
            } else {
                int type = iconCompat.f12065a;
                if (type == -1) {
                    type = ((Icon) iconCompat.f12066b).getType();
                }
                if (type == 1) {
                    IconCompat iconCompat2 = this.f11893e;
                    int i2 = iconCompat2.f12065a;
                    if (i2 == -1) {
                        Object obj = iconCompat2.f12066b;
                        bitmap = obj instanceof Bitmap ? (Bitmap) obj : null;
                    } else if (i2 == 1) {
                        bitmap = (Bitmap) iconCompat2.f12066b;
                    } else {
                        if (i2 != 5) {
                            a61.q(iconCompat2, "called getBitmap() on ");
                            return;
                        }
                        Bitmap bitmap2 = (Bitmap) iconCompat2.f12066b;
                        int iMin = (int) (Math.min(bitmap2.getWidth(), bitmap2.getHeight()) * 0.6666667f);
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        Paint paint = new Paint(3);
                        float f2 = iMin;
                        float f3 = 0.5f * f2;
                        float f4 = 0.9166667f * f3;
                        float f5 = 0.010416667f * f2;
                        paint.setColor(0);
                        paint.setShadowLayer(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 * 0.020833334f, 1023410176);
                        canvas.drawCircle(f3, f3, f4, paint);
                        paint.setShadowLayer(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 503316480);
                        canvas.drawCircle(f3, f3, f4, paint);
                        paint.clearShadowLayer();
                        paint.setColor(b.v);
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
                        Matrix matrix = new Matrix();
                        matrix.setTranslate((-(bitmap2.getWidth() - iMin)) / 2.0f, (-(bitmap2.getHeight() - iMin)) / 2.0f);
                        bitmapShader.setLocalMatrix(matrix);
                        paint.setShader(bitmapShader);
                        canvas.drawCircle(f3, f3, f4, paint);
                        canvas.setBitmap(null);
                        bitmap = bitmapCreateBitmap;
                    }
                    bigContentTitle = bigContentTitle.bigPicture(bitmap);
                }
            }
        }
        if (this.g) {
            IconCompat iconCompat3 = this.f11894f;
            if (iconCompat3 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else {
                bigContentTitle.bigLargeIcon(iconCompat3.h(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11947a));
            }
        }
        if (this.d) {
            bigContentTitle.setSummaryText(this.f11946c);
        }
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.c(bigContentTitle, this.f11895h);
            Api31Impl.b(bigContentTitle, null);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void c(Bundle bundle) {
        super.c(bundle);
        bundle.remove("android.largeIcon.big");
        bundle.remove("android.picture");
        bundle.remove("android.pictureIcon");
        bundle.remove("android.showBigPictureWhenCollapsed");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String e() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void f(Bundle bundle) {
        super.f(bundle);
        if (bundle.containsKey("android.largeIcon.big")) {
            this.f11894f = h(bundle.getParcelable("android.largeIcon.big"));
            this.g = true;
        }
        Parcelable parcelable = bundle.getParcelable("android.picture");
        this.f11893e = parcelable != null ? h(parcelable) : h(bundle.getParcelable("android.pictureIcon"));
        this.f11895h = bundle.getBoolean("android.showBigPictureWhenCollapsed");
    }

    public NotificationCompat$BigPictureStyle() {
    }
}
