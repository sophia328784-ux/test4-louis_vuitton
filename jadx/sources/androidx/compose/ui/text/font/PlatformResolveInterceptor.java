package androidx.compose.ui.text.font;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/PlatformResolveInterceptor;", "", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PlatformResolveInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f10740a = Companion.f10741a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f10741a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final PlatformResolveInterceptor$Companion$Default$1 f10742b = new PlatformResolveInterceptor$Companion$Default$1();
    }

    default FontWeight a(FontWeight fontWeight) {
        return fontWeight;
    }
}
