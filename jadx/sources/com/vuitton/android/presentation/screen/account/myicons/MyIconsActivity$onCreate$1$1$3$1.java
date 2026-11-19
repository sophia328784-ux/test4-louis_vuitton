package com.vuitton.android.presentation.screen.account.myicons;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.lifecycle.LifecycleOwnerKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.onboarding.IconLauncherUpdateHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class MyIconsActivity$onCreate$1$1$3$1 extends FunctionReferenceImpl implements Function1<IconLauncherType, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        p((IconLauncherType) obj);
        return Unit.f71739a;
    }

    public final void p(IconLauncherType iconLauncherType) {
        iconLauncherType.getClass();
        MyIconsActivity myIconsActivity = (MyIconsActivity) this.receiver;
        MyIconsActivity.Companion companion = MyIconsActivity.q;
        Context applicationContext = myIconsActivity.getApplicationContext();
        applicationContext.getClass();
        String packageName = myIconsActivity.getPackageName();
        packageName.getClass();
        PackageManager packageManager = myIconsActivity.getPackageManager();
        packageManager.getClass();
        IconLauncherUpdateHelper.b(iconLauncherType, applicationContext, packageName, packageManager);
        BuildersKt.c(LifecycleOwnerKt.a(myIconsActivity), null, null, new MyIconsActivity$onUpdateLauncherIcon$1(myIconsActivity, null), 3);
    }
}
