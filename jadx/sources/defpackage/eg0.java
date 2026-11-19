package defpackage;

import android.os.Bundle;
import androidx.navigation.NavDeepLink;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eg0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bundle f68855c;

    public /* synthetic */ eg0(int i2, Bundle bundle) {
        this.f68854b = i2;
        this.f68855c = bundle;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zContainsKey;
        int i2 = this.f68854b;
        Bundle bundle = this.f68855c;
        String str = (String) obj;
        switch (i2) {
            case 0:
                Regex regex = NavDeepLink.q;
                str.getClass();
                zContainsKey = bundle.containsKey(str);
                break;
            default:
                str.getClass();
                zContainsKey = bundle.containsKey(str);
                break;
        }
        return Boolean.valueOf(!zContainsKey);
    }
}
