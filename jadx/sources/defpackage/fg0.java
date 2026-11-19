package defpackage;

import androidx.navigation.NavDeepLink;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fg0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavDeepLink f69143c;

    public /* synthetic */ fg0(NavDeepLink navDeepLink, int i2) {
        this.f69142b = i2;
        this.f69143c = navDeepLink;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zContains;
        int i2 = this.f69142b;
        NavDeepLink navDeepLink = this.f69143c;
        String str = (String) obj;
        switch (i2) {
            case 0:
                str.getClass();
                zContains = navDeepLink.c().contains(str);
                break;
            default:
                str.getClass();
                zContains = navDeepLink.c().contains(str);
                break;
        }
        return Boolean.valueOf(!zContains);
    }
}
