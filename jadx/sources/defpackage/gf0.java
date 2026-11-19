package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gf0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavHostController f69393c;
    public final /* synthetic */ Context d;

    public /* synthetic */ gf0(NavHostController navHostController, Context context, int i2) {
        this.f69392b = i2;
        this.f69393c = navHostController;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        AppCompatActivity appCompatActivityB;
        AppCompatActivity appCompatActivityB2;
        AppCompatActivity appCompatActivityB3;
        int i2 = this.f69392b;
        Context context = this.d;
        NavHostController navHostController = this.f69393c;
        switch (i2) {
            case 0:
                if (!navHostController.e() && (appCompatActivityB = ContextExtKt.b(context)) != null) {
                    appCompatActivityB.finish();
                }
                break;
            case 1:
                if (!navHostController.e() && (appCompatActivityB2 = ContextExtKt.b(context)) != null) {
                    appCompatActivityB2.finish();
                }
                break;
            default:
                if (!navHostController.e() && (appCompatActivityB3 = ContextExtKt.b(context)) != null) {
                    appCompatActivityB3.finish();
                }
                break;
        }
        return Unit.f71739a;
    }
}
