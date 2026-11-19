package defpackage;

import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b8 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f20782c;

    public /* synthetic */ b8(b bVar, int i2) {
        this.f20781b = i2;
        this.f20782c = bVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f20781b;
        b bVar = this.f20782c;
        switch (i2) {
            case 0:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return TemplateUtils.B(bVar.d);
            case 1:
                FileUtils.c((File) obj);
                LookHandler.d(bVar);
                return bVar;
            default:
                LookHandler.d(bVar);
                return Optional.e(bVar);
        }
    }
}
