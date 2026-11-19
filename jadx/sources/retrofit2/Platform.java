package retrofit2;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
abstract class Platform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Executor f79418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Reflection f79419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BuiltInFactories f79420c;

    static {
        String property = System.getProperty("java.vm.name");
        property.getClass();
        if (property.equals("RoboVM")) {
            f79418a = null;
            f79419b = new Reflection();
            f79420c = new BuiltInFactories();
        } else if (property.equals("Dalvik")) {
            f79418a = new AndroidMainExecutor();
            f79419b = new Reflection.Android24();
            f79420c = new BuiltInFactories.Java8();
        } else {
            f79418a = null;
            f79419b = new Reflection.Java8();
            f79420c = new BuiltInFactories.Java8();
        }
    }
}
