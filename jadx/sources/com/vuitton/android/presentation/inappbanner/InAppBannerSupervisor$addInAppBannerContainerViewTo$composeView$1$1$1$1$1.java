package com.vuitton.android.presentation.inappbanner;

import com.vuitton.android.domain.usecase.inappbanner.SaveActiveInAppBannerUseCase;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        InAppBannerStateHolder inAppBannerStateHolder = (InAppBannerStateHolder) this.receiver;
        InAppBanner inAppBanner = (InAppBanner) inAppBannerStateHolder.f51566c.getValue();
        if (inAppBanner != null) {
            SaveActiveInAppBannerUseCase saveActiveInAppBannerUseCase = inAppBannerStateHolder.f51564a;
            String str = inAppBanner.f67754a;
            String str2 = inAppBanner.f67755b;
            Instant instant = inAppBanner.f67756c;
            Instant instant2 = inAppBanner.d;
            Function2 function2 = inAppBanner.f67758f;
            str.getClass();
            instant.getClass();
            instant2.getClass();
            function2.getClass();
            InAppBanner inAppBanner2 = new InAppBanner(str, str2, instant, instant2, true, function2);
            saveActiveInAppBannerUseCase.getClass();
            saveActiveInAppBannerUseCase.f50122a.b(inAppBanner2);
        }
        return Unit.f71739a;
    }
}
