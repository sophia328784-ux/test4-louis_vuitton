package com.perfectcorp.perfectlib.makeupcam.camera;

import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.internal.NecklaceFilter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface LiveMakeupCtrlInterface {
    void a(int i2);

    void a(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6, ArrayList arrayList7, ArrayList arrayList8, ArrayList arrayList9, ArrayList arrayList10, ArrayList arrayList11, ArrayList arrayList12, ArrayList arrayList13, q qVar);

    int b();

    int c();

    void d();

    boolean e();

    boolean f();

    LiveSettingCtrl g();

    CLMakeupLiveFilter getFilter();

    void h(BackgroundPayload backgroundPayload);

    NecklaceFilter i();

    AccessoryCamWrapper j();

    int k();

    void l(LipShapeParameters lipShapeParameters, int i2);

    FunStickerTemplate m();

    void n(int i2, boolean z);

    BaseVenus o();
}
