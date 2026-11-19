package androidx.media3.common;

import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributes {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AudioAttributes f13689i = new Builder().a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f13690j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f13691k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13694c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f13696f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.media.AudioAttributes f13697h;

    public static final class Api32 {
        public static void a(android.media.AudioAttributes.Builder builder, boolean z) {
            builder.setIsContentSpatialized(z);
        }

        public static void b(android.media.AudioAttributes.Builder builder, int i2) {
            builder.setSpatializationBehavior(i2);
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f13698a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13699b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13700c = 1;
        public int d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13701e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f13702f = false;
        public boolean g = true;

        public final AudioAttributes a() {
            return new AudioAttributes(this.f13698a, this.f13699b, this.f13700c, this.d, this.f13701e, this.f13702f, this.g);
        }
    }

    static {
        String str = Util.f14242a;
        f13690j = Integer.toString(0, 36);
        f13691k = Integer.toString(1, 36);
        l = Integer.toString(2, 36);
        m = Integer.toString(3, 36);
        n = Integer.toString(4, 36);
        o = Integer.toString(5, 36);
        p = Integer.toString(6, 36);
    }

    public AudioAttributes(int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2) {
        this.f13692a = i2;
        this.f13693b = i3;
        this.f13694c = i4;
        this.d = i5;
        this.f13695e = i6;
        this.f13696f = z;
        this.g = z2;
    }

    public static AudioAttributes a(Bundle bundle) {
        Builder builder = new Builder();
        String str = f13690j;
        if (bundle.containsKey(str)) {
            builder.f13698a = bundle.getInt(str);
        }
        String str2 = f13691k;
        if (bundle.containsKey(str2)) {
            builder.f13699b = bundle.getInt(str2);
        }
        String str3 = l;
        if (bundle.containsKey(str3)) {
            builder.f13700c = bundle.getInt(str3);
        }
        String str4 = m;
        if (bundle.containsKey(str4)) {
            builder.d = bundle.getInt(str4);
        }
        String str5 = n;
        if (bundle.containsKey(str5)) {
            builder.f13701e = bundle.getInt(str5);
        }
        String str6 = o;
        if (bundle.containsKey(str6)) {
            builder.f13702f = bundle.getBoolean(str6);
        }
        String str7 = p;
        if (bundle.containsKey(str7)) {
            builder.g = bundle.getBoolean(str7);
        }
        return builder.a();
    }

    public static AudioAttributes b(android.media.AudioAttributes audioAttributes) {
        Builder builder = new Builder();
        builder.f13698a = audioAttributes.getContentType();
        builder.f13699b = audioAttributes.getFlags();
        builder.f13700c = audioAttributes.getUsage();
        builder.d = audioAttributes.getAllowedCapturePolicy();
        builder.g = audioAttributes.areHapticChannelsMuted();
        if (Build.VERSION.SDK_INT >= 32) {
            builder.f13701e = audioAttributes.getSpatializationBehavior();
            builder.f13702f = audioAttributes.isContentSpatialized();
        }
        return builder.a();
    }

    public final android.media.AudioAttributes c() {
        if (this.f13697h == null) {
            android.media.AudioAttributes.Builder usage = new android.media.AudioAttributes.Builder().setContentType(this.f13692a).setFlags(this.f13693b).setUsage(this.f13694c);
            usage.setAllowedCapturePolicy(this.d);
            usage.setHapticChannelsMuted(this.g);
            if (Build.VERSION.SDK_INT >= 32) {
                Api32.b(usage, this.f13695e);
                Api32.a(usage, this.f13696f);
            }
            this.f13697h = usage.build();
        }
        return this.f13697h;
    }

    public final Bundle d() {
        Bundle bundle = new Bundle();
        int i2 = this.f13692a;
        if (i2 != 0) {
            bundle.putInt(f13690j, i2);
        }
        int i3 = this.f13693b;
        if (i3 != 0) {
            bundle.putInt(f13691k, i3);
        }
        int i4 = this.f13694c;
        if (i4 != 1) {
            bundle.putInt(l, i4);
        }
        int i5 = this.d;
        if (i5 != 1) {
            bundle.putInt(m, i5);
        }
        int i6 = this.f13695e;
        if (i6 != 0) {
            bundle.putInt(n, i6);
        }
        boolean z = this.f13696f;
        if (z) {
            bundle.putBoolean(o, z);
        }
        boolean z2 = this.g;
        if (!z2) {
            bundle.putBoolean(p, z2);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AudioAttributes.class == obj.getClass()) {
            AudioAttributes audioAttributes = (AudioAttributes) obj;
            if (this.f13692a == audioAttributes.f13692a && this.f13693b == audioAttributes.f13693b && this.f13694c == audioAttributes.f13694c && this.d == audioAttributes.d && this.f13695e == audioAttributes.f13695e && this.f13696f == audioAttributes.f13696f && this.g == audioAttributes.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((527 + this.f13692a) * 31) + this.f13693b) * 31) + this.f13694c) * 31) + this.d) * 31) + this.f13695e) * 31) + (this.f13696f ? 1 : 0)) * 31) + (this.g ? 1 : 0);
    }
}
