package defpackage;

import android.util.Pair;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.makeupcam.camera.BlushPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EyeShadowLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.c;
import com.perfectcorp.perfectlib.ph.template.idc.d;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xx0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81223b;

    public /* synthetic */ xx0(int i2) {
        this.f81223b = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f81223b) {
            case 0:
                b.a aVar = (b.a) obj;
                Objects.requireNonNull(aVar);
                return aVar.skuGuid;
            case 1:
                return (String) ((Map.Entry) obj).getValue();
            case 2:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b.a aVar2 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b.a) obj;
                Objects.requireNonNull(aVar2);
                return aVar2.a();
            case 3:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b.a aVar3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b.a) obj;
                Objects.requireNonNull(aVar3);
                return aVar3.a();
            case 4:
                h hVar = (h) obj;
                Objects.requireNonNull(hVar);
                return hVar.skuGUID;
            case 5:
                f.a aVar4 = (f.a) obj;
                Objects.requireNonNull(aVar4);
                return aVar4.a();
            case 6:
                f.a aVar5 = (f.a) obj;
                Objects.requireNonNull(aVar5);
                return aVar5.a();
            case 7:
                f.a aVar6 = (f.a) obj;
                Objects.requireNonNull(aVar6);
                return aVar6.a();
            case 8:
                YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) obj;
                SkuInfo skuInfo = SkuInfo.NULL;
                Objects.requireNonNull(makeupColor);
                return Integer.valueOf(makeupColor.d);
            case 9:
                YMKPrimitiveData.MakeupColor makeupColor2 = (YMKPrimitiveData.MakeupColor) obj;
                SkuInfo skuInfo2 = SkuInfo.NULL;
                Objects.requireNonNull(makeupColor2);
                return Integer.valueOf(makeupColor2.d);
            case 10:
                YMKPrimitiveData.MakeupColor makeupColor3 = (YMKPrimitiveData.MakeupColor) obj;
                Objects.requireNonNull(makeupColor3);
                return Integer.valueOf(makeupColor3.d);
            case 11:
                YMKPrimitiveData.MakeupColor makeupColor4 = (YMKPrimitiveData.MakeupColor) obj;
                Objects.requireNonNull(makeupColor4);
                return Integer.valueOf(makeupColor4.d);
            case 12:
                com.perfectcorp.perfectlib.ph.database.ymk.generictag.f fVar = (com.perfectcorp.perfectlib.ph.database.ymk.generictag.f) obj;
                Objects.requireNonNull(fVar);
                return Long.valueOf(fVar.f41190b);
            case 13:
                c cVar = (c) obj;
                float f2 = TemplateUtils.f41580a;
                Objects.requireNonNull(cVar);
                return cVar.f41610a;
            case 14:
                a aVar7 = (a) obj;
                float f3 = TemplateUtils.f41580a;
                Objects.requireNonNull(aVar7);
                return aVar7.f41349a;
            case 15:
                YMKPrimitiveData.MakeupColor makeupColor5 = (YMKPrimitiveData.MakeupColor) obj;
                Objects.requireNonNull(makeupColor5);
                return Integer.valueOf(makeupColor5.d);
            case 16:
                YMKPrimitiveData.MakeupColor makeupColor6 = (YMKPrimitiveData.MakeupColor) obj;
                Objects.requireNonNull(makeupColor6);
                return Integer.valueOf(makeupColor6.d);
            case 17:
                LipLinerPayload.Setting setting = (LipLinerPayload.Setting) obj;
                HashMap map = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
                Objects.requireNonNull(setting);
                return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.n.C0162a(setting.f40689a, setting.f40690b, setting.f40691c, setting.d, setting.f40692e, Collections.unmodifiableList(setting.f40693f));
            case 18:
                BlushPayload.Setting setting2 = (BlushPayload.Setting) obj;
                HashMap map2 = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
                Objects.requireNonNull(setting2);
                return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c.C0160a(setting2.f40588a, setting2.f40589b, setting2.f40590c, setting2.d, setting2.f40591e, Collections.unmodifiableList(setting2.f40592f));
            case 19:
                EyeShadowLinerPayload.Setting setting3 = (EyeShadowLinerPayload.Setting) obj;
                HashMap map3 = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.f41784a;
                Objects.requireNonNull(setting3);
                return new com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g.C0161a(setting3.f40615a, setting3.f40616b, setting3.f40617c, setting3.d, setting3.f40618e, Collections.unmodifiableList(setting3.f40619f));
            case 20:
                String str = (String) obj;
                com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149b = com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j;
                Objects.requireNonNull(str);
                return Integer.valueOf(Integer.parseInt(str.trim()));
            case 21:
                String str2 = (String) obj;
                com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149b2 = com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j;
                Objects.requireNonNull(str2);
                return Integer.valueOf(Integer.parseInt(str2.trim()));
            case 22:
                h hVar2 = (h) obj;
                Objects.requireNonNull(hVar2);
                return hVar2.skuGUID;
            case 23:
                h hVar3 = (h) obj;
                Objects.requireNonNull(hVar3);
                return hVar3.skuGUID;
            case 24:
                EarringsPayload.Pattern pattern = (EarringsPayload.Pattern) obj;
                Objects.requireNonNull(pattern);
                return pattern.f40609c;
            case 25:
                EarringsPayload.Pattern pattern2 = (EarringsPayload.Pattern) obj;
                Objects.requireNonNull(pattern2);
                return pattern2.f40607a;
            case 26:
                EarringsPayload.Pattern pattern3 = (EarringsPayload.Pattern) obj;
                Objects.requireNonNull(pattern3);
                return pattern3.f40608b;
            case 27:
                return ((com.perfectcorp.perfectlib.ph.template.b.C0181b) obj).a();
            case 28:
                Pair pair = (Pair) obj;
                Objects.requireNonNull(pair);
                d dVar = (d) pair.first;
                Objects.requireNonNull(dVar);
                return dVar.attr_guid;
            default:
                Pair pair2 = (Pair) obj;
                Objects.requireNonNull(pair2);
                com.perfectcorp.perfectlib.ph.template.idc.f fVar2 = (com.perfectcorp.perfectlib.ph.template.idc.f) pair2.first;
                Objects.requireNonNull(fVar2);
                return fVar2.attr_guid;
        }
    }
}
