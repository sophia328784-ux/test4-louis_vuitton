package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/font/LoadedFontFamily;", "Landroidx/compose/ui/text/font/FontFamily;", "Landroidx/compose/ui/text/font/Typeface;", "typeface", "<init>", "(Landroidx/compose/ui/text/font/Typeface;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LoadedFontFamily extends FontFamily {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Typeface f10738h;

    public LoadedFontFamily(Typeface typeface) {
        super(true, null);
        this.f10738h = typeface;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LoadedFontFamily) {
            return Intrinsics.c(this.f10738h, ((LoadedFontFamily) obj).f10738h);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10738h.hashCode();
    }

    public final String toString() {
        return "LoadedFontFamily(typeface=" + this.f10738h + ')';
    }
}
