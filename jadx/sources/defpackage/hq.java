package defpackage;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KType;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hq implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f69766c;

    public /* synthetic */ hq(int i2, ArrayList arrayList) {
        this.f69765b = i2;
        this.f69766c = arrayList;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69765b;
        ArrayList arrayList = this.f69766c;
        switch (i2) {
            case 0:
                return Integer.valueOf(arrayList.size());
            case 1:
                return Integer.valueOf(arrayList.size());
            case 2:
                return Integer.valueOf(arrayList.size());
            default:
                return ((KType) arrayList.get(0)).a();
        }
    }
}
