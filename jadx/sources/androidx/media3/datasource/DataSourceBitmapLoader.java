package androidx.media3.datasource;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.media3.common.util.BitmapLoader;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import defpackage.o7;
import defpackage.ur;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class DataSourceBitmapLoader implements BitmapLoader {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Supplier f14376f = Suppliers.a(new ur(0));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ListeningExecutorService f14377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSource.Factory f14378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BitmapFactory.Options f14379c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14380e;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f14381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14382b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14383c;

        public Builder(Context context) {
            this.f14381a = context;
        }
    }

    public DataSourceBitmapLoader(Builder builder) {
        this.f14378b = new DefaultDataSource.Factory(builder.f14381a);
        ListeningExecutorService listeningExecutorService = (ListeningExecutorService) f14376f.get();
        listeningExecutorService.getClass();
        this.f14377a = listeningExecutorService;
        this.f14379c = null;
        this.d = builder.f14382b;
        this.f14380e = builder.f14383c;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture b(Uri uri) {
        return this.f14377a.submit((Callable) new o7(this, uri, 4));
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture c(byte[] bArr) {
        return this.f14377a.submit((Callable) new o7(this, bArr, 3));
    }

    @Deprecated
    public DataSourceBitmapLoader(Context context, int i2) {
        Builder builder = new Builder(context);
        builder.f14382b = i2;
        this(builder);
    }

    @Deprecated
    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory) {
        this(listeningExecutorService, factory, null);
    }

    @Deprecated
    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory, BitmapFactory.Options options) {
        this(listeningExecutorService, factory, options, -1);
    }

    @Deprecated
    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory, BitmapFactory.Options options, int i2) {
        this.f14377a = listeningExecutorService;
        this.f14378b = factory;
        this.f14379c = options;
        this.d = i2;
        this.f14380e = false;
    }

    @Deprecated
    public DataSourceBitmapLoader(Context context) {
        this(new Builder(context));
    }
}
