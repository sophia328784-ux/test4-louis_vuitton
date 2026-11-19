package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0001¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/text/TextFieldSize;", "", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/text/TextStyle;", "resolvedStyle", "typeface", "<init>", "(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/TextStyle;Ljava/lang/Object;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TextFieldSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LayoutDirection f6005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Density f6006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FontFamily.Resolver f6007c;
    public TextStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f6008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f6009f = SnapshotStateKt.g(Boolean.TRUE);
    public long g;

    public TextFieldSize(LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, TextStyle textStyle, Object obj) {
        this.f6005a = layoutDirection;
        this.f6006b = density;
        this.f6007c = resolver;
        this.d = textStyle;
        this.f6008e = obj;
        this.g = TextFieldDelegateKt.a(this.d, this.f6006b, this.f6007c, TextFieldDelegateKt.f5964a, 1);
    }

    public static void a(TextFieldSize textFieldSize, LayoutDirection layoutDirection, Density density, TextStyle textStyle, int i2) {
        if ((i2 & 1) != 0) {
            layoutDirection = textFieldSize.f6005a;
        }
        if ((i2 & 2) != 0) {
            density = textFieldSize.f6006b;
        }
        FontFamily.Resolver resolver = textFieldSize.f6007c;
        if ((i2 & 8) != 0) {
            textStyle = textFieldSize.d;
        }
        Object obj = textFieldSize.f6008e;
        LayoutDirection layoutDirection2 = textFieldSize.f6005a;
        MutableState mutableState = textFieldSize.f6009f;
        if (layoutDirection == layoutDirection2 && Intrinsics.c(density, textFieldSize.f6006b) && Intrinsics.c(resolver, textFieldSize.f6007c) && Intrinsics.c(textStyle, textFieldSize.d)) {
            if (Intrinsics.c(obj, textFieldSize.f6008e)) {
                return;
            }
            textFieldSize.f6008e = obj;
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
            return;
        }
        textFieldSize.f6005a = layoutDirection;
        textFieldSize.f6006b = density;
        textFieldSize.f6007c = resolver;
        textFieldSize.d = textStyle;
        ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
    }
}
