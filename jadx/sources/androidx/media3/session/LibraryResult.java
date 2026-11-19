package androidx.media3.session;

import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.r81;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LibraryResult<V> {
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f17304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f17305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f17306j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f17307k;
    public static final String l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17310c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaLibraryService$LibraryParams f17311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SessionError f17312f;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Code {
    }

    static {
        String str = Util.f14242a;
        g = Integer.toString(0, 36);
        f17304h = Integer.toString(1, 36);
        f17305i = Integer.toString(2, 36);
        f17306j = Integer.toString(3, 36);
        f17307k = Integer.toString(4, 36);
        l = Integer.toString(5, 36);
    }

    public LibraryResult(int i2, long j2, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, SessionError sessionError, Object obj, int i3) {
        this.f17308a = i2;
        this.f17309b = j2;
        this.f17311e = mediaLibraryService$LibraryParams;
        this.f17312f = sessionError;
        this.f17310c = obj;
        this.d = i3;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:19:0x004b  */
    /* JADX WARN: Code duplicated, block: B:22:0x004f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0053  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:30:0x006b A[LOOP:0: B:28:0x0065->B:30:0x006b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:33:0x0084  */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    /* JADX WARN: Multi-variable type inference failed */
    public static LibraryResult a(int i2, Bundle bundle) {
        SessionError sessionError;
        SessionError sessionError2;
        int i3;
        String str;
        Bundle bundle2;
        IBinder binder;
        ImmutableList immutableListA;
        ImmutableList.Builder builder;
        int i4 = bundle.getInt(g, 0);
        long j2 = bundle.getLong(f17304h, SystemClock.elapsedRealtime());
        Bundle bundle3 = bundle.getBundle(f17305i);
        Object objB = null;
        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsA = bundle3 == null ? null : MediaLibraryService$LibraryParams.a(bundle3);
        Bundle bundle4 = bundle.getBundle(l);
        if (bundle4 == null) {
            if (i4 != 0) {
                sessionError2 = new SessionError(i4, "no error message provided");
            } else {
                sessionError = null;
            }
            i3 = bundle.getInt(f17307k);
            if (i3 != 1) {
                str = f17306j;
                if (i3 != 2) {
                    bundle2 = bundle.getBundle(str);
                    if (bundle2 != null) {
                        objB = MediaItem.b(i2, bundle2);
                    }
                } else if (i3 != 3) {
                    binder = bundle.getBinder(str);
                    if (binder != null) {
                        immutableListA = BundleListRetriever.a(binder);
                        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                        builder = new ImmutableList.Builder();
                        for (int i5 = 0; i5 < immutableListA.size(); i5++) {
                            Bundle bundle5 = (Bundle) immutableListA.get(i5);
                            bundle5.getClass();
                            builder.e(MediaItem.b(i2, bundle5));
                        }
                        objB = builder.j();
                    }
                } else if (i3 != 4) {
                    r81.b();
                    return null;
                }
            }
            return new LibraryResult(i4, j2, mediaLibraryService$LibraryParamsA, sessionError, objB, i3);
        }
        sessionError2 = SessionError.a(bundle4);
        sessionError = sessionError2;
        i3 = bundle.getInt(f17307k);
        if (i3 != 1) {
            str = f17306j;
            if (i3 != 2) {
                bundle2 = bundle.getBundle(str);
                if (bundle2 != null) {
                    objB = MediaItem.b(i2, bundle2);
                }
            } else if (i3 != 3) {
                binder = bundle.getBinder(str);
                if (binder != null) {
                    immutableListA = BundleListRetriever.a(binder);
                    UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
                    builder = new ImmutableList.Builder();
                    while (i5 < immutableListA.size()) {
                        Bundle bundle6 = (Bundle) immutableListA.get(i5);
                        bundle6.getClass();
                        builder.e(MediaItem.b(i2, bundle6));
                    }
                    objB = builder.j();
                }
            } else if (i3 != 4) {
                r81.b();
                return null;
            }
        }
        return new LibraryResult(i4, j2, mediaLibraryService$LibraryParamsA, sessionError, objB, i3);
    }

    public static LibraryResult b(int i2) {
        SessionError sessionError = new SessionError(i2, "no error message provided", Bundle.EMPTY);
        return new LibraryResult(sessionError.f17548a, SystemClock.elapsedRealtime(), null, sessionError, null, 4);
    }

    public static LibraryResult c(List list, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d((MediaItem) it.next());
        }
        return new LibraryResult(0, SystemClock.elapsedRealtime(), mediaLibraryService$LibraryParams, null, ImmutableList.t(list), 3);
    }

    public static void d(MediaItem mediaItem) {
        Preconditions.h(!TextUtils.isEmpty(mediaItem.f13787a), "mediaId must not be empty");
        MediaMetadata mediaMetadata = mediaItem.d;
        Preconditions.h(mediaMetadata.r != null, "mediaMetadata must specify isBrowsable");
        Preconditions.h(mediaMetadata.s != null, "mediaMetadata must specify isPlayable");
    }
}
