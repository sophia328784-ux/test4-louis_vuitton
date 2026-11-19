package org.teleal.cling.model.meta;

import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public class ActionArgument<S extends Service> implements Validatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f78439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78440c;
    public final Direction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f78441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Action f78442f;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Direction {
        private static final /* synthetic */ Direction[] $VALUES;
        public static final Direction IN;
        public static final Direction OUT;

        static {
            Direction direction = new Direction("IN", 0);
            IN = direction;
            Direction direction2 = new Direction("OUT", 1);
            OUT = direction2;
            $VALUES = new Direction[]{direction, direction2};
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) $VALUES.clone();
        }
    }

    static {
        Logger.getLogger(ActionArgument.class.getName());
    }

    public ActionArgument(String str, String[] strArr, String str2, Direction direction, boolean z) {
        this.f78438a = str;
        this.f78439b = strArr;
        this.f78440c = str2;
        this.d = direction;
        this.f78441e = z;
    }

    public final String toString() {
        return "(" + getClass().getSimpleName() + ", " + this.d + ") " + this.f78438a;
    }

    public ActionArgument(String str, String[] strArr, String str2, Direction direction) {
        this(str, strArr, str2, direction, false);
    }

    public ActionArgument(String str, String str2, Direction direction, boolean z) {
        this(str, new String[0], str2, direction, z);
    }

    public ActionArgument(String str, String str2, Direction direction) {
        this(str, new String[0], str2, direction, false);
    }
}
