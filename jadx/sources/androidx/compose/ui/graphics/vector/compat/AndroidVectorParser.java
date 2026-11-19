package androidx.compose.ui.graphics.vector.compat;

import android.content.res.TypedArray;
import androidx.compose.ui.graphics.vector.PathParser;
import androidx.core.content.res.TypedArrayUtils;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;", "", "Lorg/xmlpull/v1/XmlPullParser;", "xmlParser", "", "config", "<init>", "(Lorg/xmlpull/v1/XmlPullParser;I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AndroidVectorParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XmlPullParser f9187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PathParser f9189c;

    public AndroidVectorParser(XmlPullParser xmlPullParser, int i2) {
        this.f9187a = xmlPullParser;
        this.f9188b = i2;
        this.f9189c = new PathParser();
    }

    public final float a(TypedArray typedArray, String str, int i2, float f2) {
        if (TypedArrayUtils.e(this.f9187a, str)) {
            f2 = typedArray.getFloat(i2, f2);
        }
        b(typedArray.getChangingConfigurations());
        return f2;
    }

    public final void b(int i2) {
        this.f9188b = i2 | this.f9188b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidVectorParser)) {
            return false;
        }
        AndroidVectorParser androidVectorParser = (AndroidVectorParser) obj;
        return Intrinsics.c(this.f9187a, androidVectorParser.f9187a) && this.f9188b == androidVectorParser.f9188b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9188b) + (this.f9187a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidVectorParser(xmlParser=");
        sb.append(this.f9187a);
        sb.append(", config=");
        return tr.k(sb, this.f9188b, ')');
    }

    public /* synthetic */ AndroidVectorParser(XmlPullParser xmlPullParser, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(xmlPullParser, (i3 & 2) != 0 ? 0 : i2);
    }
}
