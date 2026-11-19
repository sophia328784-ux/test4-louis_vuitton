package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "loader", "<init>", "(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DelegatingFontLoaderForDeprecatedUsage implements PlatformFontLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Font.ResourceLoader f10693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f10694b = new Object();

    public DelegatingFontLoaderForDeprecatedUsage(Font.ResourceLoader resourceLoader) {
        this.f10693a = resourceLoader;
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    public final Object a(Font font) {
        return this.f10693a.a(font);
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Object getF10694b() {
        return this.f10694b;
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    public final Object c(Font font, Continuation continuation) {
        return this.f10693a.a(font);
    }
}
