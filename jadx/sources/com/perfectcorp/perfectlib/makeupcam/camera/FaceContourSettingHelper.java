package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FaceContourSettingHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BeautyMode f40647a = BeautyMode.FACE_CONTOUR;

    public static FaceContourPayload a(LiveSettingCtrl liveSettingCtrl) {
        Object obj = liveSettingCtrl.l.get(f40647a);
        if (obj instanceof FaceContourPayload) {
            return (FaceContourPayload) obj;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List b(FaceContourPayload.Setting setting) {
        return setting == null ? Collections.EMPTY_LIST : Collections.singletonList((YMKPrimitiveData.MakeupColor) setting.g.get(setting.f40646j));
    }

    public static FaceContourPayload.Setting c(LiveSettingCtrl liveSettingCtrl) {
        FaceContourPayload faceContourPayloadA = a(liveSettingCtrl);
        if (faceContourPayloadA == null) {
            return null;
        }
        return faceContourPayloadA.f40632a;
    }

    public static int d(LiveSettingCtrl liveSettingCtrl, ItemSubType itemSubType) {
        FaceContourPayload.Setting settingC = c(liveSettingCtrl);
        if (settingC != null && settingC.f40644h == itemSubType) {
            return settingC.f40639a;
        }
        FaceContourPayload faceContourPayloadA = a(liveSettingCtrl);
        FaceContourPayload.Setting setting = faceContourPayloadA == null ? null : faceContourPayloadA.f40633b;
        if (setting == null || setting.f40644h != itemSubType) {
            return -1;
        }
        return setting.f40639a;
    }
}
