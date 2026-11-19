package com.vuitton.android.presentation.chat.consent;

import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ChatConsentDelegate {
    void B(ChatProductModel chatProductModel, int i2, int i3);

    void C(ScreenType screenType);

    void I(ChatProductModel chatProductModel, int i2);

    void Q0();

    Object S0(Continuation continuation);

    Flow U0();

    void r(ChatProductModel chatProductModel);

    void s();

    void v(String str, String str2);

    void x(ChatProductModel chatProductModel, int i2);

    void z();
}
