package defpackage;

import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qr0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContactUsUiModel f79146c;
    public final /* synthetic */ LVModalBottomSheetState d;

    public /* synthetic */ qr0(ContactUsUiModel contactUsUiModel, LVModalBottomSheetState lVModalBottomSheetState, int i2) {
        this.f79145b = i2;
        this.f79146c = contactUsUiModel;
        this.d = lVModalBottomSheetState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79145b) {
            case 0:
                if (this.f79146c.f51154a) {
                    this.d.e();
                }
                break;
            default:
                if (this.f79146c.f51154a) {
                    this.d.e();
                }
                break;
        }
        return Unit.f71739a;
    }
}
