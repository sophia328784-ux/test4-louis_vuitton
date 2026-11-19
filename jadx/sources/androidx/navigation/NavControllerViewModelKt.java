package androidx.navigation;

import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import defpackage.ag0;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavControllerViewModelKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InitializerViewModelFactory f18130a;

    static {
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        initializerViewModelFactoryBuilder.a(Reflection.f71922a.b(NavControllerViewModel.class), new ag0(7));
        f18130a = initializerViewModelFactoryBuilder.b();
    }
}
