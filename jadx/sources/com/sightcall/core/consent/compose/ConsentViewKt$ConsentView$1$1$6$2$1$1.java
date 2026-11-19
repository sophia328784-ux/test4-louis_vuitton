package com.sightcall.core.consent.compose;

import android.content.Context;
import androidx.compose.ui.text.AnnotatedString;
import com.sightcall.core.consent.ConsentViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ConsentViewKt$ConsentView$1$1$6$2$1$1 implements Function1<Integer, Unit> {
    final /* synthetic */ AnnotatedString $consentBody;
    final /* synthetic */ Context $context;
    final /* synthetic */ ConsentViewModel $viewModel;

    public ConsentViewKt$ConsentView$1$1$6$2$1$1(AnnotatedString annotatedString, ConsentViewModel consentViewModel, Context context) {
        this.$consentBody = annotatedString;
        this.$viewModel = consentViewModel;
        this.$context = context;
    }

    public final void invoke(int i2) {
        if (((AnnotatedString.Range) CollectionsKt.firstOrNull(this.$consentBody.c(i2, i2, "URL"))) != null) {
            this.$viewModel.onPrivacyLinkClick(this.$context);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Number) obj).intValue());
        return Unit.f71739a;
    }
}
