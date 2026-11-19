package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
class ConnectionRequest {
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f17262h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f17263i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f17264j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f17265k;
    public static final String l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17268c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f17269e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17270f;

    static {
        String str = Util.f14242a;
        g = Integer.toString(0, 36);
        f17262h = Integer.toString(1, 36);
        f17263i = Integer.toString(2, 36);
        f17264j = Integer.toString(3, 36);
        f17265k = Integer.toString(4, 36);
        l = Integer.toString(5, 36);
    }

    public ConnectionRequest(String str, int i2, Bundle bundle, int i3) {
        this(1010001300, 9, str, i2, new Bundle(bundle), i3);
    }

    public static ConnectionRequest a(Bundle bundle) {
        int i2 = bundle.getInt(g, 0);
        int i3 = bundle.getInt(f17265k, 0);
        String string = bundle.getString(f17262h);
        string.getClass();
        String str = f17263i;
        Preconditions.g(bundle.containsKey(str));
        int i4 = bundle.getInt(str);
        Bundle bundle2 = bundle.getBundle(f17264j);
        int i5 = bundle.getInt(l, 0);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        return new ConnectionRequest(i2, i3, string, i4, bundle2, i5);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(g, this.f17266a);
        bundle.putString(f17262h, this.f17268c);
        bundle.putInt(f17263i, this.d);
        bundle.putBundle(f17264j, this.f17269e);
        bundle.putInt(f17265k, this.f17267b);
        bundle.putInt(l, this.f17270f);
        return bundle;
    }

    public ConnectionRequest(int i2, int i3, String str, int i4, Bundle bundle, int i5) {
        this.f17266a = i2;
        this.f17267b = i3;
        this.f17268c = str;
        this.d = i4;
        this.f17269e = bundle;
        this.f17270f = i5;
    }
}
