package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w31 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f80748c;

    public /* synthetic */ w31(Context context, int i2) {
        this.f80747b = i2;
        this.f80748c = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80747b;
        Context context = this.f80748c;
        switch (i2) {
            case 0:
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    appCompatActivityB.finish();
                }
                break;
            default:
                LegalTextActivity.p.getClass();
                context.startActivity(LegalTextActivity.Companion.a(context, false));
                break;
        }
        return Unit.f71739a;
    }
}
