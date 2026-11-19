package coil3;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001BK\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcoil3/Uri;", "", "", DbParams.KEY_DATA, "separator", "scheme", "authority", "path", "query", "fragment", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Uri {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21268c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f21269e;

    public Uri(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f21266a = str;
        this.f21267b = str2;
        this.f21268c = str3;
        this.d = str4;
        this.f21269e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Uri) && Intrinsics.c(((Uri) obj).f21266a, this.f21266a);
    }

    public final int hashCode() {
        return this.f21266a.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF21266a() {
        return this.f21266a;
    }
}
