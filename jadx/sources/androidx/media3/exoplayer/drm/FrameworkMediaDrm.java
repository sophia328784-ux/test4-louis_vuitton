package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.common.base.Preconditions;
import defpackage.az;
import defpackage.n00;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class FrameworkMediaDrm implements ExoMediaDrm {
    public static final az d = new az(12);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f15093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaDrm f15094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15095c;

    public static class Api31 {
        public static boolean a(MediaDrm mediaDrm, String str, int i2) {
            return mediaDrm.requiresSecureDecoder(str, i2);
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, PlayerId playerId) {
            LogSessionId logSessionIdA = playerId.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            MediaDrm.PlaybackComponent playbackComponent = mediaDrm.getPlaybackComponent(bArr);
            playbackComponent.getClass();
            playbackComponent.setLogSessionId(logSessionIdA);
        }
    }

    public FrameworkMediaDrm(UUID uuid) {
        uuid.getClass();
        Preconditions.h(!C.f13718c.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f15093a = uuid;
        MediaDrm mediaDrm = new MediaDrm(uuid);
        this.f15094b = mediaDrm;
        this.f15095c = 1;
        if (C.f13719e.equals(uuid) && "ASUS_Z00AD".equals(Build.MODEL)) {
            mediaDrm.setPropertyString("securityLevel", "L3");
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final Map a(byte[] bArr) {
        return this.f15094b.queryKeyStatus(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final ExoMediaDrm.ProvisionRequest b() {
        MediaDrm.ProvisionRequest provisionRequest = this.f15094b.getProvisionRequest();
        return new ExoMediaDrm.ProvisionRequest(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final byte[] c() {
        return this.f15094b.openSession();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final void d(byte[] bArr, byte[] bArr2) {
        this.f15094b.restoreKeys(bArr, bArr2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final void e(byte[] bArr) throws DeniedByServerException {
        this.f15094b.provideProvisionResponse(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final int f() {
        return 2;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final CryptoConfig g(byte[] bArr) {
        return new FrameworkCryptoConfig(this.f15093a, bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final void h(byte[] bArr) {
        this.f15094b.closeSession(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final byte[] i(byte[] bArr, byte[] bArr2) {
        C.d.equals(this.f15093a);
        return this.f15094b.provideKeyResponse(bArr, bArr2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final void j(final ExoMediaDrm.OnEventListener onEventListener) {
        this.f15094b.setOnEventListener(new MediaDrm.OnEventListener(this) { // from class: androidx.media3.exoplayer.drm.c
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i2, int i3, byte[] bArr2) {
                DefaultDrmSessionManager.MediaDrmHandler mediaDrmHandler = DefaultDrmSessionManager.this.x;
                mediaDrmHandler.getClass();
                mediaDrmHandler.obtainMessage(i2, bArr).sendToTarget();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0087  */
    /* JADX WARN: Code duplicated, block: B:29:0x0098  */
    /* JADX WARN: Code duplicated, block: B:30:0x009a  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a0 A[LOOP:2: B:25:0x0081->B:33:0x00a0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x019d  */
    /* JADX WARN: Code duplicated, block: B:96:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x009e A[SYNTHETIC] */
    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final ExoMediaDrm.KeyRequest k(byte[] bArr, List list, int i2, HashMap map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeData;
        byte[] bArr2;
        String str;
        int i3;
        DrmInitData.SchemeData schemeData2;
        PsshAtomUtil.PsshAtom psshAtomB;
        int i4;
        byte[] bArrC;
        UUID uuid = this.f15093a;
        if (list != null) {
            if (!C.f13719e.equals(uuid)) {
                schemeData = (DrmInitData.SchemeData) list.get(0);
            } else if (list.size() <= 1) {
                i3 = 0;
                while (true) {
                    if (i3 < list.size()) {
                        schemeData = (DrmInitData.SchemeData) list.get(0);
                        break;
                    }
                    schemeData2 = (DrmInitData.SchemeData) list.get(i3);
                    byte[] bArr3 = schemeData2.f13751f;
                    bArr3.getClass();
                    psshAtomB = PsshAtomUtil.b(bArr3);
                    if (psshAtomB == null) {
                        i4 = -1;
                    } else {
                        i4 = psshAtomB.f16582b;
                    }
                    if (i4 == 1) {
                        schemeData = schemeData2;
                        break;
                    }
                    i3++;
                }
            } else {
                DrmInitData.SchemeData schemeData3 = (DrmInitData.SchemeData) list.get(0);
                int i5 = 0;
                int length = 0;
                while (true) {
                    if (i5 < list.size()) {
                        DrmInitData.SchemeData schemeData4 = (DrmInitData.SchemeData) list.get(i5);
                        byte[] bArr4 = schemeData4.f13751f;
                        bArr4.getClass();
                        if (Objects.equals(schemeData4.f13750e, schemeData3.f13750e) && Objects.equals(schemeData4.d, schemeData3.d) && PsshAtomUtil.b(bArr4) != null) {
                            length += bArr4.length;
                            i5++;
                        } else {
                            i3 = 0;
                            while (true) {
                                if (i3 < list.size()) {
                                    schemeData = (DrmInitData.SchemeData) list.get(0);
                                    break;
                                }
                                schemeData2 = (DrmInitData.SchemeData) list.get(i3);
                                byte[] bArr5 = schemeData2.f13751f;
                                bArr5.getClass();
                                psshAtomB = PsshAtomUtil.b(bArr5);
                                if (psshAtomB == null) {
                                    i4 = -1;
                                } else {
                                    i4 = psshAtomB.f16582b;
                                }
                                if (i4 == 1) {
                                    schemeData = schemeData2;
                                    break;
                                }
                                i3++;
                            }
                        }
                    } else {
                        byte[] bArr6 = new byte[length];
                        int i6 = 0;
                        for (int i7 = 0; i7 < list.size(); i7++) {
                            byte[] bArr7 = ((DrmInitData.SchemeData) list.get(i7)).f13751f;
                            bArr7.getClass();
                            int length2 = bArr7.length;
                            System.arraycopy(bArr7, 0, bArr6, i6, length2);
                            i6 += length2;
                        }
                        schemeData = new DrmInitData.SchemeData(schemeData3.f13749c, schemeData3.d, schemeData3.f13750e, bArr6);
                    }
                }
            }
            byte[] bArrA = schemeData.f13751f;
            bArrA.getClass();
            UUID uuid2 = C.f13720f;
            if (uuid2.equals(uuid)) {
                byte[] bArrC2 = PsshAtomUtil.c(uuid, bArrA);
                if (bArrC2 != null) {
                    bArrA = bArrC2;
                }
                ParsableByteArray parsableByteArray = new ParsableByteArray(bArrA);
                int iO = parsableByteArray.o();
                short sQ = parsableByteArray.q();
                short sQ2 = parsableByteArray.q();
                if (sQ == 1 && sQ2 == 1) {
                    short sQ3 = parsableByteArray.q();
                    Charset charset = StandardCharsets.UTF_16LE;
                    String strY = parsableByteArray.y(sQ3, charset);
                    if (!strY.contains("<LA_URL>")) {
                        int iIndexOf = strY.indexOf("</DATA>");
                        if (iIndexOf == -1) {
                            Log.g("Could not find the </DATA> tag. Skipping LA_URL workaround.");
                        }
                        StringBuilder sb = new StringBuilder();
                        n00.A(0, iIndexOf, strY, "<LA_URL>https://x</LA_URL>", sb);
                        sb.append(strY.substring(iIndexOf));
                        String string = sb.toString();
                        int i8 = iO + 52;
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i8);
                        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferAllocate.putInt(i8);
                        byteBufferAllocate.putShort(sQ);
                        byteBufferAllocate.putShort(sQ2);
                        byteBufferAllocate.putShort((short) (string.length() * 2));
                        byteBufferAllocate.put(string.getBytes(charset));
                        bArrA = byteBufferAllocate.array();
                    }
                } else {
                    Log.f("Unexpected record count or type. Skipping LA_URL workaround.");
                }
                bArrA = PsshAtomUtil.a(uuid2, bArrA);
            }
            if (uuid2.equals(uuid) && "Amazon".equals(Build.MANUFACTURER)) {
                String str2 = Build.MODEL;
                if (("AFTB".equals(str2) || "AFTS".equals(str2) || "AFTM".equals(str2) || "AFTT".equals(str2)) && (bArrC = PsshAtomUtil.c(uuid, bArrA)) != null) {
                    bArrA = bArrC;
                }
            }
            bArr2 = bArrA;
            str = schemeData.f13750e;
        } else {
            schemeData = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f15094b.getKeyRequest(bArr, bArr2, str, i2, map);
        byte[] data = keyRequest.getData();
        C.d.equals(uuid);
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("<LA_URL>https://x</LA_URL>".equals(defaultUrl)) {
            defaultUrl = "";
        } else if (Build.VERSION.SDK_INT >= 33 && "https://default.url".equals(defaultUrl)) {
            String propertyString = this.f15094b.getPropertyString("version");
            if (Objects.equals(propertyString, "1.2") || Objects.equals(propertyString, "aidl-1")) {
                defaultUrl = "";
            }
        }
        if (TextUtils.isEmpty(defaultUrl) && schemeData != null) {
            String str3 = schemeData.d;
            if (!TextUtils.isEmpty(str3)) {
                defaultUrl = str3;
            }
        }
        return new ExoMediaDrm.KeyRequest(data, defaultUrl, keyRequest.getRequestType());
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final void l(byte[] bArr, PlayerId playerId) {
        if (Build.VERSION.SDK_INT >= 31) {
            try {
                Api31.b(this.f15094b, bArr, playerId);
            } catch (UnsupportedOperationException unused) {
                Log.g("setLogSessionId failed.");
            }
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final boolean m(String str, byte[] bArr) throws Throwable {
        MediaCrypto mediaCrypto;
        Throwable th;
        boolean zEquals;
        int i2 = Build.VERSION.SDK_INT;
        UUID uuid = this.f15093a;
        if (i2 >= 31) {
            boolean zEquals2 = uuid.equals(C.f13719e);
            MediaDrm mediaDrm = this.f15094b;
            if (zEquals2) {
                String propertyString = mediaDrm.getPropertyString("version");
                zEquals = (propertyString.startsWith("v5.") || propertyString.startsWith("14.") || propertyString.startsWith("15.") || propertyString.startsWith("16.0")) ? false : true;
            } else {
                zEquals = uuid.equals(C.d);
            }
            if (zEquals) {
                return Api31.a(mediaDrm, str, mediaDrm.getSecurityLevel(bArr));
            }
        }
        MediaCrypto mediaCrypto2 = null;
        try {
            try {
                mediaCrypto = new MediaCrypto(uuid, bArr);
                try {
                    boolean zRequiresSecureDecoderComponent = mediaCrypto.requiresSecureDecoderComponent(str);
                    mediaCrypto.release();
                    return zRequiresSecureDecoderComponent;
                } catch (MediaCryptoException unused) {
                    mediaCrypto2 = mediaCrypto;
                    boolean z = !uuid.equals(C.d);
                    if (mediaCrypto2 != null) {
                        mediaCrypto2.release();
                    }
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    if (mediaCrypto != null) {
                        mediaCrypto.release();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                mediaCrypto = mediaCrypto2;
                th = th3;
            }
        } catch (MediaCryptoException unused2) {
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    public final synchronized void release() {
        int i2 = this.f15095c - 1;
        this.f15095c = i2;
        if (i2 == 0) {
            this.f15094b.release();
        }
    }
}
