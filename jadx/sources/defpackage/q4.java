package defpackage;

import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q4 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f79005c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ q4(LVModalBottomSheetState lVModalBottomSheetState, Function1 function1) {
        this.f79004b = 1;
        this.f79005c = lVModalBottomSheetState;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79004b;
        LVModalBottomSheetState lVModalBottomSheetState = this.f79005c;
        Function1 function1 = this.d;
        switch (i2) {
            case 0:
                String str = (String) obj;
                str.getClass();
                function1.invoke(str);
                lVModalBottomSheetState.e();
                break;
            case 1:
                CertificateUiModel certificateUiModel = (CertificateUiModel) obj;
                certificateUiModel.getClass();
                LVModalBottomSheetState.Companion companion = LVModalBottomSheetState.d;
                lVModalBottomSheetState.b(new k40(28));
                function1.invoke(certificateUiModel);
                break;
            default:
                CertificateUiModel certificateUiModel2 = (CertificateUiModel) obj;
                certificateUiModel2.getClass();
                function1.invoke(certificateUiModel2);
                LVModalBottomSheetState.Companion companion2 = LVModalBottomSheetState.d;
                lVModalBottomSheetState.b(new k40(28));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ q4(Function1 function1, LVModalBottomSheetState lVModalBottomSheetState, int i2) {
        this.f79004b = i2;
        this.d = function1;
        this.f79005c = lVModalBottomSheetState;
    }
}
