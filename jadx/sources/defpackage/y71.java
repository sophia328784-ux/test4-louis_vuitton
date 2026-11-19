package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g;
import com.perfectcorp.perfectlib.ph.template.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y71 implements ResponseConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81320a;

    public /* synthetic */ y71(int i2) {
        this.f81320a = i2;
    }

    @Override // com.perfectcorp.common.network.ResponseConverter
    public final Object a(String str) {
        switch (this.f81320a) {
            case 0:
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return new InitResponse(str);
            case 1:
                return (b.C0181b) GsonHelper.f39260a.i(str, b.C0181b.class);
            case 2:
                return new a(str);
            case 3:
                return new g(str);
            default:
                return new g(str);
        }
    }
}
