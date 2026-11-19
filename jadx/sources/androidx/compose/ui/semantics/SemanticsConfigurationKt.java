package androidx.compose.ui.semantics;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsConfigurationKt {
    public static final Object a(SemanticsConfiguration semanticsConfiguration, SemanticsPropertyKey semanticsPropertyKey) {
        SemanticsConfigurationKt$getOrNull$1 semanticsConfigurationKt$getOrNull$1 = SemanticsConfigurationKt$getOrNull$1.f10316c;
        Object objE = semanticsConfiguration.f10312b.e(semanticsPropertyKey);
        return objE == null ? semanticsConfigurationKt$getOrNull$1.mo47invoke() : objE;
    }
}
