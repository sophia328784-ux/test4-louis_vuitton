package androidx.media3.common;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.sightcall.universal.agent.Language;
import defpackage.fc;
import defpackage.uh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TrackGroup {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f13976f;
    public static final String g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13979c;
    public final Format[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13980e;

    static {
        String str = Util.f14242a;
        f13976f = Integer.toString(0, 36);
        g = Integer.toString(1, 36);
    }

    public TrackGroup(String str, Format... formatArr) {
        Preconditions.g(formatArr.length > 0);
        this.f13978b = str;
        this.d = formatArr;
        this.f13977a = formatArr.length;
        String str2 = formatArr[0].o;
        this.f13979c = TextUtils.isEmpty(str2) ? MimeTypes.i(formatArr[0].n) : MimeTypes.i(str2);
        String str3 = formatArr[0].d;
        str3 = (str3 == null || str3.equals("und")) ? "" : str3;
        int i2 = formatArr[0].f13759f | 16384;
        for (int i3 = 1; i3 < formatArr.length; i3++) {
            String str4 = formatArr[i3].d;
            if (!str3.equals((str4 == null || str4.equals("und")) ? "" : str4)) {
                c(i3, Language.TYPE, formatArr[0].d, formatArr[i3].d);
                return;
            } else {
                if (i2 != (formatArr[i3].f13759f | 16384)) {
                    c(i3, "role flags", Integer.toBinaryString(formatArr[0].f13759f), Integer.toBinaryString(formatArr[i3].f13759f));
                    return;
                }
            }
        }
    }

    public static TrackGroup a(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f13976f);
        return new TrackGroup(bundle.getString(g, ""), (Format[]) (parcelableArrayList == null ? ImmutableList.x() : BundleCollectionUtil.a(new uh(14), parcelableArrayList)).toArray(new Format[0]));
    }

    public static void c(int i2, String str, String str2, String str3) {
        StringBuilder sbS = fc.s("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        sbS.append(str3);
        sbS.append("' (track ");
        sbS.append(i2);
        sbS.append(")");
        Log.e("", new IllegalStateException(sbS.toString()));
    }

    public final int b(Format format) {
        int i2 = 0;
        while (true) {
            Format[] formatArr = this.d;
            if (i2 >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i2]) {
                return i2;
            }
            i2++;
        }
    }

    public final Bundle d() {
        Bundle bundle = new Bundle();
        Format[] formatArr = this.d;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(formatArr.length);
        for (Format format : formatArr) {
            List list = format.r;
            Bundle bundle2 = new Bundle();
            bundle2.putString(Format.S, format.f13755a);
            bundle2.putString(Format.T, format.f13756b);
            String str = Format.x0;
            ImmutableList<Label> immutableList = format.f13757c;
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(immutableList.size());
            for (Label label : immutableList) {
                label.getClass();
                Bundle bundle3 = new Bundle();
                String str2 = label.f13781a;
                if (str2 != null) {
                    bundle3.putString(Label.f13780c, str2);
                }
                bundle3.putString(Label.d, label.f13782b);
                arrayList2.add(bundle3);
            }
            bundle2.putParcelableArrayList(str, arrayList2);
            bundle2.putString(Format.U, format.d);
            bundle2.putInt(Format.V, format.f13758e);
            bundle2.putInt(Format.W, format.f13759f);
            int i2 = format.g;
            if (i2 != Format.R.g) {
                bundle2.putInt(Format.y0, i2);
            }
            bundle2.putInt(Format.X, format.f13760h);
            bundle2.putInt(Format.Y, format.f13761i);
            bundle2.putString(Format.Z, format.f13763k);
            String str3 = format.m;
            if (str3 != null) {
                bundle2.putString(Format.C0, str3);
            }
            bundle2.putString(Format.a0, format.n);
            bundle2.putString(Format.b0, format.o);
            bundle2.putInt(Format.c0, format.p);
            for (int i3 = 0; i3 < list.size(); i3++) {
                bundle2.putByteArray(Format.d0 + "_" + Integer.toString(i3, 36), (byte[]) list.get(i3));
            }
            bundle2.putParcelable(Format.e0, format.s);
            bundle2.putLong(Format.f0, format.t);
            bundle2.putInt(Format.g0, format.v);
            bundle2.putInt(Format.h0, format.w);
            bundle2.putInt(Format.A0, format.x);
            bundle2.putInt(Format.B0, format.y);
            bundle2.putFloat(Format.i0, format.z);
            bundle2.putInt(Format.j0, format.A);
            bundle2.putFloat(Format.k0, format.B);
            bundle2.putByteArray(Format.l0, format.C);
            bundle2.putInt(Format.m0, format.D);
            ColorInfo colorInfo = format.E;
            if (colorInfo != null) {
                String str4 = Format.n0;
                Bundle bundle4 = new Bundle();
                bundle4.putInt(ColorInfo.f13722i, colorInfo.f13725a);
                bundle4.putInt(ColorInfo.f13723j, colorInfo.f13726b);
                bundle4.putInt(ColorInfo.f13724k, colorInfo.f13727c);
                bundle4.putByteArray(ColorInfo.l, colorInfo.d);
                bundle4.putInt(ColorInfo.m, colorInfo.f13728e);
                bundle4.putInt(ColorInfo.n, colorInfo.f13729f);
                bundle2.putBundle(str4, bundle4);
            }
            bundle2.putInt(Format.z0, format.F);
            bundle2.putInt(Format.o0, format.G);
            bundle2.putInt(Format.p0, format.H);
            bundle2.putInt(Format.q0, format.I);
            bundle2.putInt(Format.r0, format.J);
            bundle2.putInt(Format.s0, format.K);
            bundle2.putInt(Format.t0, format.L);
            bundle2.putInt(Format.v0, format.N);
            bundle2.putInt(Format.w0, format.O);
            bundle2.putInt(Format.u0, format.P);
            arrayList.add(bundle2);
        }
        bundle.putParcelableArrayList(f13976f, arrayList);
        bundle.putString(g, this.f13978b);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroup.class == obj.getClass()) {
            TrackGroup trackGroup = (TrackGroup) obj;
            if (this.f13978b.equals(trackGroup.f13978b) && Arrays.equals(this.d, trackGroup.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f13980e == 0) {
            this.f13980e = Arrays.hashCode(this.d) + fc.b(527, 31, this.f13978b);
        }
        return this.f13980e;
    }

    public final String toString() {
        return this.f13978b + ": " + Arrays.toString(this.d);
    }

    public TrackGroup(Format... formatArr) {
        this("", formatArr);
    }
}
