package defpackage;

import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class bx0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f20986b;

    public /* synthetic */ bx0(h hVar, int i2) {
        this.f20985a = i2;
        this.f20986b = hVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        StringBuilder sb;
        String str;
        switch (this.f20985a) {
            case 0:
                sb = new StringBuilder("[downloadSku] end id=");
                str = this.f20986b.skuGUID;
                break;
            default:
                sb = new StringBuilder("[downloadSkuByProtocolMethod] end id=");
                str = this.f20986b.skuGUID;
                break;
        }
        a.A(sb, str, 3, "SkuCacheStrategyHelper");
    }
}
