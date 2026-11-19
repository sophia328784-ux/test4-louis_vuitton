package androidx.camera.core.impl;

import defpackage.p3;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface ReadableConfig extends Config {
    @Override // androidx.camera.core.impl.Config
    default Object a(Config.Option option) {
        return l().a(option);
    }

    @Override // androidx.camera.core.impl.Config
    default boolean b(Config.Option option) {
        return l().b(option);
    }

    @Override // androidx.camera.core.impl.Config
    default Object c(Config.Option option, Config.OptionPriority optionPriority) {
        return l().c(option, optionPriority);
    }

    @Override // androidx.camera.core.impl.Config
    default Set d() {
        return l().d();
    }

    @Override // androidx.camera.core.impl.Config
    default Set e(Config.Option option) {
        return l().e(option);
    }

    @Override // androidx.camera.core.impl.Config
    default Object f(Config.Option option, Object obj) {
        return l().f(option, obj);
    }

    @Override // androidx.camera.core.impl.Config
    default Config.OptionPriority g(Config.Option option) {
        return l().g(option);
    }

    @Override // androidx.camera.core.impl.Config
    default void h(p3 p3Var) {
        l().h(p3Var);
    }

    Config l();
}
