package androidx.compose.foundation.internal;

import android.os.Parcel;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/internal/EncodeHelper;", "", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EncodeHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Parcel f4900a = Parcel.obtain();

    public final void a(byte b2) {
        this.f4900a.writeByte(b2);
    }

    public final void b(float f2) {
        this.f4900a.writeFloat(f2);
    }

    public final void c(long j2) {
        long jB = TextUnit.b(j2);
        TextUnitType.Companion companion = TextUnitType.f11026b;
        companion.getClass();
        byte b2 = 0;
        if (!TextUnitType.a(jB, 0L)) {
            companion.getClass();
            if (TextUnitType.a(jB, TextUnitType.f11027c)) {
                b2 = 1;
            } else {
                companion.getClass();
                if (TextUnitType.a(jB, TextUnitType.d)) {
                    b2 = 2;
                }
            }
        }
        a(b2);
        long jB2 = TextUnit.b(j2);
        companion.getClass();
        if (TextUnitType.a(jB2, 0L)) {
            return;
        }
        b(TextUnit.c(j2));
    }
}
