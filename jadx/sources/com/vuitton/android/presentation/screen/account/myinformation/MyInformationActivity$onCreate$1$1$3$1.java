package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.presentation.utils.SecurityUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class MyInformationActivity$onCreate$1$1$3$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        MyInformationActivity myInformationActivity = (MyInformationActivity) this.receiver;
        MyInformationActivity.Companion companion = MyInformationActivity.r;
        myInformationActivity.getClass();
        if (zBooleanValue) {
            SecurityUtils.b(myInformationActivity);
        } else {
            SecurityUtils.a(myInformationActivity);
        }
        return Unit.f71739a;
    }
}
