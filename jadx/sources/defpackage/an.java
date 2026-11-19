package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.navigationevent.DirectNavigationEventInput;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class an implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f560c;

    public /* synthetic */ an(ComponentActivity componentActivity, int i2) {
        this.f559b = i2;
        this.f560c = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f559b;
        ComponentActivity componentActivity = this.f560c;
        switch (i2) {
            case 0:
                int i3 = ComponentActivity.g;
                componentActivity.reportFullyDrawn();
                return Unit.f71739a;
            case 1:
                return ComponentActivity.p(componentActivity);
            case 2:
                int i4 = ComponentActivity.g;
                DirectNavigationEventInput directNavigationEventInput = new DirectNavigationEventInput();
                componentActivity.getNavigationEventDispatcher().b(directNavigationEventInput);
                return directNavigationEventInput;
            case 3:
                int i5 = ComponentActivity.g;
                return new SavedStateViewModelFactory(componentActivity.getApplication(), componentActivity, componentActivity.getIntent() != null ? componentActivity.getIntent().getExtras() : null);
            default:
                int i6 = ComponentActivity.g;
                OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new zm(componentActivity, 1));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                        componentActivity.getD().a(new bn(onBackPressedDispatcher, componentActivity, 0));
                    } else {
                        new Handler(Looper.getMainLooper()).post(new r6(componentActivity, onBackPressedDispatcher, 18));
                    }
                }
                return onBackPressedDispatcher;
        }
    }
}
