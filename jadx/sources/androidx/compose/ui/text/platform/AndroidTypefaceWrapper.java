package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidTypefaceWrapper;", "Landroidx/compose/ui/text/platform/AndroidTypeface;", "Landroid/graphics/Typeface;", "typeface", "<init>", "(Landroid/graphics/Typeface;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidTypefaceWrapper implements AndroidTypeface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Typeface f10894a;

    public AndroidTypefaceWrapper(Typeface typeface) {
        this.f10894a = typeface;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Typeface getF10894a() {
        return this.f10894a;
    }
}
