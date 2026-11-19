package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourSettingHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v1 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41890c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41891e;

    public /* synthetic */ v1(Object obj, Object obj2, Object obj3, int i2) {
        this.f41889b = i2;
        this.f41890c = obj;
        this.d = obj2;
        this.f41891e = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0071 A[PHI: r8
      0x0071: PHI (r8v12 com.perfectcorp.perfectlib.ymk.model.BeautyMode) = 
      (r8v7 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
      (r8v9 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
      (r8v15 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
      (r8v16 com.perfectcorp.perfectlib.ymk.model.BeautyMode)
     binds: [B:37:0x00b2, B:32:0x00a3, B:24:0x0085, B:19:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x007b  */
    /* JADX WARN: Code duplicated, block: B:23:0x007f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0088  */
    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00bb A[SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        BeautyMode beautyMode;
        BeautyMode beautyMode2;
        BeautyMode beautyMode3;
        int i2 = this.f41889b;
        Object obj = this.f41891e;
        Object obj2 = this.d;
        Object obj3 = this.f41890c;
        switch (i2) {
            case 0:
                Set set = (Set) obj3;
                final LiveSettingCtrl liveSettingCtrl = (LiveSettingCtrl) obj2;
                LiveMakeupCtrlInterface liveMakeupCtrlInterface = (LiveMakeupCtrlInterface) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                LinkedList linkedList = new LinkedList();
                for (PerfectEffect perfectEffect : PerfectEffect.values()) {
                    if (set.contains(perfectEffect.beautyMode) && !ApplyEffectUtility.f39471a.contains(perfectEffect.beautyMode)) {
                        if (perfectEffect.beautyMode != BeautyMode.EYE_WEAR) {
                            beautyMode = perfectEffect.beautyMode;
                            beautyMode2 = BeautyMode.FACE_ART;
                            if (beautyMode == beautyMode2) {
                                if (liveSettingCtrl.o(beautyMode2)) {
                                    builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode2));
                                }
                                beautyMode3 = BeautyMode.FACE_ART_LAYER_2;
                                if (liveSettingCtrl.o(beautyMode3)) {
                                    builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                }
                            } else if (liveSettingCtrl.p(beautyMode, perfectEffect.itemSubType)) {
                                beautyMode3 = perfectEffect.beautyMode;
                                if (beautyMode3 == BeautyMode.FACE_CONTOUR) {
                                    linkedList.addAll(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                } else {
                                    builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                }
                            }
                        } else {
                            if (perfectEffect == PerfectEffect.EYEWEAR) {
                                beautyMode3 = BeautyMode.CUBE_EYEWEAR;
                                if (!liveSettingCtrl.o(beautyMode3)) {
                                    if (perfectEffect == PerfectEffect.EYEWEAR_3D) {
                                        beautyMode3 = BeautyMode.REAL_3D_EYEWEAR;
                                        if (liveSettingCtrl.o(beautyMode3)) {
                                            beautyMode = perfectEffect.beautyMode;
                                            beautyMode2 = BeautyMode.FACE_ART;
                                            if (beautyMode == beautyMode2) {
                                                if (liveSettingCtrl.o(beautyMode2)) {
                                                    builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode2));
                                                }
                                                beautyMode3 = BeautyMode.FACE_ART_LAYER_2;
                                                if (liveSettingCtrl.o(beautyMode3)) {
                                                }
                                            } else if (liveSettingCtrl.p(beautyMode, perfectEffect.itemSubType)) {
                                                beautyMode3 = perfectEffect.beautyMode;
                                                if (beautyMode3 == BeautyMode.FACE_CONTOUR) {
                                                    linkedList.addAll(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                                }
                                            }
                                        }
                                    } else {
                                        beautyMode = perfectEffect.beautyMode;
                                        beautyMode2 = BeautyMode.FACE_ART;
                                        if (beautyMode == beautyMode2) {
                                            if (liveSettingCtrl.o(beautyMode2)) {
                                                builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode2));
                                            }
                                            beautyMode3 = BeautyMode.FACE_ART_LAYER_2;
                                            if (liveSettingCtrl.o(beautyMode3)) {
                                            }
                                        } else if (liveSettingCtrl.p(beautyMode, perfectEffect.itemSubType)) {
                                            beautyMode3 = perfectEffect.beautyMode;
                                            if (beautyMode3 == BeautyMode.FACE_CONTOUR) {
                                                linkedList.addAll(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                            }
                                        }
                                    }
                                }
                            } else if (perfectEffect == PerfectEffect.EYEWEAR_3D) {
                                beautyMode3 = BeautyMode.REAL_3D_EYEWEAR;
                                if (liveSettingCtrl.o(beautyMode3)) {
                                    beautyMode = perfectEffect.beautyMode;
                                    beautyMode2 = BeautyMode.FACE_ART;
                                    if (beautyMode == beautyMode2) {
                                        if (liveSettingCtrl.o(beautyMode2)) {
                                            builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode2));
                                        }
                                        beautyMode3 = BeautyMode.FACE_ART_LAYER_2;
                                        if (liveSettingCtrl.o(beautyMode3)) {
                                        }
                                    } else if (liveSettingCtrl.p(beautyMode, perfectEffect.itemSubType)) {
                                        beautyMode3 = perfectEffect.beautyMode;
                                        if (beautyMode3 == BeautyMode.FACE_CONTOUR) {
                                            linkedList.addAll(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                        }
                                    }
                                }
                            } else {
                                beautyMode = perfectEffect.beautyMode;
                                beautyMode2 = BeautyMode.FACE_ART;
                                if (beautyMode == beautyMode2) {
                                    if (liveSettingCtrl.o(beautyMode2)) {
                                        builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode2));
                                    }
                                    beautyMode3 = BeautyMode.FACE_ART_LAYER_2;
                                    if (liveSettingCtrl.o(beautyMode3)) {
                                    }
                                } else if (liveSettingCtrl.p(beautyMode, perfectEffect.itemSubType)) {
                                    beautyMode3 = perfectEffect.beautyMode;
                                    if (beautyMode3 == BeautyMode.FACE_CONTOUR) {
                                        linkedList.addAll(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                                    }
                                }
                            }
                            builder.g(MakeupCamInternal.v(liveSettingCtrl, perfectEffect, beautyMode3));
                        }
                    }
                }
                if (!linkedList.isEmpty()) {
                    Collections.sort(linkedList, new Comparator() { // from class: com.perfectcorp.perfectlib.z1
                        @Override // java.util.Comparator
                        public final int compare(Object obj4, Object obj5) {
                            ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                            ItemSubType itemSubType = ((EffectId) obj4).f39555a.itemSubType;
                            LiveSettingCtrl liveSettingCtrl2 = liveSettingCtrl;
                            return FaceContourSettingHelper.d(liveSettingCtrl2, itemSubType) - FaceContourSettingHelper.d(liveSettingCtrl2, ((EffectId) obj5).f39555a.itemSubType);
                        }
                    });
                    builder.g(linkedList);
                }
                int iK = liveMakeupCtrlInterface.k();
                if (iK > 0) {
                    builder.f(new EffectId(BeautyMode.SKIN_SMOOTHER, Collections.singletonList(Integer.valueOf(iK))));
                }
                BeautyMode beautyMode4 = BeautyMode.TEETH_WHITENER;
                Integer num = (Integer) liveSettingCtrl.l.get(beautyMode4);
                if (num != null) {
                    builder.f(new EffectId(beautyMode4, Collections.singletonList(num)));
                }
                FunStickerTemplate funStickerTemplateM = liveMakeupCtrlInterface.m();
                if (funStickerTemplateM.p()) {
                    EffectId.Builder builder2 = new EffectId.Builder(PerfectEffect.FUN_STICKER);
                    builder2.g = EffectId.c(funStickerTemplateM.l());
                    builder.f(builder2.a());
                }
                return builder.i();
            case 1:
                ((MakeupCamInternal) obj3).g.d((Runnable) obj2);
                return Singles.a((ListenableFuture) obj, CallingThread.ANY);
            default:
                ((PhotoMakeupInternal) obj3).f39788i.runOnGLThread((Runnable) obj2);
                return Singles.a((ListenableFuture) obj, CallingThread.ANY);
        }
    }
}
