package com.vuitton.android.presentation.screen.connectivity.home;

import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.ConnectedObjectUiModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.WatchUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.ConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConnectivityViewModelKt {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    public static final ConnectedObjectUiModel a(ConnectedObject connectedObject) {
        String str;
        int i2;
        if (connectedObject instanceof LightUpProduct) {
            LightUpProduct lightUpProduct = (LightUpProduct) connectedObject;
            return new LightUpProductUiModel(lightUpProduct.f67294a, lightUpProduct.f67295b, lightUpProduct.f67296c, lightUpProduct.d, lightUpProduct.f67297e, lightUpProduct.f67298f, lightUpProduct.g, lightUpProduct.f67299h);
        }
        if (!(connectedObject instanceof Watch)) {
            v40.g();
            return null;
        }
        Watch watch = (Watch) connectedObject;
        String str2 = watch.f67300a;
        String str3 = watch.f67301b;
        String str4 = watch.f67302c;
        String str5 = watch.d;
        String str6 = watch.f67303e;
        String str7 = watch.f67304f;
        if (str7 != null) {
            SkuIdUiModel.f61763c.getClass();
            str = str7;
        } else {
            str = null;
        }
        String str8 = str7 != null ? str7 : null;
        if (str8 != null) {
            switch (str8) {
                case "QA000Z":
                    i2 = R.drawable.watch_qa000z;
                    break;
                case "QA002Z":
                    i2 = R.drawable.watch_qa002z;
                    break;
                case "QA003Z":
                    i2 = R.drawable.watch_qa003z;
                    break;
                case "QA004Z":
                    i2 = R.drawable.watch_qa004z;
                    break;
                case "QA080Z":
                    i2 = R.drawable.watch_qa080z;
                    break;
                default:
                    i2 = R.drawable.vertical_watch_image;
                    break;
            }
        } else {
            i2 = R.drawable.vertical_watch_image;
        }
        return new WatchUiModel(str2, str3, str4, str5, str6, str, i2, watch.g, watch.f67305h, null);
    }
}
