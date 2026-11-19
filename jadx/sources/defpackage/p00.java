package defpackage;

import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p00 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78718c;

    public /* synthetic */ p00(Object obj, int i2) {
        this.f78717b = i2;
        this.f78718c = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        int i2 = this.f78717b;
        Object obj2 = this.f78718c;
        switch (i2) {
            case 0:
                return FunStickerTemplate.d((String) obj, (Enum) obj2);
            default:
                return (YMKPrimitiveData.MakeupColor) ((List) obj2).get(((Integer) obj).intValue());
        }
    }
}
