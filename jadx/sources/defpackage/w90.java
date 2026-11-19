package defpackage;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl;
import com.vuitton.android.data.connectivity.lightup.LightUpProductEntity;
import kotlin.Unit;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w90 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpProductDao_Impl f80804c;
    public final /* synthetic */ LightUpProductEntity d;

    public /* synthetic */ w90(LightUpProductDao_Impl lightUpProductDao_Impl, LightUpProductEntity lightUpProductEntity, int i2) {
        this.f80803b = i2;
        this.f80804c = lightUpProductDao_Impl;
        this.d = lightUpProductEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80803b;
        LightUpProductEntity lightUpProductEntity = this.d;
        LightUpProductDao_Impl lightUpProductDao_Impl = this.f80804c;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i2) {
            case 0:
                LightUpProductDao_Impl.Companion companion = LightUpProductDao_Impl.f43564e;
                sQLiteConnection.getClass();
                LightUpProductDao_Impl.AnonymousClass3 anonymousClass3 = lightUpProductDao_Impl.d;
                anonymousClass3.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("UPDATE OR ABORT `LightUp` SET `DEVICE_ID` = ?,`TYPE` = ?,`NAME` = ?,`POWER_MODE` = ?,`PRESET_NAME` = ?,`PRESET_IMAGE` = ?,`PRESET_ID` = ?,`DEVICE_TO_STRING` = ? WHERE `DEVICE_ID` = ?");
                try {
                    anonymousClass3.a(sQLiteStatementT1, lightUpProductEntity);
                    sQLiteStatementT1.Q1();
                    AutoCloseableKt.a(sQLiteStatementT1, null);
                    SQLiteConnectionUtil.a(sQLiteConnection);
                    return Unit.f71739a;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        AutoCloseableKt.a(sQLiteStatementT1, th);
                        throw th2;
                    }
                }
            default:
                LightUpProductDao_Impl.Companion companion2 = LightUpProductDao_Impl.f43564e;
                sQLiteConnection.getClass();
                lightUpProductDao_Impl.f43566b.c(sQLiteConnection, lightUpProductEntity);
                return Unit.f71739a;
        }
    }
}
