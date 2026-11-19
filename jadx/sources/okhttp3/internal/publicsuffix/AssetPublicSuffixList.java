package okhttp3.internal.publicsuffix;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import defpackage.az;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.platform.Android10Platform;
import okhttp3.internal.platform.Platform;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;", "Lokhttp3/internal/publicsuffix/BasePublicSuffixList;", "", "path", "<init>", "(Ljava/lang/String;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AssetPublicSuffixList extends BasePublicSuffixList {
    public static final String g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f77335f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/publicsuffix/AssetPublicSuffixList$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = "PublicSuffixDatabase.list";
    }

    public /* synthetic */ AssetPublicSuffixList(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? g : str);
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getF77335f() {
        return this.f77335f;
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public final Source e() throws IOException {
        Platform.f77312a.getClass();
        Android10Platform android10Platform = Platform.f77313b;
        if (android10Platform == null) {
            android10Platform = null;
        }
        Context d = android10Platform != null ? android10Platform.getD() : null;
        AssetManager assets = d != null ? d.getAssets() : null;
        if (assets != null) {
            InputStream inputStreamOpen = assets.open(this.f77335f);
            inputStreamOpen.getClass();
            return Okio.f(inputStreamOpen);
        }
        if (Build.FINGERPRINT == null) {
            az.o("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            return null;
        }
        az.o("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        return null;
    }

    public AssetPublicSuffixList(String str) {
        str.getClass();
        this.f77335f = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AssetPublicSuffixList() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
