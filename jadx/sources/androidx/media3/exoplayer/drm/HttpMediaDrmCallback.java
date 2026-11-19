package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.net.MediaType;
import com.linkplay.medialib.server.HttpServer;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class HttpMediaDrmCallback implements MediaDrmCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource.Factory f15096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f15098c;
    public final HashMap d;

    public HttpMediaDrmCallback(String str, boolean z, DataSource.Factory factory) {
        Preconditions.g((z && TextUtils.isEmpty(str)) ? false : true);
        this.f15096a = factory;
        this.f15097b = str;
        this.f15098c = z;
        this.d = new HashMap();
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public final MediaDrmCallback.Response a(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws MediaDrmCallbackException {
        String str;
        String str2 = keyRequest.f15087b;
        if (this.f15098c || TextUtils.isEmpty(str2)) {
            str2 = this.f15097b;
        }
        if (TextUtils.isEmpty(str2)) {
            DataSpec.Builder builder = new DataSpec.Builder();
            Uri uri = Uri.EMPTY;
            builder.f14397a = uri;
            throw new MediaDrmCallbackException(builder.a(), uri, ImmutableMap.h(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = C.f13720f;
        if (uuid2.equals(uuid)) {
            str = HttpServer.MIME_XML;
        } else {
            str = C.d.equals(uuid) ? InitUrlConnection.CONTENT_TYPE_VALUE : "application/octet-stream";
        }
        map.put("Content-Type", str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.d) {
            map.putAll(this.d);
        }
        return DrmUtil.a(this.f15096a.b(), str2, keyRequest.f15086a, map);
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public final MediaDrmCallback.Response b(ExoMediaDrm.ProvisionRequest provisionRequest) {
        Charset charset = StandardCharsets.UTF_8;
        byte[][] bArr = {"{\"signedRequest\":\"".getBytes(charset), provisionRequest.f15088a, "\"}".getBytes(charset)};
        long length = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            length += (long) bArr[i2].length;
        }
        int i3 = (int) length;
        Preconditions.d(length, "the total number of elements (%s) in the arrays must fit in an int", length == ((long) i3));
        byte[] bArr2 = new byte[i3];
        int length2 = 0;
        for (int i4 = 0; i4 < 3; i4++) {
            byte[] bArr3 = bArr[i4];
            System.arraycopy(bArr3, 0, bArr2, length2, bArr3.length);
            length2 += bArr3.length;
        }
        return DrmUtil.a(this.f15096a.b(), provisionRequest.f15089b, bArr2, ImmutableMap.k("Content-Type", MediaType.f33768i.toString(), "Content-Length", String.valueOf(i3)));
    }

    public HttpMediaDrmCallback(String str, DataSource.Factory factory) {
        this(str, false, factory);
    }
}
