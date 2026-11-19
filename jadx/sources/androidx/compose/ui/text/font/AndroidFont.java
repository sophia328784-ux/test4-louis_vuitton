package androidx.compose.ui.text.font;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001:\u0001\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFont;", "Landroidx/compose/ui/text/font/Font;", "Landroidx/compose/ui/text/font/FontLoadingStrategy;", "loadingStrategy", "Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;", "typefaceLoader", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "variationSettings", "<init>", "(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "TypefaceLoader", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidFont implements Font {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypefaceLoader f10659b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface TypefaceLoader {
        android.graphics.Typeface a();

        Object b();
    }

    @Deprecated
    public AndroidFont(int i2, TypefaceLoader typefaceLoader, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, typefaceLoader, new FontVariation$Settings(new FontVariation$Setting[0]), null);
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF10658a() {
        return this.f10658a;
    }

    public AndroidFont(int i2, TypefaceLoader typefaceLoader, FontVariation$Settings fontVariation$Settings, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10658a = i2;
        this.f10659b = typefaceLoader;
    }
}
