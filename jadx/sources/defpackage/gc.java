package defpackage;

import androidx.navigation.NavDeepLink;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gc implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69367c;

    public /* synthetic */ gc(String str, int i2) {
        this.f69366b = i2;
        this.f69367c = str;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69366b;
        String str = this.f69367c;
        switch (i2) {
            case 0:
                return Boolean.valueOf(StringsKt.k(str, "lv-app-configuration", false));
            case 1:
                return Boolean.valueOf(StringsKt.k(str, "/api/publication/freecaster/", false));
            default:
                NavDeepLink.Builder builder = new NavDeepLink.Builder();
                builder.f18140a = str;
                return new NavDeepLink(builder.f18140a, builder.f18141b, builder.f18142c);
        }
    }
}
