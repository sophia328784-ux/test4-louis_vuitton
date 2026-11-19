package defpackage;

import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f7 implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69059c;

    public /* synthetic */ f7(Object obj, int i2) {
        this.f69058b = i2;
        this.f69059c = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        int i2 = this.f69058b;
        Object obj2 = this.f69059c;
        switch (i2) {
            case 0:
                return ((ApplyEffectCtrl) obj2).e((BeautyMode) obj);
            case 1:
                Enum r2 = (Enum) obj2;
                Enum r3 = (Enum) obj;
                FunStickerTemplate funStickerTemplate = FunStickerTemplate.f40650e;
                return r3 != r2;
            default:
                return !((ImmutableSet) obj2).contains((Long) obj);
        }
    }
}
