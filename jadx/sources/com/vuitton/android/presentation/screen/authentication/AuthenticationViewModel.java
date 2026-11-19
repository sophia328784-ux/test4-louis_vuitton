package com.vuitton.android.presentation.screen.authentication;

import com.vuitton.android.presentation.screen.authentication.base.OauthCredentials;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AuthenticationViewModel {
    void B5(AuthToken.Atg atg);

    void B9();

    OauthCredentials D1();

    void I0(AuthenticationTrackingUiModel authenticationTrackingUiModel);

    void J8();

    boolean L0();

    Flow M7();

    StateFlow N5();

    boolean R();

    void R4();

    void V9(String str);

    void X2(String str);

    void a7();

    StateFlow ab();

    Flow e6();

    void f7(String str);

    Flow h();

    boolean j0();

    Flow k();

    void k6(String str);

    Flow l2();

    Flow m7();

    void q();

    void q6();

    Flow r9();

    void x4(String str);
}
