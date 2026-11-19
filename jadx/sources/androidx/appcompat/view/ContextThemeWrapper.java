package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.vuitton.android.R;
import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ContextThemeWrapper extends ContextWrapper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Configuration f903f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources.Theme f905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f906c;
    public Configuration d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Resources f907e;

    public ContextThemeWrapper(Context context, int i2) {
        super(context);
        this.f904a = i2;
    }

    public final void a(Configuration configuration) {
        if (this.f907e != null) {
            md.k("getResources() or getAssets() has already been called");
        } else if (this.d == null) {
            this.d = new Configuration(configuration);
        } else {
            md.k("Override configuration has already been set");
        }
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f905b == null) {
            this.f905b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f905b.setTo(theme);
            }
        }
        this.f905b.applyStyle(this.f904a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f907e == null) {
            Configuration configuration = this.d;
            if (configuration == null) {
                this.f907e = super.getResources();
            } else {
                if (f903f == null) {
                    Configuration configuration2 = new Configuration();
                    configuration2.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    f903f = configuration2;
                }
                if (configuration.equals(f903f)) {
                    this.f907e = super.getResources();
                } else {
                    this.f907e = createConfigurationContext(this.d).getResources();
                }
            }
        }
        return this.f907e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f906c == null) {
            this.f906c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f906c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f905b;
        if (theme != null) {
            return theme;
        }
        if (this.f904a == 0) {
            this.f904a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f905b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i2) {
        if (this.f904a != i2) {
            this.f904a = i2;
            b();
        }
    }

    public ContextThemeWrapper() {
        super(null);
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.f905b = theme;
    }
}
