package androidx.compose.foundation.layout;

import android.view.WindowInsetsAnimationController;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5159c;
    public final /* synthetic */ WindowInsetsNestedScrollConnection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f5160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsAnimationController f5161f;
    public final /* synthetic */ boolean g;

    public /* synthetic */ g(int i2, int i3, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Ref$FloatRef ref$FloatRef, WindowInsetsAnimationController windowInsetsAnimationController, boolean z) {
        this.f5158b = i2;
        this.f5159c = i3;
        this.d = windowInsetsNestedScrollConnection;
        this.f5160e = ref$FloatRef;
        this.f5161f = windowInsetsAnimationController;
        this.g = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return WindowInsetsNestedScrollConnection$fling$2.AnonymousClass1.b(this.f5158b, this.f5159c, this.d, this.f5160e, this.f5161f, this.g, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
    }
}
