package com.vuitton.android.presentation.screen.onboarding;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/IconLauncherUpdateHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class IconLauncherUpdateHelper {
    public static IconLauncherType a(Context context, String str, PackageManager packageManager) {
        context.getClass();
        str.getClass();
        packageManager.getClass();
        String strConcat = StringsKt.F(str, ".preprod").concat(".presentation.screen.splash");
        for (IconLauncherType iconLauncherType : IconLauncherType.c()) {
            if (packageManager.getComponentEnabledSetting(new ComponentName(context, tr.h(strConcat, FileUtils.HIDDEN_PREFIX, iconLauncherType.getComponentName()))) == 1) {
                return iconLauncherType;
            }
        }
        return IconLauncherType.CLASSIC;
    }

    public static void b(IconLauncherType iconLauncherType, Context context, String str, PackageManager packageManager) {
        iconLauncherType.getClass();
        context.getClass();
        str.getClass();
        packageManager.getClass();
        String strConcat = StringsKt.F(str, ".preprod").concat(".presentation.screen.splash");
        packageManager.setComponentEnabledSetting(new ComponentName(context, tr.h(strConcat, FileUtils.HIDDEN_PREFIX, iconLauncherType.getComponentName())), 1, 1);
        EnumEntries enumEntriesC = IconLauncherType.c();
        ArrayList arrayList = new ArrayList();
        for (Object obj : enumEntriesC) {
            if (!Intrinsics.c(((IconLauncherType) obj).getComponentName(), iconLauncherType.getComponentName())) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            packageManager.setComponentEnabledSetting(new ComponentName(context, tr.h(strConcat, FileUtils.HIDDEN_PREFIX, ((IconLauncherType) it.next()).getComponentName())), 2, 1);
        }
    }
}
