package androidx.compose.ui.text.font;

import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B3\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/text/font/TypefaceRequest;", "", "Landroidx/compose/ui/text/font/FontFamily;", "fontFamily", "Landroidx/compose/ui/text/font/FontWeight;", "fontWeight", "Landroidx/compose/ui/text/font/FontStyle;", "fontStyle", "Landroidx/compose/ui/text/font/FontSynthesis;", "fontSynthesis", "resourceLoaderCacheKey", "<init>", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TypefaceRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FontFamily f10748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FontWeight f10749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10750c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f10751e;

    public TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i2, int i3, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10748a = fontFamily;
        this.f10749b = fontWeight;
        this.f10750c = i2;
        this.d = i3;
        this.f10751e = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypefaceRequest)) {
            return false;
        }
        TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
        if (!Intrinsics.c(this.f10748a, typefaceRequest.f10748a) || !Intrinsics.c(this.f10749b, typefaceRequest.f10749b)) {
            return false;
        }
        int i2 = typefaceRequest.f10750c;
        FontStyle.Companion companion = FontStyle.f10715b;
        if (this.f10750c == i2) {
            int i3 = typefaceRequest.d;
            FontSynthesis.Companion companion2 = FontSynthesis.f10718b;
            return this.d == i3 && Intrinsics.c(this.f10751e, typefaceRequest.f10751e);
        }
        return false;
    }

    public final int hashCode() {
        FontFamily fontFamily = this.f10748a;
        int iHashCode = (((fontFamily == null ? 0 : fontFamily.hashCode()) * 31) + this.f10749b.f10734b) * 31;
        FontStyle.Companion companion = FontStyle.f10715b;
        int iB = tr.b(this.f10750c, iHashCode, 31);
        FontSynthesis.Companion companion2 = FontSynthesis.f10718b;
        int iB2 = tr.b(this.d, iB, 31);
        Object obj = this.f10751e;
        return iB2 + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("TypefaceRequest(fontFamily=");
        sb.append(this.f10748a);
        sb.append(", fontWeight=");
        sb.append(this.f10749b);
        sb.append(", fontStyle=");
        int i2 = this.f10750c;
        if (i2 == 0) {
            FontStyle.Companion companion = FontStyle.f10715b;
            str = "Normal";
        } else {
            str = i2 == FontStyle.f10716c ? "Italic" : "Invalid";
        }
        sb.append((Object) str);
        sb.append(", fontSynthesis=");
        sb.append((Object) FontSynthesis.a(this.d));
        sb.append(", resourceLoaderCacheKey=");
        return o60.r(sb, this.f10751e, ')');
    }
}
