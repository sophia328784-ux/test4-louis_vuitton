package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;

/* JADX INFO: loaded from: classes4.dex */
public interface NewKotlinTypeChecker extends KotlinTypeChecker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f74286b = Companion.f74287a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f74287a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final NewKotlinTypeCheckerImpl f74288b = new NewKotlinTypeCheckerImpl(KotlinTypeRefiner.Default.f74271a, null, 2, 0 == true ? 1 : 0);
    }

    OverridingUtil a();

    KotlinTypeRefiner c();
}
