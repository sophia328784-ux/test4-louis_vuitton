package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/Path;", "", "Direction", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Path {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/Path$Direction;", "", "CounterClockwise", "Clockwise", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Direction {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Direction[] $VALUES;
        public static final Direction Clockwise;
        public static final Direction CounterClockwise;

        static {
            Direction direction = new Direction("CounterClockwise", 0);
            CounterClockwise = direction;
            Direction direction2 = new Direction("Clockwise", 1);
            Clockwise = direction2;
            Direction[] directionArr = {direction, direction2};
            $VALUES = directionArr;
            $ENTRIES = EnumEntriesKt.a(directionArr);
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) $VALUES.clone();
        }
    }

    static void o(AndroidPath androidPath, Path path) {
        Offset.f8806b.getClass();
        android.graphics.Path path2 = androidPath.f8841a;
        if (path instanceof AndroidPath) {
            path2.addPath(((AndroidPath) path).f8841a, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
        } else {
            mt.i("Unable to obtain android.graphics.Path");
        }
    }

    void a(float f2, float f3);

    void b(float f2, float f3, float f4, float f5, float f6, float f7);

    void c(float f2, float f3);

    void close();

    void d(float f2, float f3);

    void e(float f2, float f3, float f4, float f5, float f6, float f7);

    void f(float f2, float f3, float f4, float f5);

    void g(float f2, float f3, float f4, float f5);

    Rect getBounds();

    void h(int i2);

    default void i(float f2, float f3, float f4, float f5) {
        f(f2, f3, f4, f5);
    }

    void j(Rect rect, Direction direction);

    default void k() {
        reset();
    }

    default void l(float f2, float f3, float f4, float f5) {
        g(f2, f3, f4, f5);
    }

    int m();

    boolean p(Path path, Path path2, int i2);

    void q(float f2, float f3);

    void reset();

    void s(RoundRect roundRect, Direction direction);
}
