package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.OffsetMapping;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/text/ValidatingOffsetMapping;", "Landroidx/compose/ui/text/input/OffsetMapping;", "delegate", "", "originalLength", "transformedLength", "<init>", "(Landroidx/compose/ui/text/input/OffsetMapping;II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ValidatingOffsetMapping implements OffsetMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OffsetMapping f6036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6038c;

    public ValidatingOffsetMapping(OffsetMapping offsetMapping, int i2, int i3) {
        this.f6036a = offsetMapping;
        this.f6037b = i2;
        this.f6038c = i3;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public final int a(int i2) {
        int iA = this.f6036a.a(i2);
        if (i2 >= 0 && i2 <= this.f6038c) {
            ValidatingOffsetMappingKt.c(iA, this.f6037b, i2);
        }
        return iA;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public final int b(int i2) {
        int iB = this.f6036a.b(i2);
        if (i2 >= 0 && i2 <= this.f6037b) {
            ValidatingOffsetMappingKt.b(iB, this.f6038c, i2);
        }
        return iB;
    }
}
