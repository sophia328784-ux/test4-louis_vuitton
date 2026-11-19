package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidCompositionLocals_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f9935a = CompositionLocalKt.c(AndroidCompositionLocals_androidKt$LocalConfiguration$1.f9940c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f9936b = new StaticProvidableCompositionLocal(AndroidCompositionLocals_androidKt$LocalContext$1.f9941c);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ComputedProvidableCompositionLocal f9937c = new ComputedProvidableCompositionLocal(AndroidCompositionLocals_androidKt$LocalResources$1.f9944c);
    public static final StaticProvidableCompositionLocal d = new StaticProvidableCompositionLocal(AndroidCompositionLocals_androidKt$LocalImageVectorCache$1.f9942c);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f9938e = new StaticProvidableCompositionLocal(AndroidCompositionLocals_androidKt$LocalResourceIdCache$1.f9943c);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f9939f = new StaticProvidableCompositionLocal(AndroidCompositionLocals_androidKt$LocalView$1.f9945c);

    public static final void a(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
