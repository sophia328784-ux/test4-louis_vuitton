package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;
import androidx.core.util.Preconditions;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.bm;
import defpackage.n00;
import defpackage.vp;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInfoCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Compat f12147a;

    public interface BuilderCompat {
        void a(Uri uri);

        void b(int i2);

        ContentInfoCompat build();

        void setExtras(Bundle bundle);
    }

    public static final class BuilderCompatImpl implements BuilderCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ClipData f12150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f12152c;
        public Uri d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Bundle f12153e;

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void a(Uri uri) {
            this.d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void b(int i2) {
            this.f12152c = i2;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setExtras(Bundle bundle) {
            this.f12153e = bundle;
        }
    }

    public interface Compat {
        ContentInfo a();

        ClipData b();

        Uri c();

        int d();

        Bundle getExtras();

        int getSource();
    }

    public static final class Compat31Impl implements Compat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentInfo f12154a;

        public Compat31Impl(ContentInfo contentInfo) {
            contentInfo.getClass();
            this.f12154a = contentInfo;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ContentInfo a() {
            return this.f12154a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ClipData b() {
            return this.f12154a.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final Uri c() {
            return this.f12154a.getLinkUri();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int d() {
            return this.f12154a.getFlags();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final Bundle getExtras() {
            return this.f12154a.getExtras();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int getSource() {
            return this.f12154a.getSource();
        }

        public final String toString() {
            return "ContentInfoCompat{" + this.f12154a + "}";
        }
    }

    public static final class CompatImpl implements Compat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ClipData f12155a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12156b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12157c;
        public final Uri d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f12158e;

        public CompatImpl(BuilderCompatImpl builderCompatImpl) {
            ClipData clipData = builderCompatImpl.f12150a;
            clipData.getClass();
            this.f12155a = clipData;
            int i2 = builderCompatImpl.f12151b;
            Preconditions.c(i2, 0, 5, Payload.SOURCE);
            this.f12156b = i2;
            int i3 = builderCompatImpl.f12152c;
            if ((i3 & 1) != i3) {
                bm.c(Integer.toHexString(i3), ", but only 0x", Integer.toHexString(1), " are allowed", "Requested flags 0x");
                throw null;
            }
            this.f12157c = i3;
            this.d = builderCompatImpl.d;
            this.f12158e = builderCompatImpl.f12153e;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ContentInfo a() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ClipData b() {
            return this.f12155a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final Uri c() {
            return this.d;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int d() {
            return this.f12157c;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final Bundle getExtras() {
            return this.f12158e;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int getSource() {
            return this.f12156b;
        }

        public final String toString() {
            String strValueOf;
            String str;
            StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
            sb.append(this.f12155a.getDescription());
            sb.append(", source=");
            int i2 = this.f12156b;
            if (i2 == 0) {
                strValueOf = "SOURCE_APP";
            } else if (i2 == 1) {
                strValueOf = "SOURCE_CLIPBOARD";
            } else if (i2 == 2) {
                strValueOf = "SOURCE_INPUT_METHOD";
            } else if (i2 == 3) {
                strValueOf = "SOURCE_DRAG_AND_DROP";
            } else if (i2 != 4) {
                strValueOf = i2 != 5 ? String.valueOf(i2) : "SOURCE_PROCESS_TEXT";
            } else {
                strValueOf = "SOURCE_AUTOFILL";
            }
            sb.append(strValueOf);
            sb.append(", flags=");
            int i3 = this.f12157c;
            sb.append((i3 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i3));
            Uri uri = this.d;
            if (uri == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + uri.toString().length() + ")";
            }
            sb.append(str);
            return n00.r(this.f12158e != null ? ", hasExtras" : "", "}", sb);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    public ContentInfoCompat(Compat compat) {
        this.f12147a = compat;
    }

    public final ClipData a() {
        return this.f12147a.b();
    }

    public final int b() {
        return this.f12147a.d();
    }

    public final int c() {
        return this.f12147a.getSource();
    }

    public final ContentInfo d() {
        ContentInfo contentInfoA = this.f12147a.a();
        Objects.requireNonNull(contentInfoA);
        return contentInfoA;
    }

    public final String toString() {
        return this.f12147a.toString();
    }

    public static final class BuilderCompat31Impl implements BuilderCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentInfo.Builder f12149a;

        public BuilderCompat31Impl(ContentInfoCompat contentInfoCompat) {
            vp.d();
            this.f12149a = vp.c(contentInfoCompat.d());
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void a(Uri uri) {
            this.f12149a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void b(int i2) {
            this.f12149a.setFlags(i2);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final ContentInfoCompat build() {
            return new ContentInfoCompat(new Compat31Impl(this.f12149a.build()));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setExtras(Bundle bundle) {
            this.f12149a.setExtras(bundle);
        }

        public BuilderCompat31Impl(ClipData clipData, int i2) {
            this.f12149a = vp.b(clipData, i2);
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderCompat f12148a;

        public Builder(ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f12148a = new BuilderCompat31Impl(contentInfoCompat);
                return;
            }
            BuilderCompatImpl builderCompatImpl = new BuilderCompatImpl();
            builderCompatImpl.f12150a = contentInfoCompat.f12147a.b();
            Compat compat = contentInfoCompat.f12147a;
            builderCompatImpl.f12151b = compat.getSource();
            builderCompatImpl.f12152c = compat.d();
            builderCompatImpl.d = compat.c();
            builderCompatImpl.f12153e = compat.getExtras();
            this.f12148a = builderCompatImpl;
        }

        public final ContentInfoCompat a() {
            return this.f12148a.build();
        }

        public final void b(Bundle bundle) {
            this.f12148a.setExtras(bundle);
        }

        public final void c(int i2) {
            this.f12148a.b(i2);
        }

        public final void d(Uri uri) {
            this.f12148a.a(uri);
        }

        public Builder(ClipData clipData, int i2) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f12148a = new BuilderCompat31Impl(clipData, i2);
                return;
            }
            BuilderCompatImpl builderCompatImpl = new BuilderCompatImpl();
            builderCompatImpl.f12150a = clipData;
            builderCompatImpl.f12151b = i2;
            this.f12148a = builderCompatImpl;
        }
    }
}
