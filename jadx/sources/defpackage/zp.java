package defpackage;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.h;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zp implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81686b;

    public /* synthetic */ zp(int i2) {
        this.f81686b = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        boolean zIsEmpty;
        switch (this.f81686b) {
            case 0:
                SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) obj;
                Objects.requireNonNull(downloadComponent);
                return downloadComponent.c() == SkuDataForProtocol.DownloadType.f39921a || downloadComponent.c() == SkuDataForProtocol.DownloadType.f39923c;
            case 1:
                d dVar = h.f41569a;
                zIsEmpty = TextUtils.isEmpty((String) obj);
                break;
            default:
                d dVar2 = h.f41569a;
                zIsEmpty = TextUtils.isEmpty((String) obj);
                break;
        }
        return !zIsEmpty;
    }
}
