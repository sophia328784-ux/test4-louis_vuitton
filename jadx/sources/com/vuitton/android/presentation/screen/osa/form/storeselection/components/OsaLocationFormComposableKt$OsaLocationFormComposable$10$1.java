package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaLocationFormComposableKt$OsaLocationFormComposable$10$1 extends FunctionReferenceImpl implements Function1<LocalDate, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LocalDate localDate = (LocalDate) obj;
        localDate.getClass();
        ((OsaLocationFormViewModel) this.receiver).q1(localDate);
        return Unit.f71739a;
    }
}
