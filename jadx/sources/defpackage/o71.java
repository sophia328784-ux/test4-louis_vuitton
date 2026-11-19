package defpackage;

import androidx.collection.ArrayMap;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o71 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WorkSpecDao_Impl f76718c;
    public final /* synthetic */ SQLiteConnection d;

    public /* synthetic */ o71(WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection, int i2) {
        this.f76717b = i2;
        this.f76718c = workSpecDao_Impl;
        this.d = sQLiteConnection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76717b;
        SQLiteConnection sQLiteConnection = this.d;
        WorkSpecDao_Impl workSpecDao_Impl = this.f76718c;
        ArrayMap arrayMap = (ArrayMap) obj;
        switch (i2) {
            case 0:
                WorkSpecDao_Impl.Companion companion = WorkSpecDao_Impl.f20530c;
                arrayMap.getClass();
                workSpecDao_Impl.B(sQLiteConnection, arrayMap);
                break;
            default:
                WorkSpecDao_Impl.Companion companion2 = WorkSpecDao_Impl.f20530c;
                arrayMap.getClass();
                workSpecDao_Impl.C(sQLiteConnection, arrayMap);
                break;
        }
        return Unit.f71739a;
    }
}
