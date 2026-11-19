package defpackage;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CacheWindowLogic f81126c;
    public final /* synthetic */ CacheWindowScope d;

    public /* synthetic */ xh(CacheWindowLogic cacheWindowLogic, CacheWindowScope cacheWindowScope, int i2) {
        this.f81125b = i2;
        this.f81126c = cacheWindowLogic;
        this.d = cacheWindowScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81125b;
        CacheWindowScope cacheWindowScope = this.d;
        CacheWindowLogic cacheWindowLogic = this.f81126c;
        int iIntValue = ((Integer) obj).intValue();
        int iIntValue2 = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                cacheWindowLogic.h(cacheWindowScope, iIntValue, iIntValue2);
                break;
            default:
                cacheWindowLogic.h(cacheWindowScope, iIntValue, iIntValue2);
                break;
        }
        return Unit.f71739a;
    }
}
