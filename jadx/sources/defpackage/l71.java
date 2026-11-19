package defpackage;

import android.content.Context;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import com.batch.android.b.f;
import com.batch.android.e.c0;
import com.batch.android.h.a;
import com.batch.android.h.b;
import com.batch.android.h.c;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l71 implements SupportSQLiteOpenHelper.Factory, a.InterfaceC0055a, c0.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f75966c;

    public /* synthetic */ l71(Context context, int i2) {
        this.f75965b = i2;
        this.f75966c = context;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration) {
        SupportSQLiteOpenHelper.Configuration.f19874f.getClass();
        SupportSQLiteOpenHelper.Configuration.Builder builder = new SupportSQLiteOpenHelper.Configuration.Builder(this.f75966c);
        builder.f19880b = configuration.f19876b;
        SupportSQLiteOpenHelper.Callback callback = configuration.f19877c;
        callback.getClass();
        builder.f19881c = callback;
        builder.d = true;
        builder.f19882e = true;
        return new FrameworkSQLiteOpenHelperFactory().a(builder.a());
    }

    @Override // com.batch.android.h.a.InterfaceC0055a
    public String get() {
        int i2 = this.f75965b;
        Context context = this.f75966c;
        switch (i2) {
            case 1:
                return c.a(context);
            case 2:
                return c.b(context);
            case 3:
                return b.c(context);
            case 4:
                return b.a(context);
            case 5:
                return c.e(context);
            case 6:
                return c.f(context);
            default:
                return c.g(context);
        }
    }

    @Override // com.batch.android.e.c0.c
    public void a(c0 c0Var) {
        f.a(this.f75966c, c0Var);
    }
}
