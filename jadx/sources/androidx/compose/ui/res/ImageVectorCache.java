package androidx.compose.ui.res;

import android.content.res.Resources;
import androidx.compose.ui.graphics.vector.ImageVector;
import com.batch.android.s.b;
import defpackage.tr;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/res/ImageVectorCache;", "", "<init>", "()V", "Key", "ImageVectorEntry", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageVectorCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f10230a = new HashMap();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;", "", "Landroidx/compose/ui/graphics/vector/ImageVector;", "imageVector", "", "configFlags", "<init>", "(Landroidx/compose/ui/graphics/vector/ImageVector;I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ImageVectorEntry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImageVector f10231a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10232b;

        public ImageVectorEntry(ImageVector imageVector, int i2) {
            this.f10231a = imageVector;
            this.f10232b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImageVectorEntry)) {
                return false;
            }
            ImageVectorEntry imageVectorEntry = (ImageVectorEntry) obj;
            return Intrinsics.c(this.f10231a, imageVectorEntry.f10231a) && this.f10232b == imageVectorEntry.f10232b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f10232b) + (this.f10231a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ImageVectorEntry(imageVector=");
            sb.append(this.f10231a);
            sb.append(", configFlags=");
            return tr.k(sb, this.f10232b, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/res/ImageVectorCache$Key;", "", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "theme", "", b.a.f24015b, "<init>", "(Landroid/content/res/Resources$Theme;I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Key {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources.Theme f10233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10234b;

        public Key(Resources.Theme theme, int i2) {
            this.f10233a = theme;
            this.f10234b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return Intrinsics.c(this.f10233a, key.f10233a) && this.f10234b == key.f10234b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f10234b) + (this.f10233a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Key(theme=");
            sb.append(this.f10233a);
            sb.append(", id=");
            return tr.k(sb, this.f10234b, ')');
        }
    }
}
