package defpackage;

import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.screen.cart.NativeCartActivity;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oe0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartActivity f76766c;

    public /* synthetic */ oe0(NativeCartActivity nativeCartActivity, int i2) {
        this.f76765b = i2;
        this.f76766c = nativeCartActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76765b;
        NativeCartActivity nativeCartActivity = this.f76766c;
        switch (i2) {
            case 0:
                NativeCartActivity.Companion companion = NativeCartActivity.w;
                return (CartPreviousScreen) CartPreviousScreen.a().get(nativeCartActivity.getIntent().getIntExtra("PREVIOUS_SCREEN", 0));
            default:
                ChatLifecycleObserver chatLifecycleObserver = nativeCartActivity.u;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(nativeCartActivity);
                }
                return Unit.f71739a;
        }
    }
}
