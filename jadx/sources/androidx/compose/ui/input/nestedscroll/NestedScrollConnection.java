package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface NestedScrollConnection {
    default long A0(int i2, long j2, long j3) {
        Offset.f8806b.getClass();
        return 0L;
    }

    default Object P(long j2, long j3, Continuation continuation) {
        Velocity.f11029b.getClass();
        return new Velocity(0L);
    }

    default long l0(int i2, long j2) {
        Offset.f8806b.getClass();
        return 0L;
    }

    default Object y1(long j2, Continuation continuation) {
        Velocity.f11029b.getClass();
        return new Velocity(0L);
    }
}
