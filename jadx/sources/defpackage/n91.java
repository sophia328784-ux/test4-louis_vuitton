package defpackage;

import com.google.android.gms.internal.measurement.zzaeh;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class n91 {
    public static /* synthetic */ void a(int i2, int i3) {
        StringBuilder sb = new StringBuilder(40);
        sb.append((Object) "Length too large: ");
        sb.append(i2);
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void b(int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder(i2);
        sb.append((Object) "Ran off end of other: 0, ");
        sb.append(i3);
        sb.append((Object) ", ");
        sb.append(i4);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void c(String str) throws zzaeh {
        throw new zzaeh(str);
    }
}
