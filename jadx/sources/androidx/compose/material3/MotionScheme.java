package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\ba\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/material3/MotionScheme;", "", "StandardMotionSchemeImpl", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface MotionScheme {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;", "Landroidx/compose/material3/MotionScheme;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class StandardMotionSchemeImpl implements MotionScheme {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final StandardMotionSchemeImpl f7112a = new StandardMotionSchemeImpl();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SpringSpec f7113b = AnimationSpecKt.b(0.9f, 700.0f, 4, null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final SpringSpec f7114c = AnimationSpecKt.b(0.9f, 1400.0f, 4, null);
        public static final SpringSpec d = AnimationSpecKt.b(0.9f, 300.0f, 4, null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final SpringSpec f7115e = AnimationSpecKt.b(1.0f, 1600.0f, 4, null);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final SpringSpec f7116f = AnimationSpecKt.b(1.0f, 3800.0f, 4, null);
        public static final SpringSpec g = AnimationSpecKt.b(1.0f, 800.0f, 4, null);

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec a() {
            SpringSpec springSpec = f7114c;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec b() {
            SpringSpec springSpec = f7115e;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec c() {
            SpringSpec springSpec = d;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec d() {
            SpringSpec springSpec = g;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec e() {
            SpringSpec springSpec = f7116f;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec f() {
            SpringSpec springSpec = f7113b;
            springSpec.getClass();
            return springSpec;
        }
    }

    SpringSpec a();

    SpringSpec b();

    SpringSpec c();

    SpringSpec d();

    SpringSpec e();

    SpringSpec f();
}
