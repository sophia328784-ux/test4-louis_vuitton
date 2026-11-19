package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.collections.builders.MapBuilder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Visibilities {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MapBuilder f72411a;

    public static final class Inherited extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Inherited f72412c = new Inherited("inherited", false);
    }

    public static final class Internal extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Internal f72413c = new Internal("internal", false);
    }

    public static final class InvisibleFake extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final InvisibleFake f72414c = new InvisibleFake("invisible_fake", false);
    }

    public static final class Local extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Local f72415c = new Local("local", false);
    }

    public static final class Private extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Private f72416c = new Private("private", false);
    }

    public static final class PrivateToThis extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final PrivateToThis f72417c = new PrivateToThis("private_to_this", false);

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        public final String b() {
            return "private/*private to this*/";
        }
    }

    public static final class Protected extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Protected f72418c = new Protected("protected", true);
    }

    public static final class Public extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Public f72419c = new Public("public", true);
    }

    public static final class Unknown extends Visibility {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Unknown f72420c = new Unknown("unknown", false);
    }

    static {
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put(PrivateToThis.f72417c, 0);
        mapBuilder.put(Private.f72416c, 0);
        mapBuilder.put(Internal.f72413c, 1);
        mapBuilder.put(Protected.f72418c, 1);
        mapBuilder.put(Public.f72419c, 2);
        f72411a = mapBuilder.c();
    }
}
