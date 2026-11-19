package androidx.media3.exoplayer.drm;

import android.net.Uri;
import androidx.media3.common.MediaItem;
import androidx.media3.datasource.DefaultHttpDataSource;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import defpackage.az;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultDrmSessionManagerProvider implements DrmSessionManagerProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f15075a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MediaItem.DrmConfiguration f15076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DefaultDrmSessionManager f15077c;

    public static DefaultDrmSessionManager b(MediaItem.DrmConfiguration drmConfiguration) {
        DefaultHttpDataSource.Factory factory = new DefaultHttpDataSource.Factory();
        factory.f14422b = null;
        Uri uri = drmConfiguration.f13822b;
        HttpMediaDrmCallback httpMediaDrmCallback = new HttpMediaDrmCallback(uri == null ? null : uri.toString(), drmConfiguration.f13825f, factory);
        ImmutableMap immutableMap = drmConfiguration.f13823c;
        ImmutableSet immutableSetD = immutableMap.f33592b;
        if (immutableSetD == null) {
            immutableSetD = immutableMap.d();
            immutableMap.f33592b = immutableSetD;
        }
        UnmodifiableIterator it = immutableSetD.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            str.getClass();
            str2.getClass();
            synchronized (httpMediaDrmCallback.d) {
                httpMediaDrmCallback.d.put(str, str2);
            }
        }
        DefaultDrmSessionManager.Builder builder = new DefaultDrmSessionManager.Builder();
        UUID uuid = drmConfiguration.f13821a;
        az azVar = FrameworkMediaDrm.d;
        uuid.getClass();
        builder.f15064b = uuid;
        builder.f15065c = azVar;
        builder.d = drmConfiguration.d;
        builder.f15066e = drmConfiguration.f13824e;
        int[] iArrG = Ints.g(drmConfiguration.g);
        for (int i2 : iArrG) {
            boolean z = true;
            if (i2 != 2 && i2 != 1) {
                z = false;
            }
            Preconditions.g(z);
        }
        DefaultDrmSessionManager defaultDrmSessionManager = new DefaultDrmSessionManager(builder.f15064b, builder.f15065c, httpMediaDrmCallback, builder.f15063a, builder.d, (int[]) iArrG.clone(), builder.f15066e, builder.f15067f, builder.g);
        byte[] bArr = drmConfiguration.f13826h;
        byte[] bArrCopyOf = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        Preconditions.q(defaultDrmSessionManager.m.isEmpty());
        defaultDrmSessionManager.v = bArrCopyOf;
        return defaultDrmSessionManager;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManagerProvider
    public final DrmSessionManager a(MediaItem mediaItem) {
        DefaultDrmSessionManager defaultDrmSessionManager;
        mediaItem.f13788b.getClass();
        MediaItem.DrmConfiguration drmConfiguration = mediaItem.f13788b.f13850c;
        if (drmConfiguration == null) {
            return DrmSessionManager.f15084a;
        }
        synchronized (this.f15075a) {
            try {
                if (!drmConfiguration.equals(this.f15076b)) {
                    this.f15076b = drmConfiguration;
                    this.f15077c = b(drmConfiguration);
                }
                defaultDrmSessionManager = this.f15077c;
                defaultDrmSessionManager.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return defaultDrmSessionManager;
    }
}
