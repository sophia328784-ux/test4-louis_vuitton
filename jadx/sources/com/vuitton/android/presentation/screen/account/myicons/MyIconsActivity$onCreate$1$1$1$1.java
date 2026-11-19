package com.vuitton.android.presentation.screen.account.myicons;

import android.content.pm.PackageManager;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.onboarding.IconLauncherUpdateHelper;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class MyIconsActivity$onCreate$1$1$1$1 extends FunctionReferenceImpl implements Function0<IconLauncherType> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        MyIconsActivity myIconsActivity = (MyIconsActivity) this.receiver;
        MyIconsActivity.Companion companion = MyIconsActivity.q;
        String packageName = myIconsActivity.getPackageName();
        packageName.getClass();
        PackageManager packageManager = myIconsActivity.getPackageManager();
        packageManager.getClass();
        return IconLauncherUpdateHelper.a(myIconsActivity, packageName, packageManager);
    }
}
