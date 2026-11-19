package com.vuitton.android.data.connectivity.lightup;

import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.database.converter.EnumConverter;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.k60;
import defpackage.l00;
import defpackage.lt;
import defpackage.w90;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;", "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpProductDao_Impl implements LightUpProductDao {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f43564e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f43565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnonymousClass1 f43566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EnumConverter f43567c;
    public final AnonymousClass3 d;

    /* JADX INFO: renamed from: com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$2", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass2 extends EntityDeleteOrUpdateAdapter<LightUpProductEntity> {
    }

    /* JADX INFO: renamed from: com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass3 extends EntityDeleteOrUpdateAdapter<LightUpProductEntity> {
        public AnonymousClass3() {
        }

        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            LightUpProductEntity lightUpProductEntity = (LightUpProductEntity) obj;
            sQLiteStatement.getClass();
            String str = lightUpProductEntity.f43570a;
            sQLiteStatement.A(1, str);
            EnumConverter enumConverter = LightUpProductDao_Impl.this.f43567c;
            LVLightUpDeviceType lVLightUpDeviceType = lightUpProductEntity.f43571b;
            enumConverter.getClass();
            lVLightUpDeviceType.getClass();
            sQLiteStatement.a(2, lVLightUpDeviceType.getValue());
            String str2 = lightUpProductEntity.f43572c;
            if (str2 == null) {
                sQLiteStatement.l(3);
            } else {
                sQLiteStatement.A(3, str2);
            }
            LVLightUpPowerMode lVLightUpPowerMode = lightUpProductEntity.d;
            enumConverter.getClass();
            lVLightUpPowerMode.getClass();
            sQLiteStatement.a(4, lVLightUpPowerMode.getModeIdentifier());
            String str3 = lightUpProductEntity.f43573e;
            if (str3 == null) {
                sQLiteStatement.l(5);
            } else {
                sQLiteStatement.A(5, str3);
            }
            String str4 = lightUpProductEntity.f43574f;
            if (str4 == null) {
                sQLiteStatement.l(6);
            } else {
                sQLiteStatement.A(6, str4);
            }
            String str5 = lightUpProductEntity.g;
            if (str5 == null) {
                sQLiteStatement.l(7);
            } else {
                sQLiteStatement.A(7, str5);
            }
            sQLiteStatement.A(8, lightUpProductEntity.f43575h);
            sQLiteStatement.A(9, str);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl$1] */
    public LightUpProductDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f43567c = new EnumConverter();
        this.f43565a = roomDatabase;
        this.f43566b = new EntityInsertAdapter<LightUpProductEntity>() { // from class: com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            public final void a(SQLiteStatement sQLiteStatement, Object obj) {
                LightUpProductEntity lightUpProductEntity = (LightUpProductEntity) obj;
                sQLiteStatement.getClass();
                lightUpProductEntity.getClass();
                sQLiteStatement.A(1, lightUpProductEntity.f43570a);
                EnumConverter enumConverter = LightUpProductDao_Impl.this.f43567c;
                LVLightUpDeviceType lVLightUpDeviceType = lightUpProductEntity.f43571b;
                enumConverter.getClass();
                lVLightUpDeviceType.getClass();
                sQLiteStatement.a(2, lVLightUpDeviceType.getValue());
                String str = lightUpProductEntity.f43572c;
                if (str == null) {
                    sQLiteStatement.l(3);
                } else {
                    sQLiteStatement.A(3, str);
                }
                LVLightUpPowerMode lVLightUpPowerMode = lightUpProductEntity.d;
                enumConverter.getClass();
                lVLightUpPowerMode.getClass();
                sQLiteStatement.a(4, lVLightUpPowerMode.getModeIdentifier());
                String str2 = lightUpProductEntity.f43573e;
                if (str2 == null) {
                    sQLiteStatement.l(5);
                } else {
                    sQLiteStatement.A(5, str2);
                }
                String str3 = lightUpProductEntity.f43574f;
                if (str3 == null) {
                    sQLiteStatement.l(6);
                } else {
                    sQLiteStatement.A(6, str3);
                }
                String str4 = lightUpProductEntity.g;
                if (str4 == null) {
                    sQLiteStatement.l(7);
                } else {
                    sQLiteStatement.A(7, str4);
                }
                sQLiteStatement.A(8, lightUpProductEntity.f43575h);
            }

            @Override // androidx.room.EntityInsertAdapter
            public final String b() {
                return "INSERT OR REPLACE INTO `LightUp` (`DEVICE_ID`,`TYPE`,`NAME`,`POWER_MODE`,`PRESET_NAME`,`PRESET_IMAGE`,`PRESET_ID`,`DEVICE_TO_STRING`) VALUES (?,?,?,?,?,?,?,?)";
            }
        };
        new AnonymousClass2();
        this.d = new AnonymousClass3();
    }

    @Override // com.vuitton.android.data.connectivity.lightup.LightUpProductDao
    public final Object a(LVLightUpDeviceType lVLightUpDeviceType, Continuation continuation) {
        return DBUtil.d(this.f43565a, true, true, new k60(this, lVLightUpDeviceType, 7), (ContinuationImpl) continuation);
    }

    @Override // com.vuitton.android.data.connectivity.lightup.LightUpProductDao
    public final Object b(LightUpProductEntity lightUpProductEntity, Continuation continuation) throws Throwable {
        Object objD = DBUtil.d(this.f43565a, false, true, new w90(this, lightUpProductEntity, 1), (ContinuationImpl) continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    @Override // com.vuitton.android.data.connectivity.lightup.LightUpProductDao
    public final Object c(LightUpProductEntity lightUpProductEntity, Continuation continuation) throws Throwable {
        Object objD = DBUtil.d(this.f43565a, false, true, new w90(this, lightUpProductEntity, 0), (ContinuationImpl) continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    @Override // com.vuitton.android.data.connectivity.lightup.LightUpProductDao
    public final Object d(String str, SuspendLambda suspendLambda) throws Throwable {
        Object objD = DBUtil.d(this.f43565a, false, true, new lt(str, 20), suspendLambda);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    @Override // com.vuitton.android.data.connectivity.lightup.LightUpProductDao
    public final Object e(Continuation continuation) {
        return DBUtil.d(this.f43565a, true, true, new l00(this, 25), (ContinuationImpl) continuation);
    }
}
