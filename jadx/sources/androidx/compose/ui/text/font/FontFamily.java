package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/font/FontFamily;", "", "Resolver", "Companion", "Landroidx/compose/ui/text/font/FileBasedFontFamily;", "Landroidx/compose/ui/text/font/LoadedFontFamily;", "Landroidx/compose/ui/text/font/SystemFontFamily;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class FontFamily {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10695b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DefaultFontFamily f10696c = new DefaultFontFamily();
    public static final GenericFontFamily d = new GenericFontFamily("sans-serif", "FontFamily.SansSerif");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GenericFontFamily f10697e = new GenericFontFamily("serif", "FontFamily.Serif");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GenericFontFamily f10698f = new GenericFontFamily("monospace", "FontFamily.Monospace");
    public static final GenericFontFamily g = new GenericFontFamily("cursive", "FontFamily.Cursive");

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/font/FontFamily$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/FontFamily$Resolver;", "", "Landroidx/compose/ui/text/font/FontFamilyResolverImpl;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Resolver {
        TypefaceResult a(FontFamily fontFamily, FontWeight fontWeight, int i2, int i3);
    }

    public FontFamily(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
    }
}
