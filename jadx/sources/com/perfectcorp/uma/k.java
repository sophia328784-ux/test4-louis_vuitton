package com.perfectcorp.uma;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.PrivateKey;
import java.security.Signature;

/* JADX INFO: loaded from: classes3.dex */
final class k implements com.perfectcorp.uma.internal.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f43271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43272c;
    public long d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43273e = -1;

    public k(Context context) {
        String str;
        this.f43271b = context.getApplicationContext();
        if (TextUtils.isEmpty(null)) {
            str = "";
        } else {
            str = "&vendor_info=" + URLEncoder.encode((String) null, "UTF-8");
        }
        this.f43272c = str;
    }

    @Override // com.perfectcorp.uma.internal.b
    public final String a(long j2) {
        String str;
        Context context = this.f43271b;
        try {
            if (this.d < 0) {
                this.d = j2 / 1000;
            }
            this.f43273e++;
            String str2 = "&session_id=" + this.d;
            String str3 = "&session_id_idx=" + this.f43273e;
            StringBuilder sb = new StringBuilder();
            if (context.getSharedPreferences("UMAExtraData", 0).contains("LAST_SEEN_EPOCH_MS")) {
                long j3 = context.getSharedPreferences("UMAExtraData", 0).getLong("LAST_SEEN_EPOCH_MS", Long.MIN_VALUE);
                if (j2 < j3) {
                    b.d.d("UMAExtraData", "The seen time is in the future. System clock has been adjusted to past?");
                    str = "";
                } else {
                    str = "&qmwd_active_user=" + d.a(j2, j3);
                }
            } else {
                str = "&new_user=1&qmwd_active_user=" + d.f43267a;
            }
            sb.append(str);
            sb.append(str2);
            sb.append(str3);
            return sb.toString();
        } finally {
            context.getSharedPreferences("UMAExtraData", 0).edit().putLong("LAST_SEEN_EPOCH_MS", j2).apply();
        }
    }

    @Override // com.perfectcorp.uma.internal.b
    public final String b() {
        return "&session_id=" + this.d + "&session_id_idx=" + this.f43273e;
    }

    @Override // com.perfectcorp.uma.internal.b
    public final String c() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d);
        return sb.toString();
    }

    @Override // com.perfectcorp.uma.internal.b
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f43273e);
        return sb.toString();
    }

    @Override // com.perfectcorp.uma.internal.b
    public final String a() {
        return this.f43272c;
    }

    @Override // com.perfectcorp.uma.internal.b
    public final void a(String str, URLConnection uRLConnection) {
        r rVar = r.a.f43276a;
        if (rVar == null) {
            return;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            PrivateKey privateKey = rVar.f43275a;
            Signature signature = Signature.getInstance("SHA256withRSA");
            signature.initSign(privateKey);
            signature.update(bytes);
            uRLConnection.setRequestProperty("UMA-H", Base64.encodeToString(signature.sign(), 2));
        } catch (Throwable th) {
            b.d.b("UMAExtraData", "", th);
        }
    }
}
