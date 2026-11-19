package com.vuitton.android.presentation.screen.options;

import android.content.ClipData;
import android.content.ClipboardManager;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfo;
import defpackage.aa0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OptionsActivity$onCreate$1$1$4$1 extends FunctionReferenceImpl implements Function1<AppInfo, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AppInfo appInfo = (AppInfo) obj;
        appInfo.getClass();
        OptionsActivity optionsActivity = (OptionsActivity) this.receiver;
        OptionsActivity.Companion companion = OptionsActivity.u;
        Object systemService = optionsActivity.getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(ClipData.newPlainText(appInfo.f59750a, appInfo.f59751b));
            optionsActivity.runOnUiThread(new aa0(optionsActivity, appInfo, 13));
        }
        return Unit.f71739a;
    }
}
