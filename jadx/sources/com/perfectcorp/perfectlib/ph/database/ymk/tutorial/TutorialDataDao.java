package com.perfectcorp.perfectlib.ph.database.ymk.tutorial;

import android.content.ContentValues;
import android.database.Cursor;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.GetTutorialByGuidResponse$Payload;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.GetTutorialByGuidResponse$TutorialData;

/* JADX INFO: loaded from: classes3.dex */
public final class TutorialDataDao extends BaseDao<GetTutorialByGuidResponse$TutorialData> {
    public static final TutorialDataDao d = new TutorialDataDao("TutorialInfoDao", "TutorialInfo", Contract.TutorialInfo.f40255b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "guid");
        String strG2 = BaseDao.g(cursor, "type");
        String strG3 = BaseDao.g(cursor, ConfigurationName.PING_PAYLOAD);
        String strG4 = BaseDao.g(cursor, "expiredDate");
        long j2 = cursor.getLong(cursor.getColumnIndex("lastModified"));
        boolean z = cursor.getInt(cursor.getColumnIndex("isDownloaded")) != 0;
        GetTutorialByGuidResponse$TutorialData.Builder builder = new GetTutorialByGuidResponse$TutorialData.Builder();
        builder.f41512a = strG;
        builder.f41513b = strG2;
        builder.f41514c = (GetTutorialByGuidResponse$Payload) GsonHelper.f39260a.i(strG3, GetTutorialByGuidResponse$Payload.class);
        builder.d = strG4;
        builder.f41515e = j2;
        builder.f41516f = z;
        return new GetTutorialByGuidResponse$TutorialData(builder);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final /* synthetic */ ContentValues n(Object obj) {
        GetTutorialByGuidResponse$TutorialData getTutorialByGuidResponse$TutorialData = (GetTutorialByGuidResponse$TutorialData) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("guid", getTutorialByGuidResponse$TutorialData.guid);
        contentValues.put(ConfigurationName.PING_PAYLOAD, GsonHelper.f39260a.k(getTutorialByGuidResponse$TutorialData.payload));
        contentValues.put("type", getTutorialByGuidResponse$TutorialData.type);
        contentValues.put("expiredDate", getTutorialByGuidResponse$TutorialData.expiredDate);
        contentValues.put("lastModified", Long.valueOf(getTutorialByGuidResponse$TutorialData.lastModified));
        contentValues.put("isDownloaded", Boolean.valueOf(getTutorialByGuidResponse$TutorialData.isDownloaded));
        return contentValues;
    }
}
