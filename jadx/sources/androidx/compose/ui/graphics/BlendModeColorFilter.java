package androidx.compose.ui.graphics;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B%\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\t\u0010\nB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/graphics/BlendModeColorFilter;", "Landroidx/compose/ui/graphics/ColorFilter;", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/graphics/BlendMode;", "blendMode", "Landroid/graphics/ColorFilter;", "Landroidx/compose/ui/graphics/NativeColorFilter;", "nativeColorFilter", "<init>", "(JILandroid/graphics/ColorFilter;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BlendModeColorFilter extends ColorFilter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f8856c;
    public final int d;

    public BlendModeColorFilter(long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, i2, new android.graphics.BlendModeColorFilter(ColorKt.i(j2), AndroidBlendMode_androidKt.a(i2)), null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlendModeColorFilter)) {
            return false;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj;
        if (!Color.c(this.f8856c, blendModeColorFilter.f8856c)) {
            return false;
        }
        int i2 = blendModeColorFilter.d;
        BlendMode.Companion companion = BlendMode.f8847a;
        return this.d == i2;
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iHashCode = Long.hashCode(this.f8856c) * 31;
        BlendMode.Companion companion3 = BlendMode.f8847a;
        return Integer.hashCode(this.d) + iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BlendModeColorFilter(color=");
        o60.y(this.f8856c, ", blendMode=", sb);
        sb.append((Object) BlendMode.a(this.d));
        sb.append(')');
        return sb.toString();
    }

    public BlendModeColorFilter(long j2, int i2, android.graphics.ColorFilter colorFilter, DefaultConstructorMarker defaultConstructorMarker) {
        super(colorFilter);
        this.f8856c = j2;
        this.d = i2;
    }
}
