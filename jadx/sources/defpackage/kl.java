package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateFormField f71678c;
    public final /* synthetic */ InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f71679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f71680f;

    public /* synthetic */ kl(CertificateFormField certificateFormField, InAppDispatch inAppDispatch, Function1 function1, int i2, int i3) {
        this.f71677b = i3;
        this.f71678c = certificateFormField;
        this.d = inAppDispatch;
        this.f71679e = function1;
        this.f71680f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71677b;
        int i3 = this.f71680f;
        Function1 function1 = this.f71679e;
        InAppDispatch inAppDispatch = this.d;
        CertificateFormField certificateFormField = this.f71678c;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                num.intValue();
                Regex regex = CertificateFormField.l;
                certificateFormField.a(inAppDispatch, function1, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                num.getClass();
                Regex regex2 = CertificateFormField.l;
                certificateFormField.b(inAppDispatch, function1, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
