package defpackage;

import android.content.res.Resources;
import android.os.Build;
import android.util.Base64;
import androidx.media3.datasource.DataSourceBitmapLoader;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.analytics.DefaultPlaybackSessionManager;
import androidx.media3.session.DefaultMediaNotificationProvider;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.MoreExecutors;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ur implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80384b;

    public /* synthetic */ ur(int i2) {
        this.f80384b = i2;
    }

    @Override // com.google.common.base.Supplier
    public final Object get() {
        int dimensionPixelSize;
        switch (this.f80384b) {
            case 0:
                Supplier supplier = DataSourceBitmapLoader.f14376f;
                return MoreExecutors.c(Executors.newSingleThreadExecutor());
            case 1:
                Supplier supplier2 = DefaultMediaNotificationProvider.f17285j;
                Resources system = Resources.getSystem();
                try {
                    dimensionPixelSize = system.getDimensionPixelSize(system.getIdentifier("notification_right_icon_size", "dimen", ReferenceApiV3ConstKt.OS_NAME));
                    if (Build.VERSION.SDK_INT < 31) {
                        dimensionPixelSize = Integer.max(Integer.max(dimensionPixelSize, system.getDimensionPixelSize(system.getIdentifier("notification_media_image_max_width", "dimen", ReferenceApiV3ConstKt.OS_NAME))), system.getDimensionPixelSize(system.getIdentifier("notification_media_image_max_height", "dimen", ReferenceApiV3ConstKt.OS_NAME)));
                    }
                    break;
                } catch (Resources.NotFoundException unused) {
                    dimensionPixelSize = (int) ((Build.VERSION.SDK_INT < 31 ? 280 : 48) * system.getDisplayMetrics().density);
                }
                return Integer.valueOf(dimensionPixelSize);
            case 2:
                byte[] bArr = new byte[12];
                DefaultPlaybackSessionManager.f14827j.nextBytes(bArr);
                return Base64.encodeToString(bArr, 10);
            default:
                return new DefaultLoadControl();
        }
    }
}
