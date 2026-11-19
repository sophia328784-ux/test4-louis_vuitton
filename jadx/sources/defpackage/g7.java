package defpackage;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.e;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.i;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a;
import com.perfectcorp.perfectlib.ph.template.c;
import com.perfectcorp.perfectlib.ph.template.m;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import java.io.File;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g7 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69314b;

    public /* synthetic */ g7(int i2) {
        this.f69314b = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f69314b) {
            case 0:
                return ((YMKPrimitiveData.Effect) obj).f40758b;
            case 1:
                YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) obj;
                return makeupColor != null ? makeupColor.c() : "";
            case 2:
                String str = (String) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(str);
                return Integer.valueOf(Integer.parseInt(str.trim()));
            case 3:
                i.a aVar = (i.a) obj;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(aVar);
                return aVar.paletteGuid;
            case 4:
                YMKPrimitiveData.MakeupColor makeupColor2 = (YMKPrimitiveData.MakeupColor) obj;
                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(makeupColor2);
                return Integer.valueOf(makeupColor2.f40791e);
            case 5:
                i.a aVar2 = (i.a) obj;
                ImmutableSet immutableSet4 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(aVar2);
                return Integer.valueOf(aVar2.shineIntensity);
            case 6:
                String str2 = (String) obj;
                ImmutableSet immutableSet5 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(str2);
                return Integer.valueOf(Integer.parseInt(str2));
            case 7:
                e eVar = (e) obj;
                ImmutableSet immutableSet6 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(eVar);
                return eVar.f41292a;
            case 8:
                e eVar2 = (e) obj;
                ImmutableSet immutableSet7 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(eVar2);
                return eVar2.f41292a;
            case 9:
                String str3 = (String) obj;
                ImmutableSet immutableSet8 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(str3);
                return Integer.valueOf(TemplateConsts.b(-1, str3.trim()));
            case 10:
                a.e eVar3 = (a.e) obj;
                ImmutableSet immutableSet9 = ApplyEffectUtility.f39471a;
                Objects.requireNonNull(eVar3, "The background data should not be null");
                h.a aVar3 = new h.a(eVar3.guid);
                aVar3.f41310a = SkuBeautyMode$FeatureType.BACKGROUND.toString();
                aVar3.f41312c = eVar3.lastModified;
                com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a c0135a = new com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a();
                c0135a.f41155a = eVar3.guid;
                c0135a.f41156b = GsonHelper.f39260a.k(eVar3.payload);
                aVar3.s = new com.perfectcorp.perfectlib.ph.database.ymk.background.a(c0135a);
                aVar3.f41314f = h.e.OK.f41327e;
                return new h(aVar3);
            case 11:
                return d21.j((String) obj, "=?");
            case 12:
                m mVar = (m) obj;
                Objects.requireNonNull(mVar);
                return mVar.f41671a;
            case 13:
                c cVar = (c) obj;
                Objects.requireNonNull(cVar);
                return cVar.f41610a;
            case 14:
                com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a aVar4 = (com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a) obj;
                Objects.requireNonNull(aVar4);
                return aVar4.f41349a;
            case 15:
                h hVar = (h) obj;
                Objects.requireNonNull(hVar);
                return hVar.skuGUID;
            case 16:
                SkuDataForProtocol.DownloadComponent downloadComponent = (SkuDataForProtocol.DownloadComponent) obj;
                Objects.requireNonNull(downloadComponent);
                return downloadComponent.a();
            case 17:
                DownloadReport.CompleteReport completeReport = (DownloadReport.CompleteReport) obj;
                AtomicInteger atomicInteger = DownloadImageHelper.f40320a;
                Objects.requireNonNull(completeReport);
                return (File) completeReport.f39309b;
            case 18:
                return new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) obj);
            case 19:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a c0167a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a) obj;
                Objects.requireNonNull(c0167a);
                return c0167a.guid;
            case 20:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a c0167a2 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a) obj;
                Objects.requireNonNull(c0167a2);
                return c0167a2.guid;
            case 21:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a c0167a3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a.C0167a) obj;
                Objects.requireNonNull(c0167a3);
                return c0167a3.guid;
            case 22:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                Objects.requireNonNull(c0168a);
                return c0168a.guid;
            case 23:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a2 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                Objects.requireNonNull(c0168a2);
                return c0168a2.guid;
            case 24:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                Objects.requireNonNull(c0168a3);
                return c0168a3.guid;
            case 25:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a c0169a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a) obj;
                Objects.requireNonNull(c0169a);
                return c0169a.guid;
            case 26:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a c0169a2 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a) obj;
                Objects.requireNonNull(c0169a2);
                return c0169a2.guid;
            case 27:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a c0169a3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a) obj;
                Objects.requireNonNull(c0169a3);
                return c0169a3.guid;
            case 28:
                com.perfectcorp.perfectlib.ph.database.ymk.skuset.a aVar5 = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.a) obj;
                Objects.requireNonNull(aVar5);
                return aVar5.f41328a;
            default:
                b.a aVar6 = (b.a) obj;
                Objects.requireNonNull(aVar6);
                return aVar6.skuGuid;
        }
    }
}
