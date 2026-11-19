package com.google.android.exoplayer2;

import android.net.Uri;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.util.Util;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class Timeline implements Bundleable {

    public static final class Period implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AdPlaybackState f28189b = AdPlaybackState.f28310f;

        static {
            tr.v(0, 1, 2, 3, 4);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && Period.class.equals(obj.getClass()) && Util.a(this.f28189b, ((Period) obj).f28189b);
        }

        public final int hashCode() {
            return this.f28189b.hashCode() - 685229543;
        }
    }

    public static final class Window implements Bundleable {
        public static final Object d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final MediaItem f28190e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f28191b = d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaItem f28192c = f28190e;

        static {
            MediaItem.Builder builder = new MediaItem.Builder();
            builder.f28156a = "com.google.android.exoplayer2.Timeline";
            builder.f28157b = Uri.EMPTY;
            f28190e = builder.a();
            tr.v(1, 2, 3, 4, 5);
            tr.v(6, 7, 8, 9, 10);
            Util.e(11);
            Util.e(12);
            Util.e(13);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Window.class.equals(obj.getClass())) {
                Window window = (Window) obj;
                if (Util.a(this.f28191b, window.f28191b) && Util.a(this.f28192c, window.f28192c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.f28192c.hashCode() + ((this.f28191b.hashCode() + 217) * 31)) * (-505558625);
        }
    }
}
