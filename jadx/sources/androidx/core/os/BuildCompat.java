package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0006¨\u0006\u0010"}, d2 = {"Landroidx/core/os/BuildCompat;", "", "<init>", "()V", "", NBSSpanMetricUnit.Bit, "I", "R_EXTENSION_INT", "c", "S_EXTENSION_INT", NBSSpanMetricUnit.Day, "T_EXTENSION_INT", "e", "AD_SERVICES_EXTENSION_INT", "PrereleaseSdkCheck", "Api30Impl", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BuildCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BuildCompat f12073a = new BuildCompat();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final int R_EXTENSION_INT;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public static final int S_EXTENSION_INT;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public static final int T_EXTENSION_INT;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final int AD_SERVICES_EXTENSION_INT;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/core/os/BuildCompat$Api30Impl;", "", "<init>", "()V", "", "extension", "a", "(I)I", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api30Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Api30Impl f12077a = new Api30Impl();

        private Api30Impl() {
        }

        public final int a(int extension) {
            return SdkExtensions.getExtensionVersion(extension);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;", "", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention
    public @interface PrereleaseSdkCheck {
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        R_EXTENSION_INT = i2 >= 30 ? Api30Impl.f12077a.a(30) : 0;
        S_EXTENSION_INT = i2 >= 30 ? Api30Impl.f12077a.a(31) : 0;
        T_EXTENSION_INT = i2 >= 30 ? Api30Impl.f12077a.a(33) : 0;
        AD_SERVICES_EXTENSION_INT = i2 >= 30 ? Api30Impl.f12077a.a(1000000) : 0;
    }

    private BuildCompat() {
    }
}
