package defpackage;

import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r30 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialLoginBottomSheetState f79236c;

    public /* synthetic */ r30(SocialLoginBottomSheetState socialLoginBottomSheetState, int i2) {
        this.f79235b = i2;
        this.f79236c = socialLoginBottomSheetState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79235b;
        SocialLoginBottomSheetState socialLoginBottomSheetState = this.f79236c;
        switch (i2) {
            case 0:
                socialLoginBottomSheetState.f54159i.mo47invoke();
                break;
            case 1:
                socialLoginBottomSheetState.f54160j.mo47invoke();
                break;
            case 2:
                socialLoginBottomSheetState.f54159i.mo47invoke();
                break;
            default:
                socialLoginBottomSheetState.f54160j.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
