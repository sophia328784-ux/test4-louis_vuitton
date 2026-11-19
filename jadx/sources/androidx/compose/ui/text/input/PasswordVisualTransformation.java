package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import com.android.wiimu.model.WiimuPendingMask;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.internal.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/input/PasswordVisualTransformation;", "Landroidx/compose/ui/text/input/VisualTransformation;", "", WiimuPendingMask.Mask, "<init>", "(C)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PasswordVisualTransformation implements VisualTransformation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char f10825b;

    public /* synthetic */ PasswordVisualTransformation(char c2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Strings.BULLET : c2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PasswordVisualTransformation) {
            return this.f10825b == ((PasswordVisualTransformation) obj).f10825b;
        }
        return false;
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public final TransformedText h(AnnotatedString annotatedString) {
        return new TransformedText(new AnnotatedString(StringsKt.H(annotatedString.f10420c.length(), String.valueOf(this.f10825b)), null, 2, null), OffsetMapping.Companion.f10821a);
    }

    public final int hashCode() {
        return Character.hashCode(this.f10825b);
    }

    public PasswordVisualTransformation(char c2) {
        this.f10825b = c2;
    }

    public PasswordVisualTransformation() {
        this((char) 0, 1, null);
    }
}
