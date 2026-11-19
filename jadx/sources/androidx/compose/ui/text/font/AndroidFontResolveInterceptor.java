package androidx.compose.ui.text.font;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;", "Landroidx/compose/ui/text/font/PlatformResolveInterceptor;", "", "fontWeightAdjustment", "<init>", "(I)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AndroidFontResolveInterceptor implements PlatformResolveInterceptor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10666b;

    public AndroidFontResolveInterceptor(int i2) {
        this.f10666b = i2;
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public final FontWeight a(FontWeight fontWeight) {
        int i2 = this.f10666b;
        return (i2 == 0 || i2 == Integer.MAX_VALUE) ? fontWeight : new FontWeight(RangesKt.d(fontWeight.f10734b + i2, 1, 1000));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AndroidFontResolveInterceptor) && this.f10666b == ((AndroidFontResolveInterceptor) obj).f10666b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10666b);
    }

    public final String toString() {
        return tr.k(new StringBuilder("AndroidFontResolveInterceptor(fontWeightAdjustment="), this.f10666b, ')');
    }
}
