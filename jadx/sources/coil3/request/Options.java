package coil3.request;

import android.content.Context;
import coil3.Extras;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bo\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcoil3/request/Options;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", MvelScriptManager.VAR_CONTEXT, "Lcoil3/size/Size;", "size", "Lcoil3/size/Scale;", "scale", "Lcoil3/size/Precision;", "precision", "", "diskCacheKey", "Lokio/FileSystem;", "fileSystem", "Lcoil3/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "Lcoil3/Extras;", "extras", "<init>", "(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Options {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f21661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scale f21662c;
    public final Precision d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f21663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FileSystem f21664f;
    public final CachePolicy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CachePolicy f21665h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CachePolicy f21666i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Extras f21667j;

    public Options(Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? Size.f21689c : size, (i2 & 4) != 0 ? Scale.FIT : scale, (i2 & 8) != 0 ? Precision.EXACT : precision, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? FileSystem.f77414b : fileSystem, (i2 & 64) != 0 ? CachePolicy.ENABLED : cachePolicy, (i2 & 128) != 0 ? CachePolicy.ENABLED : cachePolicy2, (i2 & 256) != 0 ? CachePolicy.ENABLED : cachePolicy3, (i2 & 512) != 0 ? Extras.f21217b : extras);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Options)) {
            return false;
        }
        Options options = (Options) obj;
        return Intrinsics.c(this.f21660a, options.f21660a) && Intrinsics.c(this.f21661b, options.f21661b) && this.f21662c == options.f21662c && this.d == options.d && Intrinsics.c(this.f21663e, options.f21663e) && Intrinsics.c(this.f21664f, options.f21664f) && this.g == options.g && this.f21665h == options.f21665h && this.f21666i == options.f21666i && Intrinsics.c(this.f21667j, options.f21667j);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.f21662c.hashCode() + ((this.f21661b.hashCode() + (this.f21660a.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.f21663e;
        return this.f21667j.f21218a.hashCode() + ((this.f21666i.hashCode() + ((this.f21665h.hashCode() + ((this.g.hashCode() + ((this.f21664f.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Options(context=" + this.f21660a + ", size=" + this.f21661b + ", scale=" + this.f21662c + ", precision=" + this.d + ", diskCacheKey=" + this.f21663e + ", fileSystem=" + this.f21664f + ", memoryCachePolicy=" + this.g + ", diskCachePolicy=" + this.f21665h + ", networkCachePolicy=" + this.f21666i + ", extras=" + this.f21667j + ")";
    }

    public Options(Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras) {
        this.f21660a = context;
        this.f21661b = size;
        this.f21662c = scale;
        this.d = precision;
        this.f21663e = str;
        this.f21664f = fileSystem;
        this.g = cachePolicy;
        this.f21665h = cachePolicy2;
        this.f21666i = cachePolicy3;
        this.f21667j = extras;
    }
}
