package com.vuitton.android.platform.security;

import android.content.Context;
import android.content.pm.PackageManager;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001b\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/platform/security/RootDetector;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroid/content/Context;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "platform"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RootDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f50465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f50466b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/platform/security/RootDetector$Companion;", "", "", "TAG", "Ljava/lang/String;", "platform"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public RootDetector(@ApplicationContext Context context, Logger logger) {
        context.getClass();
        logger.getClass();
        this.f50465a = context;
        this.f50466b = logger;
    }

    public final boolean a(String str) {
        List list = RootConstants.f50461e;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            boolean zExists = new File((String) it.next(), str).exists();
            if (zExists) {
                this.f50466b.getClass();
            }
            if (zExists) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(List list) {
        PackageManager packageManager = this.f50465a.getPackageManager();
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            try {
                packageManager.getPackageInfo((String) it.next(), 0);
                this.f50466b.getClass();
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }
}
